package org.aktin.importer;

import org.junit.Test;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.stream.Stream;

public class TestCredExtractor {

    // 1. get wildfly deployments folder

    // 2. only check for  .xml.deployed

    // 3. iterate through all, search for searchPath=i2b2crcdata

    // 4. extract username password

    private final String TARGET_CONNECTION = "i2b2crcdata";

    public Path getDeploymentsFolder() {
        //Path path = Paths.get(System.getProperty("jboss.server.base.dir"),"deployments");
        Path path = Paths.get("C:\\Users\\User\\IdeaProjects\\dwh-import\\generic-file-importer\\src\\test\\resources\\deployments");
        return path;
    }

    @Test
    public void testCredExtract() throws IOException, ParserConfigurationException, SAXException {
        Node node_datasource, node_security;
        HashMap<String, String> credentials = new HashMap<>();
        for (String name_xml : getDeployedXMLs()) {
            node_datasource = getParentNodeByConnectionURL(name_xml, TARGET_CONNECTION);
            if (node_datasource != null) {
                node_security = getSecurityNodeFromParent(node_datasource);
                credentials = extractCredentialsFromSecurityNode(node_security);
            }
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

    private Node getParentNodeByConnectionURL(String name_xml, String connection) throws ParserConfigurationException, IOException, SAXException {
        Path path = getDeploymentsFolder();
        Node node_parent = null;
        File file_xml = new File(Paths.get(path.toString(), name_xml).toString());
        if (file_xml.length() != 0) {
            DocumentBuilder documentBuilder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
            Document document = documentBuilder.parse(file_xml);
            if (document.hasChildNodes()) {
                node_parent = searchDataSourceForConnectionURL(document.getChildNodes(), connection);
            }

        }
        return node_parent;
    }

    private Node searchDataSourceForConnectionURL(NodeList list_node, String connection) {
        Node node_tmp;
        Node node_parent = null;
        for (int i = 0; i < list_node.getLength(); i++) {
            node_tmp = list_node.item(i);
            if (node_tmp.getNodeType() == Node.ELEMENT_NODE) {
                if (node_tmp.getNodeName().equals("connection-url") && node_tmp.getTextContent().contains(connection)) {
                    node_parent = node_tmp.getParentNode();
                    break;
                }
                if (node_tmp.hasChildNodes()) {
                    node_parent = searchDataSourceForConnectionURL(node_tmp.getChildNodes(), connection);
                }
            }
        }
        return node_parent;
    }

    private Node getSecurityNodeFromParent(Node node_datasource) {
        Node node = null;
        NodeList list_node = node_datasource.getChildNodes();
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
