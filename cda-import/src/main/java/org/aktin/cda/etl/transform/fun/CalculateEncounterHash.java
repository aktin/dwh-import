package org.aktin.cda.etl.transform.fun;

import org.aktin.dwh.Anonymizer;

import net.sf.saxon.om.StructuredQName;
import net.sf.saxon.value.SequenceType;

public class CalculateEncounterHash extends OneWayHashFunction{
	public CalculateEncounterHash(Anonymizer anonymizer) {
		super(anonymizer);
	}

	public static final StructuredQName QNAME = OneWayHashFunction.buildFunctionQName("encounter-hash");
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
