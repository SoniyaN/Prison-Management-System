<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="delete.jsp">
<center>
<table>
<tr>
<td><p><h1><font color="black" face="bookman header">prisoner_id:</h1></p></font></td>  <td><select  name="id" >
<option value="">--- select prisonerId ---</option>
<%
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/prisonSystem","root","root"); 
String q="select * from prisoner";
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery(q);
while(rs.next())
{
%>
<option value="<% out.println(rs.getString(1));%>"><%out.println(rs.getString(1));%></option>
<%}%>
</select>
</td>
</tr> 
<tr><td>  </td> <td><input type="submit" value="ENTER"/></td> </tr>

</table>

</center>
</form>
</body>
</html>
