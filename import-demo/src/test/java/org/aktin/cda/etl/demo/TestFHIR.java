package org.aktin.cda.etl.demo;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.URL;

import org.aktin.cda.etl.fhir.RestService;
import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

/**
 * JUnit tests for the FHIR interface.
 * 
 * @author R.W.Majeed
 *
 */
public class TestFHIR {
	Server server;
	private URL fhirUrl;
	
	/**
	 * Prepare server for CDA validation
	 * @throws IOException
	 */
	@Before
	public void startServer() throws IOException{
		// run validation server
		server = new Server();
		server.bind(new InetSocketAddress("localhost", 0));
		server.start();
		
		// URL to receive POST/PUT requests (use dynamic port) 
		fhirUrl = new URL("http","localhost",server.getPort(),Server.REST_CONTEXT_PATH);
	}
	
	/**
	 * Shutdown server after each test
	 */
	@After
	public void shutdownServer(){
		server.shutdown();
	}
	
	/**
	 * Submits a valid CDA document to the FHIR interface.
	 * The actual document submission is done in {@link Client#submitToFHIR(URL, InputStream)}
	 * 
	 * @throws IOException
	 */
	@Test
	public void expectOkForValidCDA() throws IOException{
		// open example CDA document
		InputStream in = getClass().getResourceAsStream("/CDAexample/basismodul-beispiel-storyboard01.xml");

		// submit document to URL connection
		// see the corresponding source code how it is done
		HttpURLConnection uc = Client.submitToFHIR(fhirUrl, in);

		// close CDA input stream
		in.close();

		// read response
		int responseCode = uc.getResponseCode();
		// should be 200 OK
		Assert.assertEquals(HttpURLConnection.HTTP_OK, responseCode);

		// optionally consume response stream
		in = uc.getInputStream();
		in.close();
	}

	@Test
	public void expectUnprocessableEntityForSemanticErrors() throws IOException{
		InputStream in = getClass().getResourceAsStream("/CDAexample/basismodul-beispiel-storyboard01-error1.xml");

		HttpURLConnection uc = Client.submitToFHIR(fhirUrl, in);
		
		in.close();
		
		int responseCode = uc.getResponseCode();
		Assert.assertEquals(RestService.HTTP_UNPROCESSABLE_ENTITY, responseCode);
		in = uc.getErrorStream();
		in.close();
	}

	@Test
	public void expectUnsupportedTypeForInvalidXML() throws IOException{
		InputStream in = getClass().getResourceAsStream("/CDAexample/invalid-syntax.xml");

		HttpURLConnection uc = Client.submitToFHIR(fhirUrl, in);
		
		in.close();
		
		int responseCode = uc.getResponseCode();
		Assert.assertEquals(RestService.HTTP_UNSUPPORTED_TYPE, responseCode);
		in = uc.getErrorStream();
		in.close();
	}
	@Test
	public void expectUnprocessableEntityForOtherXML() throws IOException{
		InputStream in = getClass().getResourceAsStream("/CDAexample/other-document.xml");

		HttpURLConnection uc = Client.submitToFHIR(fhirUrl, in);
		
		in.close();
		
		int responseCode = uc.getResponseCode();
		Assert.assertEquals(RestService.HTTP_UNPROCESSABLE_ENTITY, responseCode);
		in = uc.getErrorStream();
		in.close();
	}
}
