package org.aktin.dwh.etl;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.*;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.annotation.Resource;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Templates;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import javax.xml.ws.Endpoint;
import javax.xml.ws.Provider;
import javax.xml.ws.Service;
import javax.xml.ws.ServiceMode;
import javax.xml.ws.WebServiceContext;
import javax.xml.ws.WebServiceProvider;
import javax.xml.ws.handler.MessageContext;
import javax.xml.ws.http.HTTPBinding;


/**
 * Provides REST interfaces to emulate an i2b2 server.
 * @author Raphael
 * 
 * Example: curl -i -X POST http://localhost:9000/aktin/dwh -H "Content-Type: text/xml" --data-binary "@basismodul-beispiel-storyboard01.xml"
 *
 */
@WebServiceProvider()
@ServiceMode(value = Service.Mode.MESSAGE)
public class RestServer implements Provider<Source>{
	private static final Logger log = Logger.getLogger(RestServer.class.getName());
	TransformerFactory factory;
	
	@Resource
    protected WebServiceContext context;

	
	public RestServer() {

    	factory = TransformerFactory.newInstance();
    	// TODO Use factory.newTemplates(..) to prepare for multiple transformations

	}
	
	public static void main(String args[]) throws IOException{
		RestServer hs = new RestServer();
		Endpoint e = Endpoint.create(HTTPBinding.HTTP_BINDING, hs);
		// use executor for more control over parallel executions
		//e.setExecutor(/*...*/);
		String address = "http://localhost:9000/aktin/dwh";
		e.publish(address);
		
	}

	@Override
	public StreamSource invoke(Source request) {
		// TODO Auto-generated method stub
	    MessageContext mc = context.getMessageContext();
        String path = (String)mc.get(MessageContext.PATH_INFO);
        String query = (String)mc.get(MessageContext.QUERY_STRING);
        String httpMethod = (String)mc.get(MessageContext.HTTP_REQUEST_METHOD);
        log.info("method="+httpMethod+", path="+path+", query="+query);
        if( request == null ){
        	log.warning("No xml request provided");
            return new StreamSource(new StringReader("<!DOCTYPE html><html><head></head><body>ERROR</body></html>"));
        }

//      String str = runXSLT();
		String str = runSchematron (request);
//    	String str = runSchematron ();
        return new StreamSource(new StringReader(str));
	}
	
/*
	public String runXSLT () {
		try {
			
			File xsltFile = new File ("src/main/resources/schematron/Saxon/samples/styles/books.xsl");
			File xmlFile = new File ("src/main/resources/schematron/Saxon/samples/data/books.xml");
			
			File outFile = new File ("src/main/resources/schematron/Saxon/samples/tmp_out.html");
        	
			Source schemaXSLT = new StreamSource(xsltFile);
			Source inSource = new StreamSource(xmlFile);
			
			Templates t1schematron = factory.newTemplates(schemaXSLT);
			OutputStream schemaOutStream = new FileOutputStream(outFile);
			Result schemaOut = new StreamResult(schemaOutStream);
			
			Transformer t1 = factory.newTransformer();
			t1.setOutputProperties(t1schematron.getOutputProperties());
			
			t1.transform(inSource, schemaOut);
			schemaOutStream.close();
			return "<!DOCTYPE html><html><head></head><body> ready </body></html>";
		} catch (Exception e) {
			log.log(Level.SEVERE, "Transformation failed",e);
		} 
		return null;
	}

	public String runSchematron () {
		File schFile = new File("src/main/resources/schematron/tstBuchSchema1.sch");
//		File schFile = new File("src/main/resources/schematron/testschema.sch");
		// File schFile = new File("src/main/resources/schematron/aktin-basism.sch");

		Source schemaSCH = new StreamSource(schFile);
		return runSchematron(schemaSCH);
	}

*/
	public String runSchematron (Source request) {
		try {
			File XSLFile = new File("src/main/resources/schematron/aktin-basism.xsl");
			File outFile = new File("src/main/resources/schematron/TransformationErrors.xml");
			File Step1Out = new File("src/main/resources/schematron/TransformationResult.xml");

	
        	Source schemaXSLT = new StreamSource(XSLFile);
			Templates schematron = factory.newTemplates(schemaXSLT);
			
			
			OutputStream TransOutStream = new FileOutputStream(Step1Out);
			Result result = new StreamResult(TransOutStream);
	
			Transformer transformer1 = factory.newTransformer(schemaXSLT);
			transformer1.setOutputProperty(OutputKeys.INDENT, "yes");
			
			transformer1.transform(request, result);
			
			// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
			// Optionale zweite Transformation (Herausfiltern der Fehlermeldungen aus dem Validierungsbericht)
			// Zum Überspringen unten auf Identity Transform umstellen
			
			File XSLFile2 = new File("src/main/resources/schematron/Show_Error_Only.xsl");
			
			schemaXSLT = new StreamSource(XSLFile2);
			Source input = new StreamSource(Step1Out);
						
        	/*  //Alternative Ausgabe in Datei
			OutputStream OutStream = new FileOutputStream(outFile);
			Result output = new StreamResult(OutStream);
			*/
						
			//Ausgabe in Stream Result
			StringWriter w = new StringWriter(); 
			StreamResult output = new StreamResult(w);
			
//			Transformer transformer2 = factory.newTransformer();  //Identity Transformer (um die gesamte Ausgabe zu sehen)
			Transformer transformer2 = factory.newTransformer(schemaXSLT);
			transformer2.setOutputProperty(OutputKeys.INDENT, "yes");
			
			transformer2.transform(input, output);
					
			return w.toString();
			//*/
		} catch (Exception e) {
			// TODO Auto-generated catch block
			log.log(Level.SEVERE, "Transformation failed",e);
		} 
		return null;
	}
}
