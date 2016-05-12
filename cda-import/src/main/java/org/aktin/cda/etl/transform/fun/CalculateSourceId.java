package org.aktin.cda.etl.transform.fun;

import net.sf.saxon.om.StructuredQName;
import net.sf.saxon.value.SequenceType;

/** 
 * Calculates a document ID which can be used
 * to identify the document at a later time.
 * 
 * The source id should be unique for each
 * combination of patient, encounter and module.
 * 
 * It is used to remove previous data if the
 * same module is transmitted again for the
 * same encounter.
 * 
 * @author R.W.Majeed
 *
 */
public class CalculateSourceId extends OneWayHashFunction{
	public static final StructuredQName QNAME = OneWayHashFunction.buildFunctionQName("module-hash");
	protected static final SequenceType[] FIVE_STRINGS = new SequenceType[]{SequenceType.SINGLE_STRING,SequenceType.SINGLE_STRING,SequenceType.SINGLE_STRING,SequenceType.SINGLE_STRING,SequenceType.SINGLE_STRING};
	
	@Override
	public StructuredQName getFunctionQName() {
		return QNAME;
	}

	@Override
	public SequenceType[] getArgumentTypes() {
		return FIVE_STRINGS;
	}

}
