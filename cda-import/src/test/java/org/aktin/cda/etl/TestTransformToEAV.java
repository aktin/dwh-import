package org.aktin.cda.etl;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Optional;

import javax.xml.transform.stream.StreamSource;

import org.aktin.cda.CDAParser;
import org.junit.Assert;
import org.junit.Test;
import org.w3c.dom.Document;

import de.sekmi.histream.DateTimeAccuracy;
import de.sekmi.histream.Observation;
import de.sekmi.histream.ext.Patient;
import de.sekmi.histream.ext.Visit;
import de.sekmi.histream.io.GroupedXMLReader;

public class TestTransformToEAV {

	@Test
	public void extractTemplateId() throws Exception{
		CDAParser parser = new CDAParser();
		try( InputStream in = CDAParser.class.getResourceAsStream("/Additional Examples/basismodul-v2-beispiel-storyboard01-complete.xml") ){
			Document dom = parser.buildDOM(new StreamSource(in));
			String templateId = parser.extractTemplateId(dom);
			Assert.assertNotNull(templateId);
			Assert.assertTrue(templateId.length() > 0);
		}
	}
	@Test
	public void transformExample1() throws Exception{
		CDAParser parser = new CDAParser();
		CDAImporterMockUp t = new CDAImporterMockUp();
		try( InputStream in = CDAParser.class.getResourceAsStream("/Additional Examples/basismodul-v2-beispiel-storyboard01-complete.xml") ){
			Document dom = parser.buildDOM(new StreamSource(in));
			
			
			Path temp = t.transform(dom, parser.extractTemplateId(dom));
			try( InputStream eav = Files.newInputStream(temp) ){
				GroupedXMLReader suppl = t.readEAV(eav);
				Observation o = suppl.get();
				
				// verify patient birth date
				Patient p = o.getExtension(Patient.class);
				Assert.assertNotNull(p);
				Assert.assertEquals(DateTimeAccuracy.parsePartialIso8601("1996-05-31", t.getDefaultZoneId()), p.getBirthDate());
				// verify visit start date
				Visit v = o.getExtension(Visit.class);
				Assert.assertNotNull(v);
				Assert.assertEquals(DateTimeAccuracy.parsePartialIso8601("2015-01-17T16:03+0100"), v.getStartTime());
				
				// verify observation
				// skip observations until LOINC
				Optional<Observation> opt = suppl.stream().filter(x -> x.getConceptId().equals("ICD10GM:S80.1")).findFirst();
				Assert.assertTrue(opt.isPresent());
				o = opt.get();
				Assert.assertEquals(DateTimeAccuracy.parsePartialIso8601("2015-01-17T15:56+0100"), o.getStartTime());
				
				suppl.close();
			}finally{
				Files.delete(temp);
			}
		}
		
		t.close();
	}
	
	/**
	 * Transform a CDA file to a EAV which is output on stdout.
	 * Call with {@code java -classpath "cda-import/target/test-classes;cda-import/target/classes;cda-server/target/classes;cda-validation/target/classes;histream-core/target/classes" org.aktin.cda.etl.TestTransformToEAV filename}
	 * @param args file name argument
	 * @throws Exception error
	 */
	public static void main(String args[]) throws Exception{
		// TODO use file name from commmand line
		if( args.length != 1 ){
			System.err.println("Please specify exactly one CDA file path");
			return;
		}
		CDAImporterMockUp t = new CDAImporterMockUp();
		CDAParser parser = new CDAParser();
		try( InputStream in = new FileInputStream(args[0])){
			Document dom = parser.buildDOM(new StreamSource(in));
			
			String templateId = parser.extractTemplateId(dom);
			Path temp = t.transform(dom, templateId);
			try( BufferedReader reader = Files.newBufferedReader(temp) ){
				reader.lines().forEach(System.out::println);
			}finally{
				Files.delete(temp);
			}
			
		}
		
		t.close();
	}
}
