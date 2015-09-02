package org.aktin.cda.legacy;

import java.io.IOException;
import java.net.URL;
import java.util.function.Consumer;

import javax.xml.stream.XMLStreamException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Document;

import de.sekmi.histream.etl.ETLObservationSupplier;
import de.sekmi.histream.etl.ParseException;
import de.sekmi.histream.io.Streams;

public class VisitLoader implements Consumer<Document>{
	VisitSplittingXMLGenerator splitter;
	
	public VisitLoader(){
	}

	public void load(URL configuration) throws IOException, ParseException, XMLStreamException{
		ETLObservationSupplier s = ETLObservationSupplier.load(configuration);
		splitter = new VisitSplittingXMLGenerator(this);
		Streams.transfer(s, splitter);
		s.close();
		splitter.close(); // will write end of stream
	}
	
	@Override
	public void accept(Document doc) {
		// TODO make sure namespaces are repaired
		// TODO convert to CDA
		DOMSource source = new DOMSource(doc);
		Transformer t;
		try {
			t = TransformerFactory.newInstance().newTransformer();
			t.transform(source, new StreamResult(System.out));
			System.out.println();
		} catch (TransformerException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
