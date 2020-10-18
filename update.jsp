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
String a=request.getParameter("prisoner_id").trim();
String b=request.getParameter("prisoner_Name");
String c=request.getParameter("prisoner_Allotted");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/prisonSystem","root","root");
PreparedStatement ps=con.prepareStatement("update prisoner set prisonerName=?, prisonAllotted=? where prisonerId=?");
ps.setString(1,b);
ps.setString(2,c);
ps.setString(3,a);
%>
<% try{ %>
<% ps.executeUpdate(); %>
out.println("<script>alert('successfully updated');window.location.href='update_homepage.html';</script>");  
<br/>

<% }
catch(Exception e)
{%>
<% System.out.println(e); %>
<h3>Enter the correct details</h3>

<%} %>
<center>
</body>
</html>

