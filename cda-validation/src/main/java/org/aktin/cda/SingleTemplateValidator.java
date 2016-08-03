package org.aktin.cda;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;

import javax.xml.transform.OutputKeys;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.URIResolver;
import javax.xml.transform.dom.DOMResult;
import javax.xml.transform.stream.StreamSource;

import org.w3c.dom.Document;

public class SingleTemplateValidator implements URIResolver{
	private static final String svrlSystemId = "urn:local:svrl";
	private URL svrlTransformation;
	private TransformerFactory factory;
	private Transformer transformer;

	public SingleTemplateValidator(URL svrlTransformation) throws IOException, TransformerConfigurationException{
		this.svrlTransformation = svrlTransformation;
		factory = TransformerFactory.newInstance("net.sf.saxon.TransformerFactoryImpl", null);
		// resolve internal URIs
		factory.setURIResolver(this);
		try( InputStream in = svrlTransformation.openStream() ){
			StreamSource xsl = new StreamSource(in);
			xsl.setSystemId(svrlSystemId);
			transformer = factory.newTransformer(xsl);
		}

		transformer.setOutputProperty(OutputKeys.INDENT, "yes");
		

	}

	public Document validate(Source cdaSource) throws TransformerException{
		//Result result = new StreamResult(System.out);
		DOMResult dom = new DOMResult();
		transformer.transform(cdaSource, dom);
		return (Document)dom.getNode();
	}

	/**
	 * Resolves included URIs during transformation
	 */
	@Override
	public Source resolve(String href, String base) throws TransformerException {
		// TODO does this still work for recursive includes? e.g. a.xml includes a/b.xml includes b/c.xml 
		if( base.equals(svrlSystemId) ){
			try {
				URL url = new URL(svrlTransformation, href);
				return new StreamSource(url.openStream(), svrlSystemId);
			} catch (IOException e) {
				throw new TransformerException(e);
			}
		}else{
			throw new TransformerException("Unable to resolve '"+href+"' under: "+base);
		}
	}
	
}
