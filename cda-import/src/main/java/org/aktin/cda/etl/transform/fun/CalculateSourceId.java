package org.aktin.cda.etl.transform.fun;

import org.aktin.dwh.Anonymizer;

import net.sf.saxon.om.StructuredQName;
import net.sf.saxon.value.SequenceType;

/** 
 * Calculates a document ID which can be used
 * to identify the document at a later time.
 * 
 * <p>
 * In other words, the primary key for an imported
 * CDA document.
 * </p>
 * 
 * <p>
 * It is used to remove previous data if the
 * same module is transmitted again for the
 * same encounter.
 * </p>
 * 
 * <p>
 * This ID should be unique for any
 * combination of patient, encounter and module.
 * </p>
 * 
 * 
 * @author R.W.Majeed
 *
 */
public class CalculateSourceId extends OneWayHashFunction{
	public CalculateSourceId(Anonymizer anonymizer) {
		super(anonymizer);
	}

	public static final StructuredQName QNAME = OneWayHashFunction.buildFunctionQName("import-hash");
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
