package org.aktin.dwh.etl;

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
 * Example: curl -X POST http://localhost:9000/aktin/dwh?output=dwh -H "Content-Type: text/xml" --data-binary "@basismodul-beispiel-storyboard01.xml"
 *
 */
@WebServiceProvider()
@ServiceMode(value = Service.Mode.MESSAGE)
public class RestServer implements Provider<Source>{
	
	static final String MODE_DWH = "dwh";
	static final String MODE_SVRL = "svrl";
	static final String MODE_ERROR_ONLY = "error";
	static final String MODE_RESULT = "result";
	static final String MODE_INVERSE = "inverse";
	static final String MODE_STEP1 = "step1";
	
	
	private static final Logger log = Logger.getLogger(RestServer.class.getName());
	TransformerFactory factory;
	
	@Resource
    protected WebServiceContext context;

	
	public RestServer() { 

		//System.setProperty("jaxp.debug","1");
		System.setProperty("javax.xml.transform.TransformerFactory","net.sf.saxon.TransformerFactoryImpl");	
		factory = TransformerFactory.newInstance();  //Achtung: Auswahl der Transformer Implementierung ist kritisch. Muss ggf. noch weiter geprueft werden.
    	// TODO Use factory.newTemplates(..) to prepare for multiple transformations

	}
	
	public static void main(String args[]) throws IOException{
		RestServer hs = new RestServer();
		Endpoint e = Endpoint.create(HTTPBinding.HTTP_BINDING, hs);
		// use executor for more control over parallel executions
		//e.setExecutor(/*...*/);
		String address = "http://localhost:9000/aktin/dwh";   //?output=xyz 
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
        if (lower_query.equals ("output=" + MODE_INVERSE)) {
        	mode = MODE_INVERSE;
        }
        if (lower_query.equals ("output=" + MODE_STEP1)) {
        	mode = MODE_STEP1;
        }

        log.info("method="+httpMethod+", path="+path+", query="+query+", mode="+mode);
        if( request == null ){
        	log.warning("No xml request provided");
            return new StreamSource(new StringReader("<!DOCTYPE html><html><head></head><body>ERROR</body></html>"));
        }


		String str = runTransformations (request, mode);
		log.info(str);
		
		boolean magic = false;
		if (magic) {     //ToDo: HTTP RESPONSE Moeoeoeoeoep wenn Fehler in der Schematron Validierung; Entscheidung ok/nicht ok wird vor allem auch fuer den Modus DWH benoetigt (Abbruch, falls CDA nicht ok)!
			throw new javax.xml.ws.WebServiceException("Fehler!");  //So geht's nicht => HTTP-Response is "500 Internal Server Error"
		}

        return new StreamSource(new StringReader(str));
	}
	
	public String runTransformations (Source request, String mode) {
		try {
			// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
			// Erste Transformation (Schematron Validierung)
			// Nicht relevant in MODE_DWH - Es wird keine Schematron-Pruefung durchgefuehrt --TEST-MODUS-- (spaeter wird zuerst mit MODE_RESULT geprueft, ob das Ergebnis ok war)
			// MODE_INVERSE - Step1 Transformation
						
			//File XSLFile = new File("src/main/resources/schematron/aktin-basism.xsl"); //Java Generated
			File XSLFile= null;

			if (mode.equals(MODE_INVERSE) || mode.equals(MODE_STEP1)) {
	        	XSLFile = new File("src/main/resources/eav-cda-step1.xsl");
	        }
			if (mode.equals(MODE_DWH)) {
	        	XSLFile = null;
	        }
			if (mode.equals(MODE_SVRL) || mode.equals(MODE_ERROR_ONLY) || mode.equals(MODE_RESULT) ) {
				XSLFile = new File("src/main/resources/schematron/schematron_svrl/aktin-basism.xsl");
			}
			
			File Step1Out = new File("src/main/resources/schematron/TransformationResult.xml");
				
			OutputStream TransOutStream = new FileOutputStream(Step1Out);
			Result result = new StreamResult(TransOutStream);
			Source schemaXSLT = null;
			Transformer transformer1;
			
			if (mode.equals(MODE_DWH)) {
				transformer1 = factory.newTransformer();  //Identity Transformer
			}
			else {
	        	schemaXSLT = new StreamSource(XSLFile);
				transformer1 = factory.newTransformer(schemaXSLT);
			}
						
			transformer1.setOutputProperty(OutputKeys.INDENT, "yes");
			
			//log.info("Step 1 transformation...");
			transformer1.transform(request, result);
			//log.info("...done");
			
			// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
			// Zweite Transformation 
			// Varianten 
			// MODE_SVRL ~ Identity-Transformation = Vollstaendiger Bericht
			// MODE_ERROR_ONLY ~ Error_Only-Transformation = Herausfiltern der Fehlermeldungen aus dem Validierungsbericht
			// MODE_DWH ~ Transformation CDA->DWH, Rueckgabe = EAV-XML-Datei
			// MODE_RESULT ~ Transformation Fehler enthalten ja/nein? = Rueckgabe nur HTTP-Status
			// MODE_INVERSE ~ Transformation EAV->CDA
			
			File XSLFile2 = new File("src/main/resources/schematron/Show_Result_Only.xsl"); //default
			

			if (mode.equals(MODE_DWH)) {
				XSLFile2 = new File("src/main/resources/cda-eav.xsl");
	        }
			if (mode.equals(MODE_SVRL) || mode.equals(MODE_STEP1)) {
	        	XSLFile2 = null;
	        }
			if (mode.equals( MODE_ERROR_ONLY)) {
	        	XSLFile2 = new File("src/main/resources/schematron/Show_Error_Only.xsl");
	        }
			if (mode.equals(MODE_RESULT)) {
	        	XSLFile2 = new File("src/main/resources/schematron/Show_Result_Only.xsl");
	        }
			if (mode.equals(MODE_INVERSE)) {
	        	XSLFile2 = new File("src/main/resources/eav-cda-step2.xsl");
	        }
	
			if (XSLFile2 != null)
				schemaXSLT = new StreamSource(XSLFile2);
			Source input = new StreamSource(Step1Out);
						
			//Ausgabe in Stream Result
			StringWriter w = new StringWriter(); 
			StreamResult output = new StreamResult(w);
						
			Transformer transformer2;
			if (XSLFile2 == null) {
				 transformer2 = factory.newTransformer();  //Identity Transformer
			} else {
				 transformer2 = factory.newTransformer(schemaXSLT);
			}
				
			transformer2.setOutputProperty(OutputKeys.INDENT, "yes");
			
			//log.info("Step2 Transformation...");
			transformer2.transform(input, output);
			//log.info("...done");
			
					
			return w.toString();
			//*/
		} catch (Exception e) {
			// TODO Auto-generated catch block
			log.log(Level.SEVERE, "Transformation failed",e);
		} 
		return null;
	}
}
