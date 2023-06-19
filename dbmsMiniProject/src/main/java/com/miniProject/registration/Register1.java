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
@WebServlet("/register1")
public class Register1 extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	System.out.println("in /register");
        String uname = request.getParameter("name");
        String uemail = request.getParameter("email");
        String upwd = request.getParameter("pass");
        String re_upwd = request.getParameter("re_pass");
        String umobile = request.getParameter("contact");
        RequestDispatcher dispatcher = null;

        if (upwd.length() < 8) {
            dispatcher = request.getRequestDispatcher("registration.jsp");
            request.setAttribute("status", "Password should have a minimum of 8 characters");
            dispatcher.forward(request, response);
            return;
        }

        
        if (uname.isEmpty() || uemail.isEmpty() || upwd.isEmpty() || re_upwd.isEmpty() || umobile.isEmpty()) {
            dispatcher = request.getRequestDispatcher("registration.jsp");
            request.setAttribute("status", "Please fill all the fields");
            dispatcher.forward(request, response);
            return;
        }

        if (!upwd.equals(re_upwd)) {
            dispatcher = request.getRequestDispatcher("registration.jsp");
            request.setAttribute("status", "Password and Confirm Password do not match");
            dispatcher.forward(request, response);
            return;
        }

        if (!umobile.matches("\\d{10}")) {
            dispatcher = request.getRequestDispatcher("registration.jsp");
            request.setAttribute("status", "Mobile number should be a 10-digit number");
            dispatcher.forward(request, response);
            return;
        }

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/trail?useSSL=false", "root",
                    "root");
            PreparedStatement pst = con.prepareStatement("select * from users where uemail=?");
            pst.setString(1, uemail);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                dispatcher = request.getRequestDispatcher("registration.jsp");
                request.setAttribute("status", "User already exists with this Email Id");
                dispatcher.forward(request, response);
                return;
            } else {
            	System.out.println("********in /register tring to insert");
                pst = con.prepareStatement("insert into users(uname,upwd,uemail,umobile) values(?,?,?,?)");
                pst.setString(1, uname);
                pst.setString(2, upwd);
                pst.setString(3, uemail);
                pst.setString(4, umobile);
                int rowCount = pst.executeUpdate();
                dispatcher = request.getRequestDispatcher("registration.jsp");
                if (rowCount > 0) {
                    request.setAttribute("status", "Registration Successful");
                } else {
                    request.setAttribute("status", "Registration Failed");
                }
                dispatcher.forward(request, response);
            }
            rs.close();
            pst.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
