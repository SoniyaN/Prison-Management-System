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
String a1=request.getParameter("id").trim();
String a=request.getParameter("type");
String b=request.getParameter("from");
String c=request.getParameter("to");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/prisonSystem","root","root");
PreparedStatement ps=con.prepareStatement("update transfer set transferFrom=?, transferTo=? , caseType=? where prisonerId=?");
ps.setString(1,b);
ps.setString(2,c);
ps.setString(3,a);
ps.setString(4,a1);
%>
<% try{ %>
<% ps.executeUpdate(); %>
<a href='h1.jsp'><h3> Back to homepage</h3></a> 
<a href='update_homepage.html'><h3> Back to update</h3></a>
<script>alert('successfully updated');</script>
<br/>

<% }
catch(Exception e)
{%>
<% System.out.println(e); %>
<h3>Enter the correct details</h3>

<%} %>
</body>
</html>

