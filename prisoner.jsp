<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<h3><i>Insert prisoner details</i> </h3>
<form action="prisonerpro.jsp" method="get">
<input type="text" name="id" placeholder="prisoner_Id"/><br/><br/>
<input  type="text" name="name" placeholder="prisoner_Name" pattern="^[a-z A-Z]+$" title="Please enter valid name"/><br/><br/>

<input type="text" name="gender" placeholder="gender [M/F/O]" pattern="[M F O]"/><br/><br/>
<input type="text" name="age" placeholder="age" pattern="^[0-9]{2}$" title="Please enter valid age"/><br/><br/>
<input type="text" name="prison" placeholder="prison_Allotted"/><br/><br/>
<button type="submit">REGISTER</button>
<button type="reset">RESET</button>
</div>
</centre>
</body>
</html>