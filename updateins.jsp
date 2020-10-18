<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="U_inspector.jsp">
<center>
<table>
<tr>
<td><p><h2><font color="black" face="bookman header">Inspector_id:</h2></p></td><td>
<select  name="inspector_Id" >
<option value="">--- select inspectorId ---</option>
<%
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/prisonSystem","root","root"); 
String q="select * from inspector";
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery(q);
while(rs.next())
{
%>
<option value="<% out.println(rs.getString(1));%>"><%out.println(rs.getString(1));%></option>
<%}%>
</select></td></tr>
<tr><td><p><h2><font color="black" face="bookman header">First_name:</h2></p></td><td><input type="text" name="f_Name" placeholder="MUTABLE"/></td></tr>
<tr><td><p><h2><font color="black" face="bookman header">Last_name:</h2></p></td><td><input type="text" name="l_Name" placeholder="MUTABLE"/></td></tr>
<tr><td><p><h2><font color="black" face="bookman header">Gender:</h2></p></td><td><input type="text" name="gender" placeholder="MUTABLE"/></td></tr>
<tr><td><p><h2><font color="black" face="bookman header">Age:</h2></p></td><td><input type="text" name="age" placeholder="MUTABLE"/></td></tr>
<tr><td><p><h2><font color="black" face="bookman header">Position:</h2></p></td><td><input type="text" name="position" placeholder="MUTABLE"/></td></tr>
<tr><td> </td><td><input type="submit" value="SUBMIT"/></td></tr>
</table>
</center>
</body>
</html>