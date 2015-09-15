package org.aktin.cda.etl.demo;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

public class Client {

	public static void main(String[] args){
		
	}
	
	public static void transfer(InputStream inputStream, OutputStream outputStream) throws IOException{
		byte[] buffer = new byte[10*1024];
		int count;
		while( (count = inputStream.read(buffer)) != -1 ){
			outputStream.write(buffer,0,count);
		}
	}

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
		Client.transfer(document,put);
		put.close();

		return uc;
	}
}
