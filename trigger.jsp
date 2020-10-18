<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="javax.servlet.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>insert title here</title>
</head>
<body background="">

<table align="center"border="1">
<% 

try {
Class.forName("com.mysql.jdbc.Driver");  
              
} catch(Exception e){
	e.printStackTrace();
}
  %>
  
               <tr>
                              <td><p><h2><font color="black" face="bookman header">PRISONER_ID</h2></p></font></td>
                <td><p><h2><font color="black" face="bookman header">PRISONER_NAME</h2></p></font></td>
                <td><p><h2><font color="black" face="bookman header">ACTION PERFORMED</h2></p></font></td>
                <td><p><h2><font color="black" face="bookman header">EXECUTION TIME</h2></p></font></td>
                
              
               
                
                
              
                </tr>
                <%
                try{
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/prisonSystem","root","root");	
                response.setContentType("text/html"); 
               
                
                PreparedStatement st=con.prepareStatement("select * from prison ");
                             
                           
                             ResultSet rs =st.executeQuery();
                             out.println("<center><a href='h2.jsp'><h2>BACK</h2></a></center>");
                             while(rs.next()) {
                %>
                 <tr>
                       <td><h3><%=rs.getString(1)%></h3></td>
                       <td><h3><%=rs.getString(2)%></h3></td>
                       <td><h3><%=rs.getString(3)%></h3></td>
                        <td><h3><%=rs.getString(4)%></h3></td>
                       
                       </tr>
               <% 
                        }

                             }
                
                
                              catch(Exception e){
                            	out.println(e);
                             }
                
                %>
                             
                             </table>
                             
</body>
</html>