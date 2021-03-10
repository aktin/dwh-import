package org.aktin.importer;

import org.junit.Test;
import org.w3c.dom.*;
import org.xml.sax.SAXException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathFactory;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Properties;
import java.util.logging.Level;
import java.util.stream.Stream;

public class TestCredExtractor {

    // 1. get wildfly deployments folder

    // 2. only check for  .xml.deployed

    // 3. iterate through all, search for searchPath=i2b2crcdata

    // 4. extract username password


    private Path getDeploymentsFolder() {
        //Path path = Paths.get(System.getProperty("jboss.server.base.dir"),"deployments");
        Path path = Paths.get("C:\\Users\\User\\IdeaProjects\\dwh-import\\generic-file-importer\\src\\test\\resources\\deployments");
        return path;
    }

    private String getI2b2DataSourceCRC() {
        return "java:/QueryToolDemoDS";
    }

    @Test
    public void testCredExtract() throws IOException, ParserConfigurationException, SAXException {
        Node node_datasource, node_security;
        HashMap<String, String> credentials = new HashMap<>();
        for (String name_xml : getDeployedXMLs()) {
            node_datasource = getParentNodeByJNDI(name_xml, getI2b2DataSourceCRC());
            if (node_datasource != null) {
                credentials = extractCredentialsFromParent(node_datasource);
                credentials.putAll(extractConnectionUrlFromParent(node_datasource));
            }
        }
        testDBConnection(credentials);
    }

    private void testDBConnection(HashMap<String, String> credentials)  {
        Connection conn;
        PreparedStatement ps = null;
        Properties connectionProps = new Properties();
        connectionProps.put("user", credentials.get("user-name"));
        connectionProps.put("password", credentials.get("password"));
        try {
            conn = DriverManager.getConnection(credentials.get("connection-url"), connectionProps);
            try {
                conn.setAutoCommit(false);
                ps = conn.prepareStatement("DELETE FROM observation_fact WHERE sourcesystem_cd=?");
                ps.setString(1, "i2b2");
                ps.executeUpdate();
                conn.commit();
            } catch (SQLException e) {
                System.out.println("ERROR DURING QUERY " + e);
                conn.rollback();
            } finally {
                conn.close();
                if (ps != null)
                    ps.close();
            }
        } catch (SQLException e) {
            System.out.println("ERROR DURING CONNECTION " + e);
        }
    }

    private ArrayList<String> getDeployedXMLs() throws IOException {
        Path path = getDeploymentsFolder();
        ArrayList<String> list_xml_deployed = new ArrayList<>();
        try (Stream<Path> walk = Files.walk(path)) {
            walk.filter(Files::isRegularFile)
                    .map(java.nio.file.Path::getFileName)
                    .map(java.nio.file.Path::toString)
                    .filter(x -> x.contains(".xml.deployed"))
                    .forEach(x -> list_xml_deployed.add(x.replace(".deployed", "")));
        }
        return list_xml_deployed;
    }

    private Node getParentNodeByJNDI(String name_xml, String name_jndi) throws IOException, SAXException, ParserConfigurationException {
        Node node_parent = null;
        File file_xml = new File(Paths.get(getDeploymentsFolder().toString(), name_xml).toString());
        if (file_xml.length() != 0) {
            DocumentBuilder documentBuilder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
            Document document = documentBuilder.parse(file_xml);
            if (document.hasChildNodes()) {
                node_parent = searchNodeForJNDI(document.getChildNodes(), name_jndi);
            }
        }
        return node_parent;
    }

    private Node searchNodeForJNDI(NodeList list_node, String name_jndi) {
        Node node_tmp, node_attr;
        Node node_parent = null;
        for (int i = 0; i < list_node.getLength(); i++) {
            node_tmp = list_node.item(i);
            if (node_tmp.getNodeType() == Node.ELEMENT_NODE) {
                node_attr = node_tmp.getAttributes().getNamedItem("jndi-name");
                if (node_attr != null && node_attr.getTextContent().equals(name_jndi)) {
                    node_parent = node_tmp;
                    break;
                }
                if (node_tmp.hasChildNodes()) {
                    node_parent = searchNodeForJNDI(node_tmp.getChildNodes(), name_jndi);
                }
            }
        }
        return node_parent;
    }

    private HashMap<String, String> extractConnectionUrlFromParent(Node node_datasource) {
        HashMap<String, String> result = new HashMap<>();
        NodeList list_node = node_datasource.getChildNodes();
        Node node;
        for (int i = 0; i < list_node.getLength(); i++) {
            node = list_node.item(i);
            if (node.getNodeType() == Node.ELEMENT_NODE && node.getNodeName().equals("connection-url"))
                result.put("connection-url", node.getTextContent());
        }
        return result;
    }

    private HashMap<String, String> extractCredentialsFromParent(Node node_datasource) {
        Node security = getSecurityNodeFromParent(node_datasource);
        return extractCredentialsFromSecurityNode(security);
    }

    private Node getSecurityNodeFromParent(Node node_datasource) {
        NodeList list_node = node_datasource.getChildNodes();
        Node node = null;
        for (int i = 0; i < list_node.getLength(); i++) {
            node = list_node.item(i);
            if (node.getNodeType() == Node.ELEMENT_NODE && node.getNodeName().equals("security"))
                break;
        }
        return node;
    }

    private HashMap<String, String> extractCredentialsFromSecurityNode(Node node_security) {
        HashMap<String, String> credentials = new HashMap<>();
        Node node;
        NodeList list_securityNode = node_security.getChildNodes();
        for (int i = 0; i < list_securityNode.getLength(); i++) {
            node = list_securityNode.item(i);
            switch (node.getNodeName()) {
                case "user-name":
                case "password":
                    credentials.put(node.getNodeName(), node.getTextContent());
                    break;
                default:
                    break;
            }
        }
        return credentials;
    }
}
// jboss.server.config.dir  :  /opt/wildfly/standalone/configuration
// jboss.server.base.dir = /opt/wildfly/standalone
