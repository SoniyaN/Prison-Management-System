<html>
<head>
<body background="pranav-namoju-high-resolution-google-plus-wallpapers-1.jpeg">
<title>
login page
</title>
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
<div>

<h3><i>Register here</i> </h3>
<form action="regpro.jsp" method="get">

<input type="text" name="data1" placeholder="Enter jailor name" pattern="^[a-z A-Z]+$" title="Please enter jailor name correctly"/><br/><br/>
<input type="password" name="data2" placeholder="Enter jailor ID" /><br/><br/>
<input type="password" name="data3" placeholder="Enter city"/><br/><br/>
<button type="submit">REGISTER</button>
<button type="reset">RESET</button>
</form>
</div>
</body>
</html>