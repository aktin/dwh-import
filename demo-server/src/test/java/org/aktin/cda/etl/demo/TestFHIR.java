package org.aktin.cda.etl.demo;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.aktin.cda.etl.demo.client.FhirClient;
import org.aktin.cda.etl.fhir.RestService;
import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/**
 * JUnit tests for the FHIR interface.
 * 
 * @author R.W.Majeed
 *
 */
public class TestFHIR {
	Server server;
	private URL fhirBinary;
	private URL fhirBase;
	
	/**
	 * Prepare server for CDA validation
	 * @throws IOException io error
	 */
	@Before
	public void startServer() throws IOException{
		// run validation server
		server = new Server(0);
		server.bind();
		server.start();
		
		// URL to receive POST/PUT requests (use dynamic port) 
		fhirBase = new URL("http","localhost",server.getPort(),Server.REST_CONTEXT_PATH);
		fhirBinary = new URL(fhirBase+"/Binary");
	}
	
	/**
	 * Shutdown server after each test
	 */
	@After
	public void shutdownServer(){
		server.shutdown();
	}
	
	private void verifyConformanceStatement(URL url, HttpURLConnection c) throws IOException{
		Assert.assertEquals(200, c.getResponseCode());
		try( InputStream in = c.getInputStream() ){
			InputSource s = new InputSource(in);
			s.setSystemId(url.toString());
			// TODO read/verify
			Document dom;
			try {
				DocumentBuilder b = DocumentBuilderFactory.newInstance().newDocumentBuilder();
				dom = b.parse(s);
			} catch (ParserConfigurationException | SAXException e) {
				throw new IOException(e);
			}
			Assert.assertEquals("Conformance", dom.getDocumentElement().getTagName());
		}		
	}
	@Test
	public void requestConformanceStatementGet() throws IOException{
		URL req = new URL(fhirBase+"/metadata");
		HttpURLConnection c = (HttpURLConnection)req.openConnection();
		c.setDoInput(true);
		c.setDoOutput(false);
		c.addRequestProperty("Accept","text/xml");
		c.setRequestMethod("GET");
		c.connect();
		verifyConformanceStatement(req, c);
	}
	
	@Test
	public void requestConformanceStatementOptions() throws IOException{
		HttpURLConnection c = (HttpURLConnection)fhirBase.openConnection();
		c.setDoInput(true);
		c.setDoOutput(false);
		c.addRequestProperty("Accept","text/xml");
		c.setRequestMethod("OPTIONS");
		c.connect();
		verifyConformanceStatement(new URL(fhirBase,"metadata"), c);
	}
	
	/**
	 * Submits a valid CDA document to the FHIR interface.
	 * The actual document submission is done in {@link FhirClient#submitToFHIR(URL, InputStream, String)}
	 * 
	 * @throws IOException error during loading/transfer
	 */
	@Test
	public void expectCreatedForValidCDA() throws IOException{
		// open example CDA document
		InputStream in = getClass().getResourceAsStream("/CDAexample/basismodul-beispiel-storyboard01.xml");

		// submit document to URL connection
		// see the corresponding source code how it is done
		HttpURLConnection uc = FhirClient.submitToFHIR(fhirBinary, in, "UTF-8");

		// close CDA input stream
		in.close();

		// read response
		int responseCode = uc.getResponseCode();
		// should be 201 Created
		Assert.assertEquals(HttpURLConnection.HTTP_CREATED, responseCode);
		String loc = uc.getHeaderField("Location");
		Assert.assertNotNull(loc);
		// optionally consume response stream
		in = uc.getInputStream();
		in.close();
	}

	@Test
	public void expectUnprocessableEntityForSemanticErrors() throws IOException{
		InputStream in = getClass().getResourceAsStream("/CDAexample/basismodul-beispiel-storyboard01-error1.xml");

		HttpURLConnection uc = FhirClient.submitToFHIR(fhirBinary, in, "UTF-8");
		
		in.close();
		
		int responseCode = uc.getResponseCode();
		Assert.assertEquals(RestService.HTTP_UNPROCESSABLE_ENTITY, responseCode);
		in = uc.getErrorStream();
		in.close();
	}

	@Test
	public void expectUnsupportedTypeForInvalidXML() throws IOException{
		InputStream in = getClass().getResourceAsStream("/CDAexample/invalid-syntax.xml");

		HttpURLConnection uc = FhirClient.submitToFHIR(fhirBinary, in, "UTF-8");
		
		in.close();
		
		int responseCode = uc.getResponseCode();
		Assert.assertEquals(RestService.HTTP_UNSUPPORTED_TYPE, responseCode);
		in = uc.getErrorStream();
		in.close();
	}
	@Test
	public void expectUnprocessableEntityForOtherXML() throws IOException{
		InputStream in = getClass().getResourceAsStream("/CDAexample/other-document.xml");

		HttpURLConnection uc = FhirClient.submitToFHIR(fhirBinary, in, "UTF-8");
		
		in.close();
		
		int responseCode = uc.getResponseCode();
		Assert.assertEquals(RestService.HTTP_UNPROCESSABLE_ENTITY, responseCode);
		in = uc.getErrorStream();
		in.close();
	}
}
