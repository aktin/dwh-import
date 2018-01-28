package org.aktin.cda.etl.fhir;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;

public class FilteredStringResource {

	protected StringBuilder readResource(String resource) throws IOException{
		StringBuilder sb = new StringBuilder(1024*64);
		try( BufferedReader reader = new BufferedReader(
				new InputStreamReader(
						getClass().getResourceAsStream(resource),
						StandardCharsets.UTF_8
				)
			) ){
			for (int c; (c = reader.read()) != -1;) {
	            sb.append((char) c);
	        }
		}
		return sb;
	}

	protected static void replaceAllStrings(StringBuilder string, String source, String replacement){
		int i = 0;
		while( (i = string.indexOf(source, i)) != -1 ){
			
			string.replace(i, i+source.length(), replacement);
			i += replacement.length();
		}
	}
}
