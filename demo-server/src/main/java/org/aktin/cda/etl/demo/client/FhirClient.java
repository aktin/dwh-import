package org.aktin.cda.etl.demo.client;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

/**
 * FHIR client application. 
 * Submit CDA documents to a FHIR Binary endpoint.
 * 
 * @author R.W.Majeed
 *
 */
public class FhirClient {

	/**
	 * Main method to submit documents
	 * 
	 * @param args command line arguments
	 */
	public static void main(String[] args) {
		
		if( args.length != 2 ){
			// Print usage notice to stderr
			System.err.println("Usage: FhirClient <service-url> <file-to-submit>");
			return;
		}
		
		HttpURLConnection response = null;
		
		try( InputStream in = new FileInputStream(args[1]) ){
			response = submitToFHIR(new URL(args[0]), in);
		} catch (FileNotFoundException e) {
			System.err.println("File not found: "+args[1]);
		} catch (IOException e) {
			e.printStackTrace();
			System.err.println("Error while reading file "+args[1]);
		}
		
		if( response != null )try{
			System.err.println("Response code: "+response.getResponseCode());
			// try to use the error stream
			InputStream in = response.getErrorStream();
			if( in == null ){
				// no error stream, use input stream
				in = response.getInputStream();
			}
			Util.transfer(in, System.out);
			in.close();				

		}catch( IOException e ){
			e.printStackTrace();
			System.err.println("Error while reading response: "+e.getLocalizedMessage());
		}
	}

	/**
	 * Submit a CDA document to the AKTIN FHIR interface
	 * 
	 * @param fhirUrl URL of the AKTIN FHIR interface. E.g. http://server.name/aktin/fhir/Binary
	 * @param document CDA document to submit
	 * @return HTTP connection with response status and response/error stream
	 * @throws IOException any errors during HTTP transfer
	 */
	public static HttpURLConnection submitToFHIR(URL fhirUrl, InputStream document) throws IOException{
		URL url = fhirUrl;
		HttpURLConnection uc = (HttpURLConnection)url.openConnection();
		uc.setDoInput(true);
		uc.setDoOutput(true);
		uc.addRequestProperty("Accept","text/xml");
		uc.addRequestProperty("Content-type", "text/xml");
		// set method
		uc.setRequestMethod("PUT");
		uc.connect();

		// write example document
		OutputStream put = uc.getOutputStream();
		Util.transfer(document,put);
		put.close();

		return uc;
	}

}
