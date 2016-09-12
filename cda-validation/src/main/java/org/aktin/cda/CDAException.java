package org.aktin.cda;

public class CDAException extends Exception {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	
	public CDAException(String message, Throwable cause){
		super(message,cause);
	}
	
	public CDAException(String message){
		super(message);
	}

	protected CDAException(){
	}
}
