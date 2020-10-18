<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="pranav-namoju-high-resolution-google-plus-wallpapers-1.jpeg">
<center>
<table  align="center" border="5">
<% 

try {
Class.forName("com.mysql.jdbc.Driver");  
              
} catch(Exception e){
	e.printStackTrace();
}
  %>
<tr>
<td><p><h2><font color="black" face="bookman header">NAME</h2></p></font></td>
                <td><p><h2><font color="black" face="bookman header">HEARING DURATION(days)</h2></p></font></td>
     
      </tr>
      <br/><br/>
<%
try{  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/prisonSystem","root","root"); 
CallableStatement st=con.prepareCall("{call hear()}");
ResultSet r=st.executeQuery();
out.println("<center><a href='displayrem.jsp'><h2>BACK</h2></a></center>");
%>
<%while(r.next()){ %>
<tr>
<td><h3><%=r.getString(1)%></h3></td>
<td><h3><%=r.getString(2)%></h3></td>
</tr>

 <% 
                        }

                             }
                
                
                              catch(Exception e){
                            	out.println(e);
                             }
                
                %>

</table>
</center>
</body>
</html>