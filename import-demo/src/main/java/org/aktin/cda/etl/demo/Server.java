package org.aktin.cda.etl.demo;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.util.logging.Logger;

import javax.xml.parsers.ParserConfigurationException;
import javax.xml.ws.Endpoint;
import javax.xml.ws.http.HTTPBinding;
import javax.xml.ws.soap.SOAPBinding;

import org.aktin.cda.etl.rest.RestService;
import org.aktin.cda.etl.xds.DocumentRepository;

import com.sun.net.httpserver.HttpServer;

/**
 * Demo server providing the following interfaces:
 * <ul>
 * 	<li>IHE XDS.b document repository</li>
 *  <li>TODO simple REST</li>
 * </ul>
 * 
 * @author marap1
 *
 */
public class Server {
	private static final Logger log = Logger.getLogger(Server.class.getName());
	private static final String XDS_CONTEXT_PATH = "/aktin/xds.b";
	private static final String REST_CONTEXT_PATH = "/aktin/rest";

	private DocumentRepository xdsService;
	private RestService restService;

	private Endpoint xdsEndpoint, restEndpoint;

	private HttpServer server;
	private ValidationService validator;
	
	public Server() throws IOException{
		validator = new ValidationService();
		xdsService = new DocumentRepository(validator);
		try {
			restService = new RestService(validator);
		} catch (ParserConfigurationException e) {
			throw new RuntimeException(e);
		}
		server = HttpServer.create();
	}

	public void bind(InetSocketAddress bindAddress) throws IOException{
		// bind HTTP server
		server.bind(bindAddress, 0);
		// get local address (may be dynamically allocated)
		InetSocketAddress localAddress = server.getAddress();
		log.info("Listening on port "+localAddress.getPort());


		// publish XDS.b end point
		xdsEndpoint = Endpoint.create(SOAPBinding.SOAP11HTTP_MTOM_BINDING, xdsService);
		xdsEndpoint.publish(server.createContext(XDS_CONTEXT_PATH));
		// enable MTOM for efficient binary transfer
		SOAPBinding binding = (SOAPBinding)xdsEndpoint.getBinding();
		binding.setMTOMEnabled(true);
		log.info("WSDL published at http://"+localAddress.getHostName()+":"+localAddress.getPort()+XDS_CONTEXT_PATH+"?wsdl");


		// publish REST end point
		restEndpoint = Endpoint.create(HTTPBinding.HTTP_BINDING, restService);
		restEndpoint.publish(server.createContext(REST_CONTEXT_PATH));
		log.info("REST published at http://"+localAddress.getHostName()+":"+localAddress.getPort()+REST_CONTEXT_PATH+"/");

	}
	
	public int getPort(){
		return server.getAddress().getPort();
	}
	
	public void start(){
		server.start();
	}
	
	public void shutdown(){
		// wait 3 seconds to complete current exchange handlers
		server.stop(3);
		// stop end points
		xdsEndpoint.stop();
		restEndpoint.stop();
		
		log.info("Shutdown complete");
	}
	
	public static void main(String[] args) throws IOException {
		final Server server = new Server();
		server.bind(new InetSocketAddress(InetAddress.getByName(null), 0));
		server.start();
		
		Runtime.getRuntime().addShutdownHook(new Thread(){
			@Override
			public void start(){
				System.err.println("Shutdown in progress.. please wait..");
				server.shutdown();
			}
		});
		System.out.println("Press Ctrl+C to shut down");
	}

}
