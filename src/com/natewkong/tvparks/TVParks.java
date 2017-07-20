package com.natewkong.tvparks;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.text.DecimalFormat;

/**
 * Servlet implementation class TVParks
 */
@WebServlet("/TVParks")
public class TVParks extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// JDBC driver name and database URL
   static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
   static final String DB_URL = "jdbc:mysql://localhost/park";

   //  Database credentials
   static final String USER = "root";
   static final String PASS = "nate";

    public TVParks() {
        super();
    }

	/**
	 * Serves a JSP showing the Park information from MySQL
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String city = "";
		String address = "";
		String amenities = "";
		int capacity = 0;
		double cost = 0;
		
		//parse information
		String park = request.getParameter("park");
		
		//create a connection to database
	    Connection conn = null;
	    Statement stmt = null;
	    try{
	      //Register JDBC driver
	      System.out.println("register driver");
	      Class.forName("com.mysql.jdbc.Driver");

	      //Open a connection
	      System.out.println("Connecting to database...");
	      conn = DriverManager.getConnection(DB_URL,USER,PASS);

	      //STEP 4: Execute a query
	      System.out.println("Creating statement...");
	      stmt = conn.createStatement();
	      String sql;
	      sql = "SELECT * FROM groupParks WHERE parkName='" + park + "'";
	      System.out.println(sql);
	      ResultSet rs = stmt.executeQuery(sql);

	      //Extract data from result set
	      while(rs.next()){
	         //Retrieve by column name
	         capacity  = rs.getInt("capacity");
	         cost = rs.getDouble("cost");
	         city = rs.getString("city");
	         address = rs.getString("address");
	         amenities = rs.getString("amenities");
	      }
	      
	      //Clean-up environment
	      System.out.println("close connection");
	      rs.close();
	      stmt.close();
	      conn.close();
	    }catch(SQLException se){
	      //Handle errors for JDBC
	      se.printStackTrace();
	    }catch(Exception e){
	      //Handle errors for Class.forName
	      e.printStackTrace();
	    }finally{
	      //finally block used to close resources
	      try{
	         if(stmt!=null)
	            stmt.close();
	      }catch(SQLException se2){
	      }// nothing we can do
	      try{
	         if(conn!=null)
	            conn.close();
	      }catch(SQLException se){
	         se.printStackTrace();
	      }//end finally try
	    }//end try
		
		//add info for logo and footer
		if(city.equals("Dublin")){

			request.setAttribute("link", "templates/dublin.html");
			request.setAttribute("footerLinks", "templates/footerDublin.html");
		}else if(city.equals("Pleasanton")){

			request.setAttribute("link", "templates/pleasanton.html");
			request.setAttribute("footerLinks", "templates/footerPleasanton.html");
		}else{
			request.setAttribute("link", "templates/sanRamon.html");
			request.setAttribute("footerLinks", "templates/footerSanRamon.html");
		}
		request.setAttribute("city",city);
		request.setAttribute("capacity",capacity);
		request.setAttribute("cost",costCurrancy(cost));
		request.setAttribute("address",address);
		request.setAttribute("amenities",addCommas(amenities));
		//Serve JSP template with park info
		request.getRequestDispatcher("parkPage.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	private String costCurrancy( double d){
		DecimalFormat df = new DecimalFormat("#.00");
		return "$ " + df.format(d);
	}
	
	private String addCommas( String str){
		return str.replaceAll("/", ", ");
	}

}
