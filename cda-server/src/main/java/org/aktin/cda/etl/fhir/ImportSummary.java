package org.aktin.cda.etl.fhir;

import java.util.ArrayList;
import java.util.Date;
import java.util.Deque;
import java.util.LinkedList;
import java.util.List;

import javax.inject.Singleton;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import org.aktin.dwh.ImportStatistics;

@Singleton
@Path("stats") // TODO find appropriate place / path
@XmlAccessorType(XmlAccessType.NONE)
@XmlRootElement(name="import-statistics")
@XmlType(propOrder={"start","lastImport","lastFailure","importOkCount","importErrorCount","validationErrorCount","lastErrors"})
public class ImportSummary implements ImportStatistics{

	/** Timestamp since when the summary is logging
	 * (or when it was last cleared/deleted)
	 */
	protected long since;
	protected Long lastErrorTime;
	protected Long lastImportTime;
	// all fields are used by JAXB
	protected int maxNumStacktraces;
	protected int numValidationFailed;
	protected int numImportFailed;
	protected int numImportOk;

	private Deque<String> previousErrors;

//	private static class ThrowableAdapter extends XmlAdapter<String, Throwable>{
//
//		@Override
//		public Throwable unmarshal(String v) throws Exception {
//			throw new UnsupportedOperationException();
//		}
//
//		@Override
//		public String marshal(Throwable v) throws Exception {
//			StringWriter w = new StringWriter();
//			v.printStackTrace(new PrintWriter(w));
//			return w.toString();
//		}
//		
//	}
	public ImportSummary(){
		since = System.currentTimeMillis();
		previousErrors = new LinkedList<>();
		maxNumStacktraces = 10;
	}


	@DELETE
	@Override
	public void reset(){
		numImportFailed = 0;
		numValidationFailed = 0;
		numImportOk = 0;
		this.previousErrors.clear();
		this.since = System.currentTimeMillis();
		this.lastErrorTime = null;
		this.lastImportTime = null;
	}

	@Override
	public synchronized void addError(boolean valid, String error){
		if( valid == false ){
			numValidationFailed ++;
		}else{
			numImportFailed ++;
		}
		if( previousErrors.size() >= maxNumStacktraces ){
			previousErrors.removeFirst();
		}
		previousErrors.addLast(error);
		this.lastErrorTime = System.currentTimeMillis();
	}

	@Override
	public void addSuccess(){
		this.lastImportTime = System.currentTimeMillis();
		this.numImportOk ++;
	}

	@GET
	public ImportSummary get(){
		return this;
	}

	@Override
	public long getStartTime() {
		return since;
	}
	@XmlElement
	public Date getStart(){
		return new Date(getStartTime());
	}


	@Override
	public Long getLastImportTime() {
		return lastImportTime;
	}

	private static Date dateOrNull(Long ms){
		if( ms == null ){
			return null;
		}else{
			return new Date(ms);
		}
	}
	@XmlElement(name="last-import")
	public Date getLastImport(){
		return dateOrNull(getLastImportTime());
	}


	@Override
	public Long getLastFailureTime() {
		return lastErrorTime;
	}

	@XmlElement(name="last-failure")
	public Date getLastFailure(){
		return dateOrNull(getLastFailureTime());
	}

	@Override
	@XmlElement(name="validation-errors")
	public int getValidationErrorCount() {
		return numValidationFailed;
	}


	@Override
	@XmlElement(name="import-errors")
	public int getImportErrorCount() {
		return numImportFailed;
	}


	@Override
	@XmlElement(name="imports")
	public int getImportOkCount() {
		return numImportOk;
	}


	@Override
	@XmlElementWrapper(name="last-errors")
	@XmlElement(name="error")
	public List<String> getLastErrors() {
		List<String> l = new ArrayList<>(previousErrors);
		return l;
	}
}
