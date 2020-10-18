
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String a=request.getParameter("id").trim();
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/prisonSystem","root","root");
PreparedStatement ps=con.prepareStatement("delete from prisoner where prisonerId=?");
ps.setString(1,a);
%>
<% try{ %>
<% ps.executeUpdate(); %>
<h3> Sucessfully deleted prisoner record</h3>
<br>
<a href="displayprisoner1.jsp">Click here to see prisoner details</a>
<a href="h1.jsp">BACK</a>
<% }
catch(Exception e)
{%>
<% System.out.println(e); %>
<h3>Enter the correct details</h3>
<a href="h1.jsp">BACK</a>
<%} %>
<center>
</body>
</html>
