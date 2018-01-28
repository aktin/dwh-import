package org.aktin.cda.etl.fhir.patient;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.function.Function;

public class ResourceTokenFilter extends FilterInputStream{

	private Charset charset;
	private Function<String, String> filter;
	byte[] tokenPrefix;
	byte[] tokenSuffix;
	private boolean inToken;
	/** maximum length of token */
	private int maxLength;
	ByteBuffer token;
	/** output buffer */
	private ByteBuffer output;

	@Override
	public int read(byte[] b) throws IOException {
		// TODO Auto-generated method stub
		return super.read(b);
	}

	@Override
	public int read() throws IOException {
		if( output.hasRemaining() ){
			return output.get();
		}else{
			// no buffered output
			// read ahead
			int b = super.read();
			if( b == -1 ){
				// end of stream
				if( token.position() == 0 ){
					// nothing in the token buffer, pass the end-of-stream
					return -1;
				}else{
					// put anything from the token buffer into the output buffer
					token.flip();
					// TODO flip/compact output???
					output.put(token);
					// everything should have been copied
					if( token.hasRemaining() ){
						throw new IllegalStateException("ByteBuffer should be empty after copy");
					}
					 
				}
			}else{
				// normal byte received
				if( token.position() == 0 ){
					if( b == tokenPrefix[0] ){
						token.put((byte)b);
					}else{
						// no match, just pass the byte
						return b;
					}
				}else{
					// within a token sequence
					if( token.position() < tokenPrefix.length ){
						// reading prefix
						if( b == tokenPrefix[token.position()] ){
							// still a match
							token.put((byte)b);
						}else{
							// match failed, put the token bufer to 
						}
					}else if( token.position() > maxLength ){
						// too long for token, stop token processing
						abortTokenProcessing();
					}else{
						// we are done, if end of token buffer matches tokenSuffix
					}
				}
			}
			
		}
		return super.read();
	}

	private void abortTokenProcessing(){
		// TODO
	}

	protected ResourceTokenFilter(InputStream in, Charset charset, String prefix, String suffix, Function<String,String> filter) {
		super(in);
		this.charset = charset;
		this.filter = filter;
		tokenPrefix = charset.encode(prefix).array();
		tokenSuffix = charset.encode(suffix).array();
	}
	
}
