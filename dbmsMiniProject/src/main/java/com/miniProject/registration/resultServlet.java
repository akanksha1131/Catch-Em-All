package com.miniProject.registration;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




@WebServlet("/resultServlet")
public class resultServlet extends HttpServlet {
	
	

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
       
        String type = request.getParameter("type");
        String name = request.getParameter("name");
        HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
        //out.println(""+name);

        // Create arrays to store Pokemon data
        String[] pokemonIds = new String[50];
        String[] pokemonNames = new String[50];
        String[] pokemonType1 = new String[50];
        String[] pokemonType2 = new String[50];
        String[] pokemonAbility1 = new String[50];
        String[] pokemonAbility2 = new String[50];
        int i = 0;

        try {
        	Class.forName("com.mysql.jdbc.Driver");

            // Get a Connection object using the DriverManager
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/trail", "root", "root");

            // Create a PreparedStatement object
            PreparedStatement pstmt = con.prepareStatement("select * from pokemon WHERE id = ?");
            pstmt.setString(1, name);
            ResultSet rs = pstmt.executeQuery();

            // Loop through the result set and store data in arrays
            while (rs.next()) {
            	session.setAttribute("name", rs.getString("name"));
                pokemonIds[i] = rs.getString("id");
                pokemonNames[i] = rs.getString("name");
                //out.println("name: " + pokemonNames[i-1] );
                i++;
                
            }

            // Clean up resources
            rs.close();
            pstmt.close();
            con.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        
        
        try {
        	Class.forName("com.mysql.jdbc.Driver");

            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/trail", "root", "root");
            if (conn != null) {
                out.print("Connected to the database");
            }
        } catch (SQLException | ClassNotFoundException e) {
            out.print("Error connecting to the database: " + e.getMessage());
        }
        
       

        // Generate the HTML response using the data from the arrays
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Your Pokemon is:</title>");
        out.println("<style>");
        out.println("table, th, td { border: 1px solid black; border-collapse: collapse; padding: 5px; }");
        out.println("</style>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>Pokemon is: </h1>");
        out.println("<table>");
        out.println("<tr><th>ID</th><th>Name</th></tr>");
        for (int j = 0; j < i; j++) {
            out.println("<tr>");
            out.println("<td>" + pokemonIds[j] + "</td>");
            out.println("<td>" + pokemonNames[j] + "</td>");
            //out.println("<td>" + pokemonTypes[j] + "</td>");
            //out.println("<td>" + pokemonAbilities[j] + "</td>");
            //out.println("<td>" + pokemonStats[j] + "</td>");
            out.println("</tr>");
        }
        out.println("</table>");
        out.println("</body>");
        out.println("</html>");
    }
}
