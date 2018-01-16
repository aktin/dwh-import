package org.aktin.cda.etl.transform.fun;

import org.aktin.dwh.Anonymizer;

import net.sf.saxon.expr.XPathContext;
import net.sf.saxon.lib.ExtensionFunctionCall;
import net.sf.saxon.lib.ExtensionFunctionDefinition;
import net.sf.saxon.om.Sequence;
import net.sf.saxon.om.StructuredQName;
import net.sf.saxon.trans.XPathException;
import net.sf.saxon.value.SequenceType;
import net.sf.saxon.value.StringValue;

/**
 * Provides one way hash function for XSLT extension functions.
 * 
 * @author R.W.Majeed
 *
 */
public abstract class OneWayHashFunction extends ExtensionFunctionDefinition {
//	private static final Logger log = Logger.getLogger(OneWayHashFunction.class.getName());
	public static final String AKTIN_CDA_FUNCTIONS_NS = "http://aktin.org/cda/functions";
	private Anonymizer anonymizer;

	public OneWayHashFunction(Anonymizer anonymizer){
		this.anonymizer = anonymizer;
	}
	protected static final StructuredQName buildFunctionQName(String funcName){
		return new StructuredQName("", AKTIN_CDA_FUNCTIONS_NS, funcName);
	}
	
	@Override
	public final SequenceType getResultType(SequenceType[] suppliedArgumentTypes) {
		return SequenceType.SINGLE_STRING;
	}
	

	/**
	 * Implements a call to the hash function with variable arguments.
	 * The algorithm is delegated to the implementation of {@link Anonymizer}
	 *
	 * @author R.W.Majeed
	 *
	 */
	protected class CalculateHashCall extends ExtensionFunctionCall{
		
		@Override
		public Sequence call(XPathContext context, Sequence[] arguments) throws XPathException {
			String[] strings = new String[arguments.length];
			for( int i=0; i<arguments.length; i++ ){
				strings[i] = arguments[i].head().getStringValue();
			}
			if( arguments.length == 0 ){
				throw new XPathException("Need at least one argument for hash calculation");
			}
			return new StringValue(anonymizer.calculateAbstractPseudonym(strings));
		}
	}

	@Override
	public ExtensionFunctionCall makeCallExpression() {
		return new CalculateHashCall();
	}

}
