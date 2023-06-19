package com.miniProject.registration;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Type1")
public class Type1 extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String pType1 = request.getParameter("selectedOption");

        // Do something with the selected option
        System.out.println("Type 1: " + pType1);

        // Forward the request to another page
        request.getRequestDispatcher("Type2.jsp").forward(request, response);
    }

}

