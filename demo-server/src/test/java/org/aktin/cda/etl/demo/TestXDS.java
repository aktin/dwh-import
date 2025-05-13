package org.aktin.cda.etl.demo;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;

import org.aktin.cda.etl.demo.client.XdsClient;
import org.aktin.cda.etl.xds.XDSConstants;
import org.junit.*;

import oasis.names.tc.ebxml_regrep.xsd.rs._3.RegistryResponseType;

/**
 * JUnit tests for the XDS.b interface
 * 
 * @author R.W.Majeed
 *
 */
public class TestXDS {
	Server server;
	private URL soapUrl;

	@Before
	public void startServer() throws IOException{
		server = new Server(0);
		server.bind();
		server.start();
		soapUrl = new URL("http","localhost",server.getPort(),Server.XDS_CONTEXT_PATH);
	}
	@After
	public void shutdownServer(){
		server.shutdown();
	}

	@Test
	public void expectOkForValidCDA() throws IOException{
		InputStream in = getClass().getResourceAsStream("/CDA Beispiele Basis-Modul v2/basismodul-v2-beispiel-storyboard01.xml");

		RegistryResponseType resp = XdsClient.submitToXDSb(soapUrl, in, "UTF-8", "12345", "123", "example");
		
		in.close();
		
		Assert.assertNotNull(resp);
		Assert.assertEquals(XDSConstants.RESPONSE_SUCCESS, resp.getStatus());
	}
	@Test
	public void expectOkForValidCDA2024() throws IOException{
		InputStream in = getClass().getResourceAsStream("/CDA Beispiele Episodenzusammenfassung Notaufnahmeregister 2024/episodenzusammenfassung-notaufnahmeregister2024-beispiel-storyboard01.xml");

		RegistryResponseType resp = XdsClient.submitToXDSb(soapUrl, in, "UTF-8", "12345", "123", "example");

		in.close();

		Assert.assertNotNull(resp);
		Assert.assertEquals(XDSConstants.RESPONSE_SUCCESS, resp.getStatus());
	}

	@Test
	public void expectFailForInvalidCDA() throws IOException{
		InputStream in = getClass().getResourceAsStream("/CDA Beispiele Basis-Modul v1/basismodul-beispiel-storyboard01-error1.xml");

		RegistryResponseType resp = XdsClient.submitToXDSb(soapUrl, in, "UTF-8", "12345", "123", "example");
		
		in.close();
		
		Assert.assertNotNull(resp);
		Assert.assertEquals(XDSConstants.RESPONSE_FAILURE, resp.getStatus());
	}
}
