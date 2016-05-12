package org.aktin.cda.etl.transform.fun;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.DigestException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;
import java.util.logging.Logger;

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
	private static final Logger log = Logger.getLogger(OneWayHashFunction.class.getName());
	public static final String AKTIN_CDA_FUNCTIONS_NS = "http://aktin.org/cda/functions";
	
	protected static final StructuredQName buildFunctionQName(String funcName){
		return new StructuredQName("", AKTIN_CDA_FUNCTIONS_NS, funcName);
	}
	
	@Override
	public final SequenceType getResultType(SequenceType[] suppliedArgumentTypes) {
		return SequenceType.SINGLE_STRING;
	}
	
	/**
	 * Calculate a one way hash function for the given input.
	 * The algorithm is as follows:
	 * <ol>
	 *  <li>Concatenate the arguments with a slash (/) as separator.</li>
	 *  <li>Encode the input arguments with UTF-8 encoding
	 *  <li>Generate a 160bit SHA-1 checksum</li>
	 *  <li>Produce bas64 encoding with url-safe alphabet</li>
	 * </ol>
	 * The resulting string length will be less than 30 characters.
	 * 
	 * @param strings input
	 * @return string hash
	 * @throws DigestException 
	 */
	public String calculateHash(String ...strings) throws DigestException{
		MessageDigest digest;
		try {
			digest = MessageDigest.getInstance("SHA-1");
		} catch (NoSuchAlgorithmException e) {
			// should not happen. SHA-1 is guaranteed to be included in the JRE
			throw new DigestException(e);
		}
		// join arguments
		String composite = String.join("/", strings);
		// logging
		log.info("Calculating for "+getFunctionQName().getDisplayName()+": "+composite);
		// encode to bytes
		ByteBuffer input = Charset.forName("UTF-8").encode(composite);
		// calculate digest and encode with base64
		digest.update(input);
		return Base64.getUrlEncoder().encodeToString(digest.digest());
	}

	/**
	 * Implements a call to the hash function with variable arguments.
	 * For the algorithm, see {@link OneWayHashFunction#calculateHash(String...)
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
			try {
				return new StringValue(calculateHash(strings));
			} catch (DigestException e) {
				throw new XPathException("Unable to calculate hash", e);
			}
		}
	}

	@Override
	public ExtensionFunctionCall makeCallExpression() {
		return new CalculateHashCall();
	}

}
