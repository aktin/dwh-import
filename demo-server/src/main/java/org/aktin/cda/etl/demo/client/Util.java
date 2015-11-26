package org.aktin.cda.etl.demo.client;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/**
 * Client code to access the FHIR and XDS services
 * 
 * @author R.W.Majeed
 *
 */
public class Util {

	/**
	 * Transfers all data from input stream to output stream
	 * 
	 * @param inputStream source
	 * @param outputStream destination
	 * @throws IOException io errors
	 */
	public static void transfer(InputStream inputStream, OutputStream outputStream) throws IOException{
		byte[] buffer = new byte[10*1024];
		int count;
		while( (count = inputStream.read(buffer)) != -1 ){
			outputStream.write(buffer,0,count);
		}
	}


}