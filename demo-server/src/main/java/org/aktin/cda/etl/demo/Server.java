package org.aktin.cda.etl.demo;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.UnknownHostException;
import java.util.logging.Logger;

import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Source;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.ws.Endpoint;
import javax.xml.ws.http.HTTPBinding;
import javax.xml.ws.soap.SOAPBinding;

import org.aktin.cda.Validator;
import org.aktin.cda.etl.CDAProcessor;
import org.aktin.cda.etl.fhir.RestService;
import org.aktin.cda.etl.xds.DocumentRepository;

import com.sun.net.httpserver.HttpServer;

/**
 * Demo server providing the following interfaces:
 * <ul>
 * 	<li>IHE XDS.b document repository</li>
 *  <li>TODO simple REST</li>
 * </ul>
 * 
 * @author R.W.Majeed
 *
 */
public class Server implements CDAProcessor{
	private static final Logger log = Logger.getLogger(Server.class.getName());
	/** Servlet context for XDS.b */
	public static final String XDS_CONTEXT_PATH = "/aktin/xds.b";
	/** Servlet context for FHIR Binary */
	public static final String REST_CONTEXT_PATH = "/aktin/fhir/Binary";

	private DocumentRepository xdsService;
	private RestService restService;

	private Endpoint xdsEndpoint, restEndpoint;

	private HttpServer server;
	private Validator validator;
	
	/**
	 * Construct the local server
	 * @throws IOException IO error
	 */
	public Server() throws IOException{
		try {
			validator = new Validator();
		} catch (TransformerConfigurationException e) {
			throw new IOException("Unable to initialize validator", e);
		}
		xdsService = new DocumentRepository(validator);
		try {
			restService = new RestService(validator, this);
		} catch (ParserConfigurationException e) {
			throw new RuntimeException(e);
		}
		server = HttpServer.create();
	}

	/**
	 * Bind the server to the specified address / port
	 * @param bindAddress local/external TCP address
	 * @throws IOException IO errors
	 */
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
	
	/**
	 * Get the port. Useful if the port was dynamically allocated.
	 * @return port number actually used
	 */
	public int getPort(){
		return server.getAddress().getPort();
	}
	
	/**
	 * Start the server
	 */
	public void start(){
		server.start();
	}
	
	/**
	 * Shuts the server down
	 */
	public void shutdown(){
		// wait 3 seconds to complete current exchange handlers
		server.stop(3);
		// stop end points
		xdsEndpoint.stop();
		restEndpoint.stop();
		
		log.info("Shutdown complete");
	}
	
	/**
	 * Construct a local address to bind to from command line arguments.
	 * @param args command line arguments
	 * @return local address or null if illegal arguments
	 * @throws UnknownHostException should not happen
	 */
	private static InetSocketAddress getAddressFromCommandLine(String args[]) throws UnknownHostException{
		InetSocketAddress addr = null;
		if( args.length > 0 ){
			System.out.println("Using port number from command line argument: "+args[0]);
			int port;
			try{
				port = Integer.parseInt(args[0]);
			}catch( NumberFormatException e ){
				System.err.println("Unable to parse port number: "+args[0]+": "+e.getLocalizedMessage());
				System.err.println("Using dynamic port!");
				port = 0;
			}
			if( args.length == 1 ){
				// only a port specified, use LOCALHOST
				args = new String[]{args[0],"localhost"};
			}
			
			if( args.length == 2 ){
				switch( args[1] ){
				case "localhost":
					addr = new InetSocketAddress(InetAddress.getLoopbackAddress(), port);
					System.out.println("Listening on localhost (loopback device) only.");
					break;
				case "public":
					addr = new InetSocketAddress(port);
					System.err.println("Listening on all network interfaces.");
					break;
				default:
					System.out.println("No idea what you want with "+args[1]);
					System.err.println("Either 'localhost' or 'public' accepted as second argument");
				}
			}else if( args.length > 2 ){
				System.err.println("Usage: "+Server.class.getName()+" [<port> [localhost|public]]");
			}
		}else{
			System.out.println("Using dynamic port."); 
			System.out.println("You can specify a fixed port as command line argument");
			System.out.println();
			System.out.println("Listening on localhost (loopback device) only.");
			System.out.println("For network access, start with command line \'<port> public\'");
			addr = new InetSocketAddress(InetAddress.getByName(null), 0);
		}
		return addr;
	}
	
	/**
	 * Runs the server. Does not need any command line arguments.
	 * <p>
	 * A shutdown hook is installed, press Ctrl+C to exit gracefully.
	 * 
	 * @param args command line arguments: optional port to bind to, optional
	 * @throws IOException any IO errors
	 */
	public static void main(String[] args) throws IOException {
		// determine bind address
		final InetSocketAddress addr = getAddressFromCommandLine(args);
		if( addr == null )return;
		// initialise server
		final Server server = new Server();
		server.bind(addr);
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

	@Override
	public void process(String patientId, String encounterId, String documentId, Source document) {
		// TODO Auto-generated method stub
		
	}
	

}
