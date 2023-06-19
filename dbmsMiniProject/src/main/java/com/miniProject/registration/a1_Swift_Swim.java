package com.miniProject.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class a1_Swift_Swim
 */
@WebServlet("/a1_Swift_Swim")
public class a1_Swift_Swim extends HttpServlet {
private static final long serialVersionUID = 1L;
    

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    	    try {
    	        Class.forName("com.mysql.jdbc.Driver");
    	        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/trail?useSSL=false", "root", "root");
    	        
    	        // Update the row with id=1
    	        PreparedStatement updateStmt = con.prepareStatement("UPDATE answer SET ability1=? WHERE id=1");
    	        updateStmt.setString(1, "Swift Swim");
    	        int updateCount = updateStmt.executeUpdate();
    	        updateStmt.close();
    	        con.close();
    	        
    	        // Forward the request to a new page
    	        RequestDispatcher dispatcher = request.getRequestDispatcher("a2_1.jsp");
    	       
    	        dispatcher.forward(request, response);
    	        
    	    } catch (Exception e) {
    	        e.printStackTrace();
    	    }
    	}

    }

