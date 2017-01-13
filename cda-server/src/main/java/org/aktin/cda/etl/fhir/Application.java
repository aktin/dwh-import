package org.aktin.cda.etl.fhir;

import javax.ws.rs.ApplicationPath;

@ApplicationPath("/fhir")
public class Application extends javax.ws.rs.core.Application{
	public Application(){
//		URL url = getClass().getClassLoader().getResource("META-INF/MANIFEST.MF");
		// doesn't work and will return wildfly manifest
	}
}
