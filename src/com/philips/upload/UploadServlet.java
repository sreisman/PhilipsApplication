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
 * Servlet implementation class UploadServlet
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
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		RequestDispatcher rd = request.getRequestDispatcher("/analysis.jsp");//.include(request, response);
		String filename = request.getParameter("filename");
		Part filePart = request.getPart("file");
		String fileName = filePart.getSubmittedFileName();
		InputStream fileContent = filePart.getInputStream();
		//Creation of new model bean for the file upload
		UploadBeanModel upload = new UploadBeanModel();
		StringBuilder s = new StringBuilder();
		
		while(fileContent.available()!=0)
		{
			s.append((char)fileContent.read());
			//response.getWriter().append((char) fileContent.read());
			
		}
		
		upload.setText(s.toString());
		//response.getWriter().append(filename);
		response.getWriter().append(upload.getText());
		FileComparator fc = new FileComparator(upload);
		try{
		request.setAttribute("letters", new ObjectMapper().writeValueAsString((fc.analyze())));
		
		}catch (Exception e)
		{
			String ss = "{'one': 1, 'two': 2}";
			request.setAttribute("letters", ss);
			rd.forward(request, response);
			System.out.println(e);
		}
		
		rd.forward(request, response);
		//response.getWriter().append(fc.analyze());
		//response.getWriter().append("some text");
		
	}

}
