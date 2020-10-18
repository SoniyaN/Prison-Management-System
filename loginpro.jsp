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
	int k=0;
	String a=request.getParameter("data1");
	String b=request.getParameter("data2");
	
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/prisonSystem","root","root");  
//here sonoo is database name, root is username and password  
 Statement stmt=con.createStatement();  
String q="select * from login where userName='"+a+"' and password='"+b+"'";
ResultSet rs=stmt.executeQuery(q);

if(rs.next()){
	  session.setAttribute( "theName", a );

	   response.sendRedirect("h1.jsp");
}
else
	out.println("<script>alert('not registered');window.location.href='registration.jsp';</script>");  
	
 
con.close(); 
}catch(Exception e){ out.println(e);}  




%>
</body>
</html>