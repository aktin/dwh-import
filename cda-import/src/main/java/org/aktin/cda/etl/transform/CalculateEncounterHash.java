package org.aktin.cda.etl.transform;

import net.sf.saxon.expr.XPathContext;
import net.sf.saxon.lib.ExtensionFunctionCall;
import net.sf.saxon.lib.ExtensionFunctionDefinition;
import net.sf.saxon.om.Sequence;
import net.sf.saxon.om.StructuredQName;
import net.sf.saxon.trans.XPathException;
import net.sf.saxon.tree.iter.EmptyIterator;
import net.sf.saxon.value.SequenceType;
import net.sf.saxon.value.StringValue;

public class CalculateEncounterHash extends ExtensionFunctionDefinition{
	private static final SequenceType[] argTypes = new SequenceType[]{SequenceType.SINGLE_STRING};
	private static final String AKTIN_CDA_FUNCTIONS_NS = "http://aktin.org/cda/functions";
	private static final StructuredQName funcName = new StructuredQName("", AKTIN_CDA_FUNCTIONS_NS, "encounter-hash");

	@Override
	public StructuredQName getFunctionQName() {
		return funcName;
	}

	@Override
	public SequenceType[] getArgumentTypes() {
		return argTypes;
	}

	@Override
	public SequenceType getResultType(SequenceType[] suppliedArgumentTypes) {
		return SequenceType.SINGLE_STRING;
	}

	@Override
	public ExtensionFunctionCall makeCallExpression() {
		return new ExtensionFunctionCall() {
			
			@Override
			public Sequence call(XPathContext context, Sequence[] arguments) throws XPathException {
				// TODO Auto-generated method stub
				return new StringValue("TODO:encounter-hash");
			}
		};
	}

}
