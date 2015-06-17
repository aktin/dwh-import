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
 * @author Raphael, Volker
 * 
 * Example: curl -i -X POST http://localhost:9000/aktin/dwh?output=dwh -H "Content-Type: text/xml" --data-binary "@basismodul-beispiel-storyboard01.xml"
 *
 */
@WebServiceProvider()
@ServiceMode(value = Service.Mode.MESSAGE)
public class RestServer implements Provider<Source>{
	
	static final String MODE_DWH = "dwh";
	static final String MODE_SVRL = "svrl";
	static final String MODE_ERROR_ONLY = "error";
	static final String MODE_RESULT = "result";
	
	
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
		String address = "http://localhost:9000/aktin/dwh";   //?output=svrl || ?output=dwh
		e.publish(address);
		
	}

	@Override
	public StreamSource invoke(Source request) {
		// TODO Auto-generated method stub		
	    MessageContext mc = context.getMessageContext();
        String path = (String)mc.get(MessageContext.PATH_INFO);
        String query = (String)mc.get(MessageContext.QUERY_STRING);
        String httpMethod = (String)mc.get(MessageContext.HTTP_REQUEST_METHOD);
        String mode;
        String lower_query = query.toLowerCase();
        mode = MODE_RESULT; //default
        if (lower_query.equals("output=" + MODE_DWH)) {
        	mode = MODE_DWH;
        }
        if (lower_query.equals ("output=" + MODE_SVRL)) {
        	mode = MODE_SVRL;
        }
        if (lower_query.equals("output=" + MODE_ERROR_ONLY)) {
        	mode =  MODE_ERROR_ONLY;
        }
        if (lower_query.equals ("output=" + MODE_RESULT)) {
        	mode = MODE_RESULT;
        }

        log.info("method="+httpMethod+", path="+path+", query="+query+", mode="+mode);
        if( request == null ){
        	log.warning("No xml request provided");
            return new StreamSource(new StringReader("<!DOCTYPE html><html><head></head><body>ERROR</body></html>"));
        }


		String str = runSchematron (request, mode);
		log.info(str);
		
		boolean magic = false;
		if (magic) {     //ToDo: HTTP RESPONSE Möööööp wenn Fehler in der Schematron Validierung; Entscheidung ok/nicht ok wird vor allem auch für den Modus DWH benötigt (Abbruch, falls CDA nicht ok)!
			throw new javax.xml.ws.WebServiceException("Fehler!");  //So geht's nicht => HTTP-Response is "500 Internal Server Error"
		}

        return new StreamSource(new StringReader(str));
	}
	
	public String runSchematron (Source request, String mode) {
		try {
			// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
			// Erste Transformation (Schematron Validierung)
			// Nicht relevant in MODE_DWH - Es wird keine Schematron-Prüfung durchgeführt --TEST-MODUS-- (später wird zuerst mit MODE_RESULT geprüft, ob das Ergebnis ok war)
						
			//File XSLFile = new File("src/main/resources/schematron/aktin-basism.xsl"); //Java Generated
			File XSLFile = new File("src/main/resources/schematron/schematron_svrl/aktin-basism.xsl"); //ART Decor
			File Step1Out = new File("src/main/resources/schematron/TransformationResult.xml");
	
        	Source schemaXSLT = new StreamSource(XSLFile);
			
			OutputStream TransOutStream = new FileOutputStream(Step1Out);
			Result result = new StreamResult(TransOutStream);
	
			Transformer transformer1;
			if (mode.equals(MODE_DWH)) {
				 transformer1 = factory.newTransformer();  //Identity Transformer
			} else {
				 transformer1 = factory.newTransformer(schemaXSLT);
			}
						
			transformer1.setOutputProperty(OutputKeys.INDENT, "yes");
			
			log.info("Schematron Validation...");
			transformer1.transform(request, result);
			log.info("...done");
			
			// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
			// Zweite Transformation 
			// Varianten 
			// MODE_SVRL ~ Identity-Transformation = Vollständiger Bericht
			// MODE_ERROR_ONLY ~ Error_Only-Transformation = Herausfiltern der Fehlermeldungen aus dem Validierungsbericht
			// MODE_DWH ~ Transformation CDA->DWH, Rückgabe = EAV-XML-Datei
			// MODE_RESULT ~ Transformation Fehler enthalten ja/nein? = Rückgabe nur HTTP-Status
			
			File XSLFile2 = new File("src/main/resources/schematron/Show_Result_Only.xsl"); //default
			

			if (mode.equals(MODE_DWH)) {
				XSLFile2 = new File("E:/GIT/aktin/dwh-import/cda_basismodul/dwh-eav-test-VT.xsl");
	        }
			if (mode.equals(MODE_SVRL)) {
	        	XSLFile2 = null;
	        }
			if (mode.equals( MODE_ERROR_ONLY)) {
	        	XSLFile2 = new File("src/main/resources/schematron/Show_Error_Only.xsl");
	        }
			if (mode.equals(MODE_RESULT)) {
	        	XSLFile2 = new File("src/main/resources/schematron/Show_Result_Only.xsl");
	        }
	
			if (XSLFile2 != null)
				schemaXSLT = new StreamSource(XSLFile2);
			Source input = new StreamSource(Step1Out);
						
			//Ausgabe in Stream Result
			StringWriter w = new StringWriter(); 
			StreamResult output = new StreamResult(w);
						
			Transformer transformer2;
			if (mode.equals(MODE_SVRL)) {
				 transformer2 = factory.newTransformer();  //Identity Transformer
			} else {
				 transformer2 = factory.newTransformer(schemaXSLT);
			}
				
			transformer2.setOutputProperty(OutputKeys.INDENT, "yes");
			
			log.info("Output Transformation...");
			transformer2.transform(input, output);
			log.info("...done");
					
			return w.toString();
			//*/
		} catch (Exception e) {
			// TODO Auto-generated catch block
			log.log(Level.SEVERE, "Transformation failed",e);
		} 
		return null;
	}
}
