<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Prison Management System</title>
<style>
*{
margin:0;
padding:0;
}
body{
margin:0;
font-family: Arial,"Helvetica Neue", Helvetica, sans-serif;
font-size:17px;
color:#926239;
line-height:1.6;
}
#showcase{
background-image:url('IMG_LA-3079686_la-me_she_2_1_SQ5H24FB (2).jpg');
background-size:cover;
background-position:center;
height:600px;
display:flex;
flex-direction:column;
justify-content:center;
align-items:center;
text-align:center;
padding:20px 20px;

}
#showcase h1{
font-size:60px;
line-height:1.2;

}
#showcase p{
font-size;20px;
}


#showcase.button{
font-size:18px;
text-decoration:none;
color:#000;
border:#926239 1px solid;
padding:10px 20px;
border-radius:10px;
margin-top:20px;
}

#showcase .button :hover{
background:#926239;
color:#fff;
}

#section-a{
padding:20px;
background:#926239;
color:#fff;
text-align:center;
justify-content:center;
}
#section-b{
padding:20px;
background:#f4f4f4;

}
#section-c{
display:flex;

}
#section-c div{
padding:20px;

}
#section-c .box-1, #section-c .box-3{
background:#000;
color:#fff;

}
#section-c .box-2{
background:#f9f9f9;

}
*{
margin:0;
padding:0;
font
}
nav{
width:100%;
height:80px;
background-color:#926239;
opacity:0.9;
line-height:80px;
}
nav ul{
float:right;
margin-right:30px;
}
nav ul li{
list-style-type:none;
display:inline-block;
transition: 0.5s all;
}
nav ul li:hover{
background-color:black;
}
nav ul li a{
text-decoration:none;
color:#fff;
padding:30px;
}

</style>
</head>
<body>
<div id="main">
 <nav>
   <ul>
     <li><a href="front.jsp" type="submit">HOME</a></li>
     <li><a href="login2.html">ADMIN LOGIN</a></li>
     <li><a href="login1.jsp">JAILOR LOGIN</a></li>
      <li><a href="front.jsp">ABOUT US</a></li>
   </ul>
 </nav>
</div>
<center>
<header id="showcase">
<h1><font color="#FFFFF0"></br></br>PMS - Prison Management System</h1></font>

</header>
</center>
<section id="section-a">
<p>In this world there are many types of people some are good and some are bad.
 Prisons have been established to punish the people who does wrong to the society.
 In order to manage this, a concept called Prison Management System(PMS) using DBMS is introduced.
 Since There are Lot of Prisons it Becomes hectic for the Government to maintain the Records of the Prisoners, inspectors, remand etc..
 It has high risk and security becomes a top priority because Each Information in the Database is very important and highly confidential.
 A Database Management System has many advantages over the traditional file system used in the earlier days</p>
</section>

<section id="section-c">
<div class="box-1">
<p>Prisons in India are run by the provincial prison service. Each jail or prison is managed by a superintendent.
 The precise title varies by prison and state.
 The officers employed by the government of the jurisdiction in which they operate.
 A superintendent is typically assisted by a deputy superintendent and one or more assistants.
 The one who is responsible  for jailor actions and prison security.</p>
 
<center><a href="login2.html" class="button" ><font color="#fff">Click here to administration login</a></font></center>
</div>
<div class="box-2">
<p>A database management system (DBMS) refers to the technology for creating and managing databases. Basically, a DBMS is a software tool to organize (create, retrieve, update and manage) data in a database.
 The main aim of a DBMS is to supply a way to store and retrieve database information that is both convenient and efficient. 
 By data, we mean known facts that can be recorded and that have embedded meaning.
 Normally people use software such as DBASE IV or V, Microsoft ACCESS, or EXCEL to store data in the form of database. </p>
</div>
<div class="box-3">
<p>Jailors are the officers employed by the government of the jurisdiction in which they operate.
 Responsible for the supervision, safety, and security of prisoners in a prison, jail, or similar form of secure custody. They are responsible for the care, custody, and control of individuals who have been arrested and are awaiting trial while on remand or who have been convicted of a crime and sentenced to serve time in a prison or jail.</p>
</br>
<center><a href="login1.jsp" class="button" ><font color="#fff">Click here to Jailor login</a></font></center>
</div>
</section>
</body>
</html>