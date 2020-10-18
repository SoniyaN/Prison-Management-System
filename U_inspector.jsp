<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% 
String a=request.getParameter("inspector_Id").trim();
String b=request.getParameter("f_Name");
String c=request.getParameter("l_Name");
String d=request.getParameter("gender");
String e1=request.getParameter("age");
String f=request.getParameter("position");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/prisonSystem","root","root");
PreparedStatement ps=con.prepareStatement("update inspector set firstName=?, lastName=?,gender=? ,age=?,position=? where inspectorId=?");
ps.setString(1,b);
ps.setString(2,c);
ps.setString(3,d);
ps.setString(4,e1);
ps.setString(5,f);
ps.setString(6,a);
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
</body>
</html>