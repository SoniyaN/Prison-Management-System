<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>  <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
div{
width:450px;
background-color:white;
padding:50px;
margin:auto;
font-size:20px;
}
input{
padding:10px;
width:400Px;
}
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 25%;
}

button:hover {
    opacity: 0.8;
}
</style>
</head>
<body>
<body background="pranav-namoju-high-resolution-google-plus-wallpapers-1.jpeg">
<div><centre>
<h3><i>Insert tranfer details</i> </h3>
<form action="transferpro.jsp" method="get">
<select  name="iid" >
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
<br/><br/>
<input type="text" name="case" placeholder="case_type"/><br/><br/>
<input type="text" name="from" placeholder="transfer_from"/><br/><br/>
<input type="text" name="to" placeholder="transfer_to"/><br/><br/>

<button type="submit">REGISTER</button>
<button type="reset">RESET</button>
</div>
</centre>

</body>
</html>