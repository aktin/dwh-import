package org.aktin.cda;

import java.util.List;
import java.util.function.Consumer;

import javax.xml.xpath.XPathExpressionException;

import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/**
 * Result of a CDA validation operation.
 * 
 * @author R.W.Majeed
 *
 */
public class ValidationResult {
	private Document result;
	private NodeList failedAsserts;
	
	ValidationResult(Validator validator, Document svrlSchematronOutput) throws XPathExpressionException{
		this.result = svrlSchematronOutput;
		failedAsserts = validator.selectFailedAsserts(result);
	}
	
	/**
	 * Determine whether the document is valid.
	 * This method checks whether the resulting svrl output contains no failed-assert elements.
	 * @return {@code true} for documents without errors, {@code false} if at least one failed-assert was found. 
	 */
	public boolean isValid(){
		return failedAsserts.getLength() == 0;
	}
	
	/**
	 * Get the number of validation errors
	 * @return error count
	 */
	public int getErrorCount(){
		return failedAsserts.getLength();
	}
	/**
	 * Fills the provided list with error descriptions
	 * 
	 * @param list list which will contain error descriptions after the method returns
	 */
	public final void getErrors(List<String> list){
		forEachErrorMessage(list::add);
	}
	
	/**
	 * Process each error message.
	 * @param action action
	 */
	public void forEachErrorMessage(Consumer<String> action){
		for( int i=0; i<failedAsserts.getLength(); i++ ){
			Node failedAssert = failedAsserts.item(i);
			Node text = failedAssert.getFirstChild();
			if( text != null && text.getLocalName().equals("text") && text.getNamespaceURI().equals(CDAConstants.SVRL_NS_URI) ){
				action.accept(text.getTextContent());
			}
		}		
	}
}