package com.philips.upload;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.philips.textcompare.FileComparator;
import com.philips.textcompare.UploadBeanModel;

/**
 * Steven Reisman
 */

@WebServlet("/upload")
@MultipartConfig
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UploadServlet() {
		super();

	}

	/**
	 * Handles HTTP GET Requests for uploading File Data
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * Handles HTTP POST Requests for uploading File Data
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Set up the Dispatcher to send data to Analytics view in
		// "analysis.jsp"
		RequestDispatcher rd = request.getRequestDispatcher("/analysis.jsp");// .include(request,
																				// response);
		Part filePart = request.getPart("file");
		String fileName = filePart.getSubmittedFileName();
		InputStream fileContent = filePart.getInputStream();

		// Creation of new model bean for the file upload
		UploadBeanModel upload = new UploadBeanModel();
		StringBuilder s = new StringBuilder();

		// Iterate through the file upload to get text
		while (fileContent.available() != 0) {
			s.append((char) fileContent.read());

		}

		upload.setText(s.toString());
		response.getWriter().append(upload.getText());

		//Create new FileComparator object for analysis of the upload
		FileComparator fc = new FileComparator(upload);
		
		//Try to pass the HashMap along to analysis View
		try {
			request.setAttribute("letters", new ObjectMapper().writeValueAsString((fc.analyze())));

		} catch (Exception e) {
			
			System.out.println(e);
		}

		rd.forward(request, response);


	}

}
