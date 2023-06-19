
package com.miniProject.registration;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class qType1 extends HttpServlet {
    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String type1 = null;
            String normal = request.getParameter("Normal");
            String fire = request.getParameter("Fire");
            String water = request.getParameter("Water");
            String grass = request.getParameter("Grass");
            String electric = request.getParameter("Electric");
            String ice = request.getParameter("Ice");
            String fighting = request.getParameter("Fighting");
            String poison = request.getParameter("Poison");
            String ground = request.getParameter("Ground");
            String flying = request.getParameter("Flying");
            String psychic = request.getParameter("Psychic");
            String bug = request.getParameter("Bug");
            String rock = request.getParameter("Rock");
            String ghost = request.getParameter("Ghost");
            String dark = request.getParameter("Dark");
            String dragon = request.getParameter("Dragon");
            String steel = request.getParameter("Steel");
            String fairy = request.getParameter("Fairy");

            
            if ("Yes".equals(normal)) {
                type1 = "Normal";
            } 
            else if ("Yes".equals(fire)) {
                type1 = "Fire";
            } else if ("Yes".equals(water)) {
                type1 = "Water";
            } else if ("Yes".equals(grass)) {
                type1 = "Grass";
            } else if ("Yes".equals(electric)) {
                type1 = "Electric";
            } else if ("Yes".equals(ice)) {
                type1 = "Ice";
            } else if ("Yes".equals(fighting)) {
                type1 = "Fighting";
            } else if ("Yes".equals(poison)) {
                type1 = "Poison";
            } else if ("Yes".equals(ground)) {
                type1 = "Ground";
            } else if ("Yes".equals(flying)) {
                type1 = "Flying";
            } else if ("Yes".equals(psychic)) {
                type1 = "Psychic";
            } else if ("Yes".equals(bug)) {
                type1 = "Bug";
            } else if ("Yes".equals(rock)) {
                type1 = "Rock";
            } else if ("Yes".equals(ghost)) {
                type1 = "Ghost";
            } else if ("Yes".equals(dark)) {
                type1 = "Dark";
            } else if ("Yes".equals(dragon)) {
                type1 = "Dragon";
            } else if ("Yes".equals(steel)) {
                type1 = "Steel";
            } else  {
                type1 = "Fairy";
            }

            
            try {
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/trail", "root", "root");
                PreparedStatement ps = conn.prepareStatement("INSERT INTO answer (type1) VALUES (?)");
                ps.setString(1, type1);
                ps.executeUpdate();
                out.println("Answer saved successfully!");
            } catch (SQLException ex) {
                out.println("Error saving answer: " + ex.getMessage());
            }
        }
    }
}
