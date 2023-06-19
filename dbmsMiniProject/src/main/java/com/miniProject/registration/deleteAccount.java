package com.miniProject.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/delete")
public class deleteAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uemail=request.getParameter("email");
		String upwd=request.getParameter("pass");
		RequestDispatcher dispatcher = null;
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/trail?useSSL=false", "root", "root");
			PreparedStatement pst = con.prepareStatement("DELETE FROM users WHERE uemail=? AND upwd=?");
			pst.setString(1, uemail);
			pst.setString(2, upwd);
			int rowCount = pst.executeUpdate();

			// Update the ids in the database
			pst = con.prepareStatement("SELECT id FROM users ORDER BY id ASC");
			ResultSet rs = pst.executeQuery();
			int newId = 1;
			while (rs.next()) {
			    int oldId = rs.getInt("id");
			    if (oldId != newId) {
			        PreparedStatement updatePst = con.prepareStatement("UPDATE users SET id=? WHERE id=?");
			        updatePst.setInt(1, newId);
			        updatePst.setInt(2, oldId);
			        updatePst.executeUpdate();
			    }
			    newId++;
			}
			rs.close();
			pst.close();

			dispatcher = request.getRequestDispatcher("login.jsp");
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
