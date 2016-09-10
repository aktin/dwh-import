package org.aktin.cda;

public interface ValidationErrorHandler {

	void warning(String message, Throwable cause);
	void error(String message, Throwable cause);

}
