<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="java.io.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body , html {
    height: 100%;
    margin: 0;
}

.bg {
    /* The image used */
    background-image: url("grenades_box-wallpaper-2560x1440.jpg");

    /* Full height */
    height: 100%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
</style>


</head>

<style>
body {
	margin: 0;
	padding: 0;
	font-family: sans-serif;
	background-size: cover;
}

.loginbox {
	position: absolute;
	top: 42%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 360px;
	box-sizing: border-box;
}

.loginbox input[type="submit"] {
	
	background: black;
	box-shadow: 20px 10px 20px rgba(5, 5, 5, 1);
	border-radius: 5px;
	outline: none;
	height: 60px;
	width: 400px;
	font-size: 20px;
	color: #fff;
	cursor: pointer;
}


.loginbox input[type="submit"]:hover {
	background:green;
	color: #fff;
}
</style>
<body>



<div class="bg"></div>

	<div class="loginbox">
	<br/><br/><br/><br/><br/><br/>

<form action="jailor.jsp">
			<input type="submit" value="JAILOR DETAILS ">
		</form>
		<br>

<form action="reg1.jsp">
			<input type="submit" value="JAILOR REGISTRATION ">
		</form>
		<br>

		
<form action="display_homepage.jsp">
			<input type="submit" value="PRISON DETAILS">
		</form>
		<br>
		
		
	<form action="pdisp.jsp">
			<input type="submit" value="SEARCH PRISONER">
		</form>
		<br>
		
<form action="trigger.jsp">
			<input type="submit" value="JAILOR ACTION">
		</form>
		<br>
	<form action="logout.jsp">
			<input type="submit" value="LOGOUT">
		</form>
		<br>
	</div>
	
</body>
</html>
