package org.aktin.cda.etl.demo;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.UnknownHostException;
import java.util.logging.Logger;

import javax.xml.transform.TransformerConfigurationException;
import javax.xml.ws.Endpoint;
import javax.xml.ws.soap.SOAPBinding;

import org.aktin.Preferences;
import org.aktin.cda.CDAProcessor;
import org.aktin.cda.Validator;
import org.aktin.cda.etl.xds.DocumentRepository;
import org.aktin.dwh.ImportSummary;
import org.glassfish.hk2.utilities.binding.AbstractBinder;
import org.glassfish.jersey.jdkhttp.JdkHttpServerFactory;
import org.glassfish.jersey.server.ResourceConfig;
import org.xml.sax.SAXException;

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
public class Server{
	private static final Logger log = Logger.getLogger(Server.class.getName());
	/** Servlet context for XDS.b */
	public static final String XDS_CONTEXT_PATH = "/aktin/cda/xds.b";
	/** Servlet context for FHIR Binary */
	public static final String REST_CONTEXT_PATH = "/aktin/cda/fhir";
	public static final String FHIR_BINARY_PATH = REST_CONTEXT_PATH+"/Binary";

	private DocumentRepository xdsService;
	private URI jaxrsUri;

	private Endpoint xdsEndpoint;

	private HttpServer server;
	private Validator validator;
	private CDAProcessor processor;
	
	/**
	 * Construct the local server
	 * @param port local port to bind to
	 * @throws IOException IO error
	 */
	public Server(int port) throws IOException{
		processor = new HashtableStore();
		try {
			validator = new Validator();
		} catch (TransformerConfigurationException | SAXException e) {
			throw new IOException("Unable to initialize validator", e);
		}
		xdsService = new DocumentRepository();
		xdsService.setValidator(validator);
		xdsService.setProcessor(processor);
		
		ResourceConfig config = new ResourceConfig();
		// configure HK2 for our CDI injections
		config.register(new AbstractBinder() {
			@Override
			protected void configure() {
				this.bind(validator).to(Validator.class);
				this.bind(processor).to(CDAProcessor.class);
				this.bind(new NoOpStatistics()).to(ImportSummary.class);
				this.bind(new EmptyPreferences()).to(Preferences.class);
			}
		});
		// load JAX-RS classes for FHIR
		config.packages("org.aktin.cda.etl.fhir");
		try {
			 jaxrsUri = new URI("http://localhost:"+port+REST_CONTEXT_PATH);
		} catch (URISyntaxException e) {
			throw new IOException(e);
		}
		server = JdkHttpServerFactory.createHttpServer(jaxrsUri, config, false);
	}

	/**
	 * Bind the server to the specified address / port
	 * @throws IOException IO errors
	 */
	public void bind() throws IOException{
		// bind HTTP server
		// will always listen on all interfaces
		//server.bind(bindAddress, 0);
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

		// info about JAX-RS
		log.info("FHIR base available at http://"+localAddress.getHostName()+":"+localAddress.getPort()+jaxrsUri.getPath());
		log.info(".. eg. POST to http://"+localAddress.getHostName()+":"+localAddress.getPort()+jaxrsUri.getPath()+"/Binary");
		
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
			//}
			// due to a bug in jersey-container-jdk, the server
			// will always listen on all interfaces.
			
			/*
			if( args.length == 2 ){
				switch( args[1] ){
				case "localhost":
					addr = new InetSocketAddress(InetAddress.getLoopbackAddress(), port);
					System.out.println("Listening on localhost (loopback device) only.");
					break;
				case "public":*/
					addr = new InetSocketAddress(port);
					System.err.println("Listening on all network interfaces.");
					/*
					break;
				default:
					System.out.println("No idea what you want with "+args[1]);
					System.err.println("Either 'localhost' or 'public' accepted as second argument");
				} */
			}else if( args.length > 1 ){
				System.err.println("Usage: "+Server.class.getName()+" [<port>]");
			//	System.err.println("Usage: "+Server.class.getName()+" [<port> [localhost|public]]");
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
		final Server server = new Server(addr.getPort());
		server.bind();
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
