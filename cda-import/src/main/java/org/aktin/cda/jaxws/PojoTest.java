package org.aktin.cda.jaxws;

import javax.jws.WebMethod;
import javax.jws.WebService;

@WebService
public class PojoTest {

	public PojoTest(){
		
	}
	
	@WebMethod
	public String sayHello(String name){
		return "Hello "+name+"!";
	}
}
