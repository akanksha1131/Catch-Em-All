<%@page import="java.sql.*"%>
<%
// Connect to the database
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/trail?useSSL=false", "root", "root");
//Retrieve the FinalAnswer from the PokinatorAnswer table where id=1
PreparedStatement selectStmt = con.prepareStatement("SELECT FinalAnswer FROM PokinatorAnswer WHERE id=1");
ResultSet rs = selectStmt.executeQuery();
String finalAnswer = null;
if (rs.next()) {
 finalAnswer = rs.getString("FinalAnswer");
}
rs.close();
selectStmt.close();

//Retrieve the image url from the Pokemon table where name matches finalAnswer
PreparedStatement selectStmt2 = con.prepareStatement("SELECT Images FROM Pokemon WHERE Name=?");
selectStmt2.setString(1, finalAnswer);
ResultSet rs2 = selectStmt2.executeQuery();
String imageUrl = null;
if (rs2.next()) {
 imageUrl = rs2.getString("Images");
}
rs2.close();
selectStmt2.close();
%>

<!DOCTYPE html>
<html>
<head>
    <title>Your Pokemon is:</title>
    <style>
    body {
        background-color: black;
    }
    h1 {
        font-family: Arial, Helvetica, sans-serif;
        text-align: center;
        color: #007FFF;
    }
    img {
        display: block;
        margin: 0 auto;
        width: 25%;
        height: 25%;
    }
    #bottom-right-buttons {
        position: fixed;
        bottom: 0;
        right: 0;
        margin: 20px;
        display: flex;
        flex-direction: row;
        justify-content: flex-end;
        align-items: center;
    }
    .button {
        background-color: #007FFF;
        color: white;
        border: none;
        border-radius: 5px;
        padding: 10px;
        font-size: 26px;
        cursor: pointer;
        margin-left: 10px;
    }
    </style>
</head>
<body>
    <br>
    <br>
    <br>
    <br>
    <% if (finalAnswer == null) { %>
        <h1 style="font-family: Arial, Helvetica, sans-serif; text-align: center; color: #007FFF; font-size: 32px;">No such Pokemon exists!</h1>
    <% } else { %>
    <h1>Your Pokemon is: </h1>
        <h1 style="font-family: Arial, Helvetica, sans-serif; text-align: center; color: #007FFF; font-size: 32px;"><%= finalAnswer %></h1>
        <img src="<%= imageUrl %>" alt="<%= finalAnswer %>">
    <% } %>
    <div id="bottom-right-buttons">
        <button class="button" onclick="location.href='thinkofpokemon.jsp'">Play again!</button>
        <button class="button" onclick="location.href='index.jsp'">Exit</button>
    </div>
</body>
</html>
