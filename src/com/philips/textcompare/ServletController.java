package com.philips.textcompare;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 
 * @author Steven Reisman
 *
 */

@WebServlet("/TextComparison")
public class ServletController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ServletController() {
        super();
    }

    /**
     * Accepts HTTP GET requests to application root and renders index page "index.jsp"
     */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/index.jsp").include(request, response);
	}

	/**
	 * Accepts HTTP POST Requests to application root and renders the index page "index.jsp"
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
