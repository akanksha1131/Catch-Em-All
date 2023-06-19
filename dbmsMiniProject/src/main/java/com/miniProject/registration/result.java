package com.miniProject.registration;

import java.io.IOException;
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

/**
 * Servlet implementation class e1_2
 */
@WebServlet("/result")
public class result extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/trail?useSSL=false", "root", "root");

            // Retrieve all attributes from the answer table where id=1
            PreparedStatement selectStmt = con.prepareStatement(
                    "SELECT type1, type2, ability1, ability2, evolutionStage FROM answer WHERE id=1");
            ResultSet rs = selectStmt.executeQuery();
            String type1 = null, type2 = null, ability1 = null, ability2 = null, evolutionStage = null;
            if (rs.next()) {
                type1 = rs.getString("type1");
                type2 = rs.getString("type2");
                ability1 = rs.getString("ability1");
                ability2 = rs.getString("ability2");
                evolutionStage = rs.getString("evolutionStage");
            }
            rs.close();
            selectStmt.close();

            // Retrieve the pname from the Pokemon table by joining it with the Type1, Type2, Ability1, Ability2, and EvolutionT tables
            PreparedStatement joinStmt = con.prepareStatement(
                    "SELECT p.name AS pname FROM Pokemon p "
                    + "JOIN Type1 t1 ON p.type1id=t1.Type1id "
                    + "JOIN Type2 t2 ON p.type2id=t2.Type2id "
                    + "JOIN Ability1 a1 ON p.ability1id=a1.Ability1id "
                    + "JOIN Ability2 a2 ON p.ability2id=a2.Ability2id "
                    + "JOIN EvolutionT e ON p.evolutionNo=e.EvolutionID "
                    + "JOIN answer ans ON t1.Type1name=ans.type1 "
                    + "AND t2.Type2name=ans.type2 "
                    + "AND a1.Ability1name=ans.ability1 "
                    + "AND a2.Ability2name=ans.ability2 "
                    + "AND e.EvolutionStage=ans.evolutionStage "
                    + "WHERE ans.id=1");
           
            String FinalPokemonName = null;
            ResultSet rs2 = joinStmt.executeQuery();
            if (rs2.next()) {
                FinalPokemonName = rs2.getString("pname");
            }
            rs2.close();
            joinStmt.close();

            // Set the retrieved attributes and pname as request attributes
            request.setAttribute("type1", type1);
            request.setAttribute("type2", type2);
            request.setAttribute("ability1", ability1);
            request.setAttribute("ability2", ability2);
            request.setAttribute("evolutionStage", evolutionStage);
            request.setAttribute("name", FinalPokemonName);

            // Update the FinalAnswer column in the PokinatorAnswer table where id=1
            PreparedStatement updateStmt = con.prepareStatement(
                    "UPDATE PokinatorAnswer SET FinalAnswer=? WHERE id=1");
            updateStmt.setString(1, FinalPokemonName);
           
            updateStmt.executeUpdate();
            updateStmt.close();
            con.close();
            // Forward the request to the result.jsp page
            RequestDispatcher dispatcher = request.getRequestDispatcher("/resultF.jsp");
            dispatcher.forward(request, response);

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

    }
}




