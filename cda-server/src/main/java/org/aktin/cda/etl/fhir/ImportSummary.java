package org.aktin.cda.etl.fhir;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Date;
import java.util.Deque;
import java.util.LinkedList;

import javax.inject.Singleton;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.adapters.XmlAdapter;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;


@Singleton
@Path("status") // TODO find appropriate place / path
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name="ImportSummary")
public class ImportSummary {

	/** Timestamp since when the summary is logging
	 * (or when it was last cleared/deleted)
	 */
	protected Date since;
	// all fields are used by JAXB
	protected int maxNumStacktraces;
	protected int numValidationFailed;
	protected int numImportFailed;
	protected int numImportOk;
	protected int numTotal;

	@XmlJavaTypeAdapter(ThrowableAdapter.class)
	private Deque<Throwable> previousErrors;

	private static class ThrowableAdapter extends XmlAdapter<String, Throwable>{

		@Override
		public Throwable unmarshal(String v) throws Exception {
			throw new UnsupportedOperationException();
		}

		@Override
		public String marshal(Throwable v) throws Exception {
			StringWriter w = new StringWriter();
			v.printStackTrace(new PrintWriter(w));
			return w.toString();
		}
		
	}
	public ImportSummary(){
		since = new Date();
		previousErrors = new LinkedList<>();
		maxNumStacktraces = 10;
	}


	@DELETE
	public void clear(){
		numImportFailed = 0;
		numValidationFailed = 0;
		numTotal = 0;
		numImportOk = 0;
		this.previousErrors.clear();
		this.since = new Date();
	}

	public synchronized void addError(boolean valid, Throwable error){
		if( valid == false ){
			numValidationFailed ++;
		}else{
			numImportFailed ++;
		}
		if( previousErrors.size() >= maxNumStacktraces ){
			previousErrors.removeFirst();
		}
		previousErrors.addLast(error);
	}
	public void addSuccess(){
		this.numImportOk ++;
	}

	@GET
	public ImportSummary get(){
		return this;
	}
}
