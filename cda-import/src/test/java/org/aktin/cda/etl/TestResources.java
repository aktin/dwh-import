package org.aktin.cda.etl;

import java.io.File;

import org.junit.Assert;
import org.junit.Test;

public class TestResources {

	@Test
	public void verifyResources(){
		File f = new File("src/main/webapp/WEB-INF/web.xml");
		Assert.assertTrue(f.exists());
	}
}
