<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
    <%@ page import="javax.servlet.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>admin login</title>
<script type="text/javascript">
window.history.forward(1)
</script>
</head>

<body background="j.jpg">
<%  
	 response.setContentType("text/html");
	 try {
			
			String username=request.getParameter("uname");
			String password= request.getParameter("psw");
      
		if(username==null||username.equals("")||password==null||password.equals("")) {
out.println("<h1><b><center><br><br><br><br><br><br><br><br><font face='Imprint MT Shadow' color='black'>User Name or Password cannot be empty</center></b><br/></h1>");
				return;
			}

		if(username.equals("admin")&& password.equals("1234"))
		{
			RequestDispatcher myDispatch = request.getRequestDispatcher("h2.jsp");
			myDispatch.forward(request, response);
			
		}
		else{

			RequestDispatcher myDispatch = request.getRequestDispatcher("login2.html");
			myDispatch.forward(request, response);
			
		out.println("<h1><b><center><br><br><br><br><br><br><br><br><font face='Imprint MT Shadow' color='black'>INCORRECT PASSWORD  </center></b><br/></h1>");
		out.println("</center>");
		}
		
		
	 }
	catch(Exception e){
out.println("<h2><font face='Imprint MT Shadow' color='black'>Unable to the process the request try after some time</h2>");
	}//catch
%>


</body>
</html>