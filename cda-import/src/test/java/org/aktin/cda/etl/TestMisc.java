package org.aktin.cda.etl;

import java.time.ZoneId;

import org.junit.Assert;
import org.junit.Test;

public class TestMisc {

	/**
	 * Make sure that NPE is thrown when null is provided for zone id
	 */
	@Test
	public void noNullZoneIdParsing(){
		try{
			ZoneId.of(null);
			Assert.fail();
		}catch( NullPointerException e ){
			// ok
		}
	}
}
