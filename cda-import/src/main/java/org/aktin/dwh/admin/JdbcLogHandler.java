package org.aktin.dwh.admin;

import java.util.logging.Handler;
import java.util.logging.LogRecord;

/**
 * Temporary for testing log handlers. 
 * TODO Remove this, when dwh-admin is included in the ear.
 * @author R.W.Majeed
 *
 */
public class JdbcLogHandler extends Handler {

	@Override
	public void publish(LogRecord record) {
		System.err.println("JdbcLogHandler:publish:"+record.getMillis()+":"+record.getMessage());
	}

	@Override
	public void flush() {
		System.err.println("JdbcLogHandler:flush");
	}

	@Override
	public void close() throws SecurityException {
		System.err.println("JdbcLogHandler:close");
	}

}
