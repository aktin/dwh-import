package org.aktin.cda.etl;

import java.io.IOException;
import java.io.UncheckedIOException;
import java.sql.SQLException;

import javax.annotation.PreDestroy;
import javax.inject.Inject;
import javax.inject.Singleton;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import org.aktin.Preferences;
import org.aktin.dwh.PreferenceKey;

import de.sekmi.histream.i2b2.PostgresVisitStore;


@Singleton
public class VisitStoreEJB extends PostgresVisitStore{

	@Inject
	public VisitStoreEJB(Preferences prefs) throws SQLException, NamingException {
		// locate data source
		InitialContext ctx = new InitialContext();
		DataSource ds = (DataSource)ctx.lookup(prefs.get(PreferenceKey.i2b2DatasourceCRC));
		this.open(ds.getConnection(), prefs.get(PreferenceKey.i2b2Project));
	}

	public VisitStoreEJB(DataSource ds, String projectId) throws SQLException{
		open(ds.getConnection(), projectId);
	}
	
	@PreDestroy
	@Override
	public void close(){
		try {
			super.close();
		} catch (IOException e) {
			throw new UncheckedIOException(e);
		}
	}

}
