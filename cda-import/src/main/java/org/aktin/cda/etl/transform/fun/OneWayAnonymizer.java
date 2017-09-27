package org.aktin.cda.etl.transform.fun;

import org.aktin.dwh.Anonymizer;

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
