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
<%
try{
String a1=request.getParameter("id");
String a2=request.getParameter("name");
String a3=request.getParameter("gender");
String a4=request.getParameter("age");
String a5=request.getParameter("prison");
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/prisonSystem","root","root"); 
String q="insert into prisoner (prisonerId,prisonerName,gender,age,prisonAllotted) values(?,?,?,?,?) "; 


PreparedStatement stmt=con.prepareStatement(q);  
stmt.setString(1,a1); 
stmt.setString(2,a2);  
stmt.setString(3,a3);
stmt.setString(4,a4); 
stmt.setString(5,a5); 



int i=stmt.executeUpdate();  
out.println("<script>alert('successfully inserted');window.location.href='insert_homepage.jsp';</script>");  
con.close(); 
}catch(Exception e){ out.println(e);}  
%>
</body>
</html>