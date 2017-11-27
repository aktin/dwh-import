package org.aktin.cda.etl;

import org.aktin.dwh.Anonymizer;

/**
 * Anonymizer for testing. Concatenates the source parts to
 * produce a pseudonym string which should not be used for
 * production.
 * @author R.W.Majeed
 *
 */
public class ConcatAnonymizer implements Anonymizer {

	@Override
	public String calculateAbstractPseudonym(String... parts) {
		return String.join("/", parts);
	}

}
