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

public class TestFHIR {
	Server server;
	private URL fhirUrl;
	
	@Before
	public void startServer() throws IOException{
		server = new Server();
		server.bind(new InetSocketAddress("localhost", 0));
		server.start();
		fhirUrl = new URL("http","localhost",server.getPort(),Server.REST_CONTEXT_PATH);
	}
	@After
	public void shutdownServer(){
		server.shutdown();
	}
	@Test
	public void expectOkForValidCDA() throws IOException{
		InputStream in = getClass().getResourceAsStream("/CDAexample/basismodul-beispiel-storyboard01.xml");

		HttpURLConnection uc = Client.submitToFHIR(fhirUrl, in);
		
		in.close();
		
		int responseCode = uc.getResponseCode();
		Assert.assertEquals(HttpURLConnection.HTTP_OK, responseCode);
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
