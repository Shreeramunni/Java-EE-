<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>
<%@page import="com.s7it.User" %>
<%@page import="com.s7it.Dbuser" %>
<%@page import="com.s7it.Usercontroller" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
td{
    padding: 15px;
}
div { 
  border: 10px solid black;
  padding: 35px;
 
}
.button {
 border-radius: 25px;
  background: light blue;
  padding: 10px;
  width: 100px;
  height: 50px;} 
</style>
<body style="background-image: url('download.png');background-repeat: no-repeat;background-size: cover;">

<form action="mainpage.html">
<%
    ArrayList<User> std = (ArrayList<User>)request.getAttribute("account"); 
   
	String u,p;
	int i=0;
	int ct=std.size();
  try{
	for(User dc:std)
	{
		u=dc.getuser();
		p=dc.getpass();
		if(p.equals(request.getAttribute("pass"))&&u.equals(request.getAttribute("user")))
		{
			out.print("<h1>#Welcome "+u+"...</h1>");
			out.print("<br");
			break;
	     }
	i++;
	}
	if(i==ct)
	{out.print("invalid");}
	
	
	%>



	<%
	}
	
   catch (Exception e) {
		e.printStackTrace();
  }
%>
</form>

<button class="button" type="submit">mainpage</button>
</body>
</html>