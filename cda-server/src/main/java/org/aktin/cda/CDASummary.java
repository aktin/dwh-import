package org.aktin.cda;

import java.util.Date;

public interface CDASummary {
	public String getDocumentId();
	public Date getLastModified();
	public Date getCreated();
	public String getVersion();
}
