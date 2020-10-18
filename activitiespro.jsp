<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{
String a1=request.getParameter("iid").trim();
String a2=request.getParameter("an");
String a3=request.getParameter("tl");
String a4=request.getParameter("pp");
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/prisonSystem","root","root"); 
String q="insert into activities (prisonerId,activityName,timeLimit,placeOfPlay) values(?,?,?,?) "; 


PreparedStatement stmt=con.prepareStatement(q);  
stmt.setString(1,a1); 
stmt.setString(2,a2);  
stmt.setString(3,a3);
stmt.setString(4,a4); 
int i=stmt.executeUpdate();  
out.println("<script>alert('successfully inserted');window.location.href='insert_homepage.jsp';</script>");  
con.close(); 
}catch(Exception e){ out.println(e);
out.println("<center><a href='activities.jsp'><h2>BACK</h2></a></center>");}  
%>
</body>
</html>