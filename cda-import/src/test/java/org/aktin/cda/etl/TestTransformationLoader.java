package org.aktin.cda.etl;

import org.aktin.cda.etl.transform.Transformation;
import org.aktin.cda.etl.transform.TransformationFactory;
import org.junit.Assert;
import org.junit.Test;

public class TestTransformationLoader {

	@Test
	public void verifyTransformVariables() throws Exception{
		TransformationFactory f = new TransformationFactory();
		f.setAnonymizer(new ConcatAnonymizer());
		//XMLStreamReader xsr = inputFactory.createXMLStreamReader(getClass().getResourceAsStream("/cda-eav.xsl"));
//		InputSource input = new InputSource(getClass().getResourceAsStream("/cda-eav.xsl"));
		Transformation t = f.getTransformation("...", "ClinicalDocument", "1.2.276.0.76.10.1019");
		Assert.assertNotNull(t);
		System.out.println("template="+t.getTemplateId());
		System.out.println("module="+t.getModuleId());

	}
}
