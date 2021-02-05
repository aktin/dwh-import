package org.aktin.importer;

import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import javax.ejb.Singleton;
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

@Singleton
public class DataSourceCredsExtractor {

    private static final Logger LOGGER = Logger.getLogger(DataSourceCredsExtractor.class.getName());

    public HashMap<String, String> getDataSourceCredentials(String connection) {
        Node node_datasource, node_security;
        HashMap<String, String> credentials = new HashMap<>();
        for (String name_xml : getDeployedXMLs()) {
            node_datasource = getParentNodeByConnectionURL(name_xml, connection);
            if (node_datasource != null) {
                node_security = getSecurityNodeFromParent(node_datasource);
                credentials = extractCredentialsFromSecurityNode(node_security);
            }
        }
        return credentials;
    }

    private Path getDeploymentsFolder() {
        return Paths.get(System.getProperty("jboss.server.base.dir"), "deployments");
    }

    private ArrayList<String> getDeployedXMLs() {
        Path path = getDeploymentsFolder();
        ArrayList<String> list_xml_deployed = new ArrayList<>();
        try (Stream<Path> walk = Files.walk(path)) {
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

    private Node getParentNodeByConnectionURL(String name_xml, String connection) {
        Path path = getDeploymentsFolder();
        Node node_parent = null;
        File file_xml = new File(Paths.get(path.toString(), name_xml).toString());
        if (file_xml.length() != 0) {
            try {
                DocumentBuilder documentBuilder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
                Document document = documentBuilder.parse(file_xml);
                if (document.hasChildNodes()) {
                    node_parent = searchDataSourceForConnectionURL(document.getChildNodes(), connection);
                }
            } catch (ParserConfigurationException e) {
                LOGGER.log(Level.SEVERE, "Configuration error in builder", e);
            } catch (SAXException | IOException e) {
                LOGGER.log(Level.SEVERE, "Error during xml parsing", e);
            }
        }
        return node_parent;
    }

    private Node searchDataSourceForConnectionURL(NodeList list_node, String connection) {
        Node node;
        Node node_parent = null;
        for (int i = 0; i < list_node.getLength(); i++) {
            node = list_node.item(i);
            if (node.getNodeType() == Node.ELEMENT_NODE) {
                if (node.getNodeName().equals("connection-url") && node.getTextContent().contains(connection)) {
                    node_parent = node.getParentNode();
                    break;
                }
                if (node.hasChildNodes()) {
                    node_parent = searchDataSourceForConnectionURL(node.getChildNodes(), connection);
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
