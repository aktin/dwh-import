package org.aktin.cda.etl.demo;

import org.aktin.dwh.ImportSummary;

public class NoOpStatistics  implements ImportSummary{

	@Override
	public void reset() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public long getStartTime() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Long getLastWriteTime() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Long getLastRejectTime() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getImportedCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getUpdatedCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getInvalidCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getFailedCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Iterable<String> getLastErrors() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public void addCreated(String templateId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void addRejected(String templateId, boolean valid, String cause) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void addUpdated(String templateId) {
		// TODO Auto-generated method stub
		
	}
}
