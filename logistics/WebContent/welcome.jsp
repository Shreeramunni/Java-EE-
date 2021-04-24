<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>
<%@page import="com.s7it.Donor" %>
<%@page import="com.s7it.Dbdonor" %>
<%@page import="com.s7it.Bloodcontroller" %>
<%@page import="com.s7it.Newaccount" %>

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
h1{
color: black;
}
h2{
color:white;}



</style>
<body>

<%
    ArrayList<Donor> std = (ArrayList<Donor>)request.getAttribute("donor"); 
  try{  String u,p;
    int i=0;
   	int ct=std.size();
  
	for(Donor dc:std)
	{
		u=dc.getuser();
		p=dc.getpass();
		if(p.equals(request.getAttribute("pass"))&&u.equals(request.getAttribute("user")))
		{
			out.print("<center><h1>Welcome "+u+"</h1></center>");
			out.print("<br");
			break;
	     }
	i++;
	}
	if(i==ct)
	{out.print("invalid");}
	
  
	}
	
   catch (Exception e) {
		e.printStackTrace();
  }
%>
</body>
</html>