package com.natewkong.tvparks;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TVParks
 */
@WebServlet("/TVParks")
public class TVParks extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public TVParks() {
        super();
    }

	/**
	 * Serves a JSP showing the Park information from MySQL
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//parse information
		
		//create a connection to database
		
		//get park information
		
		
		//add new info to request
		
		
		//Serve JSP template with park info
		request.getRequestDispatcher("parkPage.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
