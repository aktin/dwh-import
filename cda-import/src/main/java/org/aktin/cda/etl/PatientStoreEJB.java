package org.aktin.cda.etl;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.annotation.Resource;
import javax.sql.DataSource;

import de.sekmi.histream.i2b2.PostgresPatientStore;

public class PatientStoreEJB extends PostgresPatientStore{

	// TODO refactor PostgresPatientStore to allow EJB use
	public PatientStoreEJB(DataSource ds, Map<String, String> configuration) throws SQLException {
		super(ds, configuration);
		// TODO Auto-generated constructor stub
	}
	@PostConstruct
	public void open(){
		// TODO open database
	}
	@PreDestroy
	@Override
	public void close(){
		try {
			super.close();
		} catch (IOException e) {
			// TODO log warning
		}
	}

}
