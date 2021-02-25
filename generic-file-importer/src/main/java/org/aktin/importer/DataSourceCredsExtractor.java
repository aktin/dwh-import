package org.aktin.importer;

import org.aktin.Preferences;
import org.aktin.dwh.PreferenceKey;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import javax.inject.Inject;
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
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.stream.Stream;


public class DataSourceCredsExtractor {

    private static final Logger LOGGER = Logger.getLogger(DataSourceCredsExtractor.class.getName());

    @Inject
    private Preferences preferences;

    /**
     * Searches all deployed xml files for datasource corresponding to {i2b2.datasource.crc} and safes datasource
     * credentials as well as connection url
     * @return hashmap with credentials and connection url for i2b2crcdata
     */
    public HashMap<String, String> getDataSourceCredentialsCRC() {
        Node node_datasource;
        String i2b2CRC = getI2b2DataSourceCRC();
        HashMap<String, String> credentials = new HashMap<>();
        for (String name_xml : getDeployedXMLs()) {
            node_datasource = getXMLParentNodeByJNDI(name_xml, i2b2CRC);
            if (node_datasource != null) {
                credentials = extractCredentialsFromParent(node_datasource);
                credentials.putAll(extractConnectionUrlFromParent(node_datasource));
            }
        }
        return credentials;
    }

    /**
     * @return path of wildfly deployments folder
     */
    private Path getWildFlyDeploymentsFolder() {
        return Paths.get(System.getProperty("jboss.server.base.dir"), "deployments");
    }

    /**
     * @return value of i2b2.datasource.crc from aktin.properties
     */
    private String getI2b2DataSourceCRC() {
        return preferences.get(PreferenceKey.i2b2DatasourceCRC);
    }

    /**
     * Iterates through deployments folder in wildfly and searches for deployed xml files
     *
     * @return list with names of successfully deployed xml files
     */
    private ArrayList<String> getDeployedXMLs() {
        ArrayList<String> list_xml_deployed = new ArrayList<>();
        try (Stream<Path> walk = Files.walk(getWildFlyDeploymentsFolder())) {
            walk.filter(Files::isRegularFile)
                    .map(java.nio.file.Path::getFileName)
                    .map(java.nio.file.Path::toString)
                    .filter(x -> x.contains(".xml.deployed"))
                    .forEach(x -> list_xml_deployed.add(x.replace(".deployed", "")));
        } catch (IOException e) {
            LOGGER.log(Level.SEVERE, "No file to walk found", e);
        }
        return list_xml_deployed;
    }

    /**
     * Parses a given xml into a document object and searches within for a node with attribute name "jndi-name" and
     * value {name_jndi}
     *
     * @param name_xml  name of xml file to search node in
     * @param name_jndi value of "jndi-name" to search
     * @return node with corresponding attribute name and value or null
     */
    private Node getXMLParentNodeByJNDI(String name_xml, String name_jndi) {
        Node node_parent = null;
        File file_xml = new File(Paths.get(getWildFlyDeploymentsFolder().toString(), name_xml).toString());
        if (file_xml.length() != 0) {
            try {
                DocumentBuilder documentBuilder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
                Document document = documentBuilder.parse(file_xml);
                if (document.hasChildNodes()) {
                    node_parent = searchNodeForJNDI(document.getChildNodes(), name_jndi);
                }
            } catch (ParserConfigurationException e) {
                LOGGER.log(Level.SEVERE, "Configuration error in DocumentBuilder", e);
            } catch (IOException | SAXException e) {
                LOGGER.log(Level.SEVERE, "Error during XML parsing", e);
            }
        }
        return node_parent;
    }

    /**
     * Iterates recursively through a list of nodes and searches for a node with attribute name "jndi-name" and
     * value {name_jndi}
     *
     * @param list_node list of nodes to search attribute in
     * @param name_jndi value of "jndi-name" to search
     * @return node with corresponding attribute name and value or null
     */
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

    /**
     * Searches given node for connection-url node and extracts url value from it
     *
     * @param node_datasource node to extract connection-url from
     * @return hashmap with extracted url or empty hashmap
     */
    private HashMap<String, String> extractConnectionUrlFromParent(Node node_datasource) {
        HashMap<String, String> result = new HashMap<>();
        NodeList list_node = node_datasource.getChildNodes();
        Node node;
        for (int i = 0; i < list_node.getLength(); i++) {
            node = list_node.item(i);
            if (node.getNodeType() == Node.ELEMENT_NODE && node.getNodeName().equals("connection-url")) {
                result.put("connection-url", node.getTextContent());
                break;
            }
        }
        return result;
    }

    /**
     * Searches given node for security node and extracts username and password values from it
     *
     * @param node_datasource node to extract credentials from
     * @return hashmap with extracted credentials or empty hashmap
     */
    private HashMap<String, String> extractCredentialsFromParent(Node node_datasource) {
        HashMap<String, String> credentials = new HashMap<>();
        try {
            Node security = getSecurityNodeFromParent(node_datasource);
            credentials = extractCredentialsFromSecurityNode(security);
        } catch (IllegalStateException e) {
            LOGGER.log(Level.SEVERE, "Node not found");
        }
        return credentials;
    }

    /**
     * Iterates through child nodes of given node and searches for node named "security"
     *
     * @param node_datasource node to search security node in
     * @return found security node
     * @throws IllegalStateException if security node not found
     */
    private Node getSecurityNodeFromParent(Node node_datasource) throws IllegalStateException {
        NodeList list_node = node_datasource.getChildNodes();
        Node node;
        for (int i = 0; i < list_node.getLength(); i++) {
            node = list_node.item(i);
            if (node.getNodeType() == Node.ELEMENT_NODE && node.getNodeName().equals("security"))
                return node;
            ;
        }
        throw new IllegalStateException();
    }

    /**
     * Extracts values from child nodes named "user-name" and "password" from a given node
     *
     * @param node_security node to extract credentials from
     * @return hashmap with extracted credentials or empty hashmap
     */
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
