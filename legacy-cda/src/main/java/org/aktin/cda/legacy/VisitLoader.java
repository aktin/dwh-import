package org.aktin.cda.legacy;

import java.io.File;
import java.io.IOException;
import java.util.function.Consumer;
import java.util.stream.StreamSupport;

import javax.xml.stream.XMLStreamException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Document;

import de.sekmi.histream.ObservationFactory;
import de.sekmi.histream.etl.ETLObservationSupplier;
import de.sekmi.histream.etl.ParseException;
import de.sekmi.histream.impl.Meta;
import de.sekmi.histream.impl.ObservationFactoryImpl;
import de.sekmi.histream.impl.SimplePatientExtension;
import de.sekmi.histream.impl.SimpleVisitExtension;
import de.sekmi.histream.io.AbstractObservationParser;

public class VisitLoader implements Consumer<Document>{
	private ObservationFactory factory;
	VisitSplittingXMLGenerator splitter;
	
	public VisitLoader(){
		factory = new ObservationFactoryImpl();
		factory.registerExtension(new SimplePatientExtension());
		factory.registerExtension(new SimpleVisitExtension());
	}

	public void load(File configuration) throws IOException, ParseException, XMLStreamException{
		ETLObservationSupplier s = new ETLObservationSupplier(configuration, factory);
		splitter = new VisitSplittingXMLGenerator(this);
		Meta.transfer(s, splitter);
		StreamSupport.stream(AbstractObservationParser.nonNullSpliterator(s), false).forEach(splitter);
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
