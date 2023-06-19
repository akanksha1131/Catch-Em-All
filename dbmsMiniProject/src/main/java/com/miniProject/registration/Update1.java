package com.miniProject.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationServlet
 * 
 * 
    
 */
@WebServlet("/update1")
public class Update1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("name");
		String uemail2 = request.getParameter("email");
		String upwd = request.getParameter("pass");
		String umobile = request.getParameter("contact");
		String uemail = request.getParameter("oemail");
		RequestDispatcher dispatcher = null;
	
		Connection con = null;
		
		try {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/trail?useSSL=false", "root", "root");
		PreparedStatement pst = con.prepareStatement("UPDATE users SET uname=?, upwd=?, uemail=?, umobile=? WHERE uemail=?");
		pst.setString(1, uname);
		pst.setString(2, upwd);
		pst.setString(3, uemail2);
		pst.setString(4, umobile);
		pst.setString(5, uemail);
		int rowCount = pst.executeUpdate();
		dispatcher = request.getRequestDispatcher("updateUserInfo.jsp");
		
        
		if(rowCount > 0) {
		request.setAttribute("status", "success");
		} else {
		request.setAttribute("status", "failed");
		}
		dispatcher.forward(request, response);
		} catch(Exception e) {
		e.printStackTrace();
		} finally {
		try {
		con.close();
		} catch (SQLException e) {
		e.printStackTrace();
		}
		}
		}
}
