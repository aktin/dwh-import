package org.aktin.cda.etl.transform.fun;

import javax.inject.Singleton;

import org.aktin.dwh.Anonymizer;

// technically, singleton is not needed
@Singleton
public class OneWayAnonymizer implements Anonymizer {

	@Override
	public String calculatePatientPseudonym(String root, String extension) {
		return OneWayHashFunction.calculateHash(root, extension);
	}

	@Override
	public String calculateEncounterPseudonym(String root, String extension) {
		return OneWayHashFunction.calculateHash(root, extension);
	}

}
