package org.aktin.cda;

public class SuppressValidationErrors implements ValidationErrorHandler{
	public static final SuppressValidationErrors staticInstance = new SuppressValidationErrors();

	private SuppressValidationErrors() {
		// use public staticInstance
	}
	@Override
	public void warning(String message, Throwable cause) {
	}
	@Override
	public void error(String message, Throwable cause) {
	}
}