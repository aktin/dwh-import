package org.aktin.cda.etl.xds;

import org.aktin.cda.ValidationErrorHandler;

import oasis.names.tc.ebxml_regrep.xsd.rs._3.RegistryError;
import oasis.names.tc.ebxml_regrep.xsd.rs._3.RegistryErrorList;

public class ValidationErrorsToRegistryError implements ValidationErrorHandler{
	private RegistryErrorList rel;

	public ValidationErrorsToRegistryError(RegistryErrorList rel) {
		this.rel = rel;
	}
	@Override
	public void warning(String message, Throwable cause) {
		RegistryError e = new RegistryError();
		e.setSeverity(XDSConstants.SEVERITY_WARNING);
		e.setCodeContext(message); // free error message
		e.setErrorCode(XDSConstants.ERR_DOC_INVALID_CONTENT);
		rel.getRegistryError().add(e);
	}

	@Override
	public void error(String message, Throwable cause) {
		RegistryError e = new RegistryError();
		e.setSeverity(XDSConstants.SEVERITY_ERROR);
		e.setCodeContext(message); // free error message
		e.setErrorCode(XDSConstants.ERR_DOC_INVALID_CONTENT);
		rel.getRegistryError().add(e);
	}
	@Override
	public void info(String message) {
		RegistryError e = new RegistryError();
		e.setSeverity(XDSConstants.SEVERITY_WARNING);
		e.setCodeContext(message); // free error message
		e.setErrorCode(XDSConstants.ERR_DOC_INVALID_CONTENT);
		rel.getRegistryError().add(e);
	}

}
