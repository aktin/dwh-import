package org.aktin.cda.etl;

import java.io.File;
import java.net.URL;

import javax.ejb.EJB;
import javax.inject.Inject;

import org.aktin.cda.CDAProcessor;
import org.aktin.cda.etl.fhir.RestService;
import org.aktin.cda.etl.xds.DocumentRepository;
import org.aktin.cda.jaxws.PojoRest;
import org.aktin.cda.jaxws.PojoTest;
import org.aktin.cda.servlet.CDAImportBean;
import org.aktin.cda.servlet.TestRest;
import org.jboss.arquillian.container.test.api.Deployment;
import org.jboss.arquillian.junit.Arquillian;
import org.jboss.shrinkwrap.api.ShrinkWrap;
import org.jboss.shrinkwrap.api.asset.EmptyAsset;
import org.jboss.shrinkwrap.api.spec.WebArchive;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;


@RunWith(Arquillian.class)
public class TestEEInject {
	private static final String WEBINF_DIR = "src/main/webapp/WEB-INF";
	@Deployment
    public static WebArchive createDeployment() {
        return ShrinkWrap.create(WebArchive.class)
        		//.addPackage("org.aktin.cda")
        		.addPackage(CDAProcessor.class.getPackage())
        		.addPackage(RestService.class.getPackage())
        		.addPackage(DocumentRepository.class.getPackage())
        		.addClass(DepTest.class)
        		.addAsManifestResource(EmptyAsset.INSTANCE, "META-INF/beans.xml")
        		//.setWebXML(new File(WEBINF_DIR,"web.xml"))
        		//.addAsManifestResource(EmptyAsset.INSTANCE, "beans.xml")
        		//.addAsWebInfResource(new File(WEBINF_DIR,"sun-jaxws.xml"))
        		;
    }
	
	@Inject 
	private RestService restService;
	@Inject
	private DocumentRepository xdsService;
	
	@Test
	public void verifyInjectedBeans(){
		Assert.assertNotNull(restService);
		Assert.assertNotNull(xdsService);
	}
	@Test
	public void assumeCorrectValidation(){
		// TODO submit document to services
	}

}
