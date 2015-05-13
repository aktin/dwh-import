package org.aktin.dwh.etl;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
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

    	//String str = runSchematron (request);
    	String str = runSchematron ();
        return new StreamSource(new StringReader(str));
	}
	

	public String runSchematron () {
//		File schFile = new File("src/main/resources/schematron/tstBuchSchema1.sch");
		File schFile = new File("src/main/resources/schematron/testschema.sch");
		// File schFile = new File("src/main/resources/schematron/aktin-basism.sch");

		Source schemaSCH = new StreamSource(schFile);
		return runSchematron(schemaSCH);
	}

	public String runSchematron (Source request) {
		try {
			File svrlFile = new File("src/main/resources/schematron/iso-xslt2/iso_svrl_for_xslt2.xsl");
			File temXslFile = new File("src/main/resources/schematron/tmp_schematron.xsl");
			File testXmlIn = new File("src/main/resources/schematron/test_in.xml");
			//*/
        	Source schemaXSLT = new StreamSource(svrlFile);
        	
			Templates t1schematron = factory.newTemplates(schemaXSLT);
			Result schemaOut = new StreamResult(new FileOutputStream(temXslFile));
			
			Transformer t1 = factory.newTransformer();
			t1.setOutputProperties(t1schematron.getOutputProperties());
			
//			StringWriter w = new StringWriter();
//			StreamResult result = new StreamResult(w);
			
			t1.transform(request, schemaOut);

//			return "<!DOCTYPE html><html><head></head><body> OK 222</body></html>";

			//////////////
//			/*/
	    	Source schemaSCHX = new StreamSource(temXslFile);
	    	Source sourceIn = new StreamSource(testXmlIn);
	    	
			Templates t2schematron = factory.newTemplates(schemaSCHX);

//			Result resultOut = new StreamResult(new FileOutputStream("src/main/resources/schematron/testOut.xml"));

			Transformer t2 = factory.newTransformer(schemaSCHX);
			//t2.setOutputProperties(t2schematron.getOutputProperties());

			StringWriter w = new StringWriter();
			StreamResult result = new StreamResult(w);
			
			t2.transform(sourceIn, result);
			log.info("Transform successful: " + w.toString());
			return w.toString();
			//*/
		} catch (Exception e) {
			// TODO Auto-generated catch block
			log.log(Level.SEVERE, "Transformation failed",e);
		} 
		return null;
	}
}
