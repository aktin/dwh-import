package org.aktin.cda;

/**
 * Prints validation errors and warnings to the standard error output
 *
 * @author R.W.Majeed
 *
 */
public class ValidationErrorPrinter implements ValidationErrorHandler {
	private String systemId;
	@Override
	public void warning(String message, Throwable cause) {
		System.err.println("Validation warning for "+systemId);
		if( cause != null ){
			cause.printStackTrace();
		}
	}

	@Override
	public void error(String message, Throwable cause) {
		System.err.println("Validation ERROR for "+systemId);
		if( cause != null ){
			cause.printStackTrace();
		}
	}
	public void setSystemId(String systemId){
		this.systemId = systemId;
	}
}
