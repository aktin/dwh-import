package org.aktin.dwh.etl;
	
import static org.junit.Assert.*;

import org.junit.Test;

import java.io.ByteArrayInputStream;
import java.io.File;

import java.util.logging.Level;
import java.util.logging.Logger;

import javax.xml.transform.stream.StreamSource;
import javax.xml.ws.Endpoint;
import javax.xml.ws.http.HTTPBinding;


	public class TestInverseTransformations {
		
		private static final Logger log = Logger.getLogger(Transform.class.getName());
		
		private final String[] TestFiles = new String[] {
				"src/test/resources/inverse-story4-cda.xml",
				"src/test/resources/basismodul-beispiel-storyboard01_complete02.xml"
		};         

		@Test
		public void testTransform() {
			try {
				RestServer hs = new RestServer();
				Endpoint e = Endpoint.create(HTTPBinding.HTTP_BINDING, hs);
				// use executor for more control over parallel executions
				//e.setExecutor(/*...*/);
				String address = "http://localhost:9000/aktin/dwh";
				e.publish(address); //not used, transform is called via public runTransformations(...)
				
				//log.info("REST Server started"); 
				
				for (String file : this.TestFiles)
				{

					CDA base_cda = new CDA(new File(file));
					if (base_cda.CDA == null){
						fail("Error loading CDA document");	
					}	
					else {
						
						String eav_xml = hs.runTransformations(new StreamSource(file), RestServer.MODE_DWH);
						String cda_inverse_xml = hs.runTransformations(new StreamSource(new ByteArrayInputStream(eav_xml.getBytes("UTF-8"))), RestServer.MODE_INVERSE);
						CDA inverse_cda = new CDA(cda_inverse_xml);
						if (inverse_cda.CDA == null){
							fail("Error loading CDA document");	
						}	
						if (! base_cda.equals(inverse_cda)) {
							log.info("CDA equals-check NOT successful for: "+file);
							fail("CDA Documents not equivalent after inverse transformation");
						}					
						//log.info(cda_inverse_xml);
						log.info("CDA equals-check successful for: "+file);
	
					}
				}
			} catch (Exception e){
				log.log(Level.SEVERE, "Test failed",e);
				fail("Error concerning REST-Server or HTTP-POST");	
			}
		}
	}


