package com.miniProject.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/q1")
public class q1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String uemail=request.getParameter("username");
		String upwd=request.getParameter("password");
		HttpSession session=request.getSession();
		RequestDispatcher dispatcher=null;
		 String selectedValue = request.getParameter("recommed");

		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/trail?useSSL=false","root","Tojashri&2003");
			PreparedStatement pst=con.prepareStatement("select * from test where id = '\" + selectedValue + \"'\"");
			
			ResultSet rs=pst.executeQuery();
			
			if (rs.next()) {
			      // If there is a match, do something
			      String column2Value = rs.getString("name");
			      response.getWriter().println("The selected value is " + selectedValue + " and the corresponding value in column2 is " + column2Value);
			      dispatcher=request.getRequestDispatcher("q2.jsp");
			    } else {
			      // If there is no match, do something else
			      response.getWriter().println("There is no matching record in the database for the selected value " + selectedValue);
			      dispatcher=request.getRequestDispatcher("index.jsp");
			    }
		
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	}


