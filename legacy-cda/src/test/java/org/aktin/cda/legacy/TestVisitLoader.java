package org.aktin.cda.legacy;

import java.io.File;
import java.io.IOException;

import javax.xml.stream.XMLStreamException;

import org.junit.Test;

import de.sekmi.histream.etl.ParseException;

public class TestVisitLoader {

	@Test
	public void testLoad() throws IOException, ParseException, XMLStreamException{
		VisitLoader loader = new VisitLoader();
		loader.load(new File("examples/test-1-datasource.xml"));
	}
}
