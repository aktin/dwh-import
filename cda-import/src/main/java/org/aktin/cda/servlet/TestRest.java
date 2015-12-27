package org.aktin.cda.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.aktin.cda.CDAProcessor;
import org.w3c.dom.Document;

public class TestRest extends HttpServlet implements CDAProcessor{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//private @EJB ValidatorBean validator;
	
	@Override
	public void process(String patientId, String encounterId, String documentId, Document document) {
		// TODO Auto-generated method stub
		
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getInputStream().close();
		PrintWriter writer = resp.getWriter();
		writer.write("Hello World from Servlet");
		//writer.write("Validator="+validator);
		writer.close();
	}

}
