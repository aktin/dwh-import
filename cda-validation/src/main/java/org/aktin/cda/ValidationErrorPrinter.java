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
		System.err.print("Validation WARNING for "+systemId+": ");
		System.err.println(message);
		if( cause != null ){
			cause.printStackTrace();
		}
	}

	@Override
	public void error(String message, Throwable cause) {
		System.err.print("Validation ERROR for "+systemId+": ");
		System.err.println(message);
		if( cause != null ){
			cause.printStackTrace();
		}
	}
	public void setSystemId(String systemId){
		this.systemId = systemId;
	}

	@Override
	public void info(String message) {
		System.err.print("Validation INFO for "+systemId+": ");
		System.err.println(message);
	}
}
