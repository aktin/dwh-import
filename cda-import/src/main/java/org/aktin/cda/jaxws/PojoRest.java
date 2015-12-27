package org.aktin.cda.jaxws;

import java.io.StringReader;

import javax.xml.transform.Source;
import javax.xml.transform.stream.StreamSource;
import javax.xml.ws.Provider;
import javax.xml.ws.Service;
import javax.xml.ws.ServiceMode;
import javax.xml.ws.WebServiceProvider;

@WebServiceProvider()
@ServiceMode(Service.Mode.MESSAGE)
public class PojoRest  implements Provider<Source>{

	
	public PojoRest(){
		
	}

	@Override
	public Source invoke(Source request) {
		// TODO Auto-generated method stub
		return new StreamSource(new StringReader("<helloworld/>"));
	}
	
}
