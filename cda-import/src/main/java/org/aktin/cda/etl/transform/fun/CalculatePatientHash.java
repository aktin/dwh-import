package org.aktin.cda.etl.transform.fun;

import net.sf.saxon.om.StructuredQName;
import net.sf.saxon.value.SequenceType;

public class CalculatePatientHash extends OneWayHashFunction{
	public static final StructuredQName QNAME = OneWayHashFunction.buildFunctionQName("patient-hash");
	protected static final SequenceType[] TWO_STRINGS = new SequenceType[]{SequenceType.SINGLE_STRING,SequenceType.SINGLE_STRING};
	
	@Override
	public StructuredQName getFunctionQName() {
		return QNAME;
	}

	@Override
	public SequenceType[] getArgumentTypes() {
		return TWO_STRINGS;
	}

}
