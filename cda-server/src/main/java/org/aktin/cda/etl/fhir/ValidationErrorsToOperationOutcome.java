package org.aktin.cda.etl.fhir;

import org.aktin.cda.ValidationErrorHandler;
import org.aktin.cda.etl.fhir.SimplifiedOperationOutcome.IssueType;
import org.aktin.cda.etl.fhir.SimplifiedOperationOutcome.Severity;

public class ValidationErrorsToOperationOutcome implements ValidationErrorHandler{
	private SimplifiedOperationOutcome outcome;
	
	public ValidationErrorsToOperationOutcome(SimplifiedOperationOutcome outcome) {
		this.outcome = outcome;
	}
	@Override
	public void warning(String message, Throwable cause) {
		outcome.addIssue(Severity.warning, IssueType.informational, message);
	}

	@Override
	public void error(String message, Throwable cause) {
		outcome.addIssue(Severity.error, IssueType.exception, message);
	}
	@Override
	public void info(String message) {
		outcome.addIssue(Severity.information, IssueType.informational, message);
	}

}
