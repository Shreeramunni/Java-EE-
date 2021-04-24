<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>
<%@page import="com.s7it.User" %>
<%@page import="com.s7it.Dbuser" %>
<%@page import="com.s7it.Usercontroller" %>
<%@page import="com.s7it.Logi_register" %>

<!DOCTYPE html>
<html>
<title>Profile page</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html, body, h1, h2, h3, h4, h5 {font-family: "Open Sans", sans-serif}
</style>
<body class="w3-theme-l5">

<!-- Navbar -->
<div class="w3-top">
 <div class="w3-bar w3-theme-d2 w3-left-align w3-large">
  <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-theme-d2" href="javascript:void(0);" onclick="openNav()"><i class="fa fa-bars"></i></a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large w3-theme-d4"><i class="fa fa-user w3-margin-right"></i>Profile page</a>

  <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="Account Settings"><i class="fa fa-gear"></i></a>
  <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="Messages"><i class="fa fa-envelope"></i></a>
  <div class="w3-dropdown-hover w3-hide-small">
    <button class="w3-button w3-padding-large" title="Notifications"><i class="fa fa-bell"></i><span class="w3-badge w3-right w3-small w3-green">2</span></button>     
    <div class="w3-dropdown-content w3-card-4 w3-bar-block" style="width:300px">
      <a href="#" class="w3-bar-item w3-button">Welcome to your profile page!!</a>
      <a href="#" class="w3-bar-item w3-button">Fill the below fields to book our services</a>
      
    </div>
  </div>
  <a href="logi_homepage.jsp" class="w3-bar-item w3-button w3-hide-small w3-right w3-padding-large w3-hover-white" title="Logout">
    <img src="avatar.png" class="w3-circle" style="height:23px;width:23px" alt="Avatar">
  </a>
 </div>
</div>
<!-- Navbar on small screens -->
<div id="navDemo" class="w3-bar-block w3-theme-d2 w3-hide w3-hide-large w3-hide-medium w3-large">
  <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 1</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 2</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 3</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large">My Profile</a>
</div>

<!-- Page Container -->
<div class="w3-container w3-content" style="max-width:1400px;margin-top:80px">    
  <!-- The Grid -->
  <div class="w3-row">
    <!-- Left Column -->
    <div class="w3-col m3">
      <!-- Profile -->
      <div class="w3-card w3-round w3-white">
        <div class="w3-container">
         <h4 class="w3-center">My Profile</h4>
         <p class="w3-center"><img src="avatar.png" class="w3-circle" style="height:106px;width:106px" alt="Avatar"></p>
         <hr><%
    ArrayList<User> std = (ArrayList<User>)request.getAttribute("account"); 
  try{  String u,p;
    int i=0;
   	int ct=std.size();
  
	for(User dc:std)
	{
		u=dc.getuser();
		p=dc.getpass();
		session.setAttribute("user",u);
		if(p.equals(request.getAttribute("pass"))&&u.equals(request.getAttribute("user")))
		{
			out.print("<p><i class='fa fa-pencil fa-fw w3-margin-right w3-text-theme'></i> "+u+"</p>");
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
         
         <p><i class="fa fa-envelope fa-fw w3-margin-right w3-text-theme"></i> Nil</p>
         <p><i class="fa fa-phone fa-fw w3-margin-right w3-text-theme"></i> Nil</p>
        </div>
      </div>
      <br>
      
      <!-- Accordion -->
      <div class="w3-card w3-round">
        <div class="w3-white">
          <button onclick="myFunction('Demo1')" class="w3-button w3-block w3-theme-l1 w3-left-align"><i class="fa fa-circle-o-notch fa-fw w3-margin-right"></i> My Booking</button>
          <div id="Demo1" class="w3-hide w3-container">
            <p>Some text..</p>
          </div>
          <button onclick="myFunction('Demo2')" class="w3-button w3-block w3-theme-l1 w3-left-align"><i class="fa fa-calendar-check-o fa-fw w3-margin-right"></i> My Estimates</button>
          <div id="Demo2" class="w3-hide w3-container">
            <p>Some other text..</p>
          </div>
        </div>      
      </div>
      <br>
      

      
      <!-- Alert Box -->
      <div class="w3-container w3-display-container w3-round w3-theme-l4 w3-border w3-theme-border w3-margin-bottom w3-hide-small">
        <span onclick="this.parentElement.style.display='none'" class="w3-button w3-theme-l3 w3-display-topright">
          <i class="fa fa-remove"></i>
        </span>
        <p><strong>Welcome!</strong></p>
        <p>Are you availing our services for the first time?</p>
      </div>
    
    <!-- End Left Column -->
    </div>
    
    <!-- Middle Column -->
    
    <div class="w3-col m7">
    <form action="Logi_info" method="post">
      <div class="w3-row-padding">
        <div class="w3-col m12">
          <div class="w3-card w3-round w3-white">
            <div class="w3-container w3-padding">
            <h6 class="w3-opacity">Personal info</h6>
             <p><input class="w3-border w3-block w3-padding" contenteditable="true" type="text" placeholder="Enter Email" name="email"></p>
            </div>
          </div>
        </div>
      </div>
       <div class="w3-row-padding">
        <div class="w3-col m12">
          <div class="w3-card w3-round w3-white">
            <div class="w3-container w3-padding">
            <h6 class="w3-opacity">Personal info</h6>
             <p><input class="w3-border w3-block w3-padding" contenteditable="true" type="text" placeholder="Enter Mobile no." name="number"></p>
            </div>
          </div>
        </div>
      </div>
       <div class="w3-row-padding">
        <div class="w3-col m12">
          <div class="w3-card w3-round w3-white">
            <div class="w3-container w3-padding">
            <h6 class="w3-opacity">Confirm mode of shift</h6>
             <p><input class="w3-border w3-block w3-padding" contenteditable="true" type="text" placeholder="Eg.Air, Sea, Road " name="mode"></p>
            </div>
          </div>
        </div>
      </div>
       <div class="w3-row-padding">
        <div class="w3-col m12">
          <div class="w3-card w3-round w3-white">
            <div class="w3-container w3-padding">
            <h6 class="w3-opacity">Confirm offer</h6>
             <p><input class="w3-border w3-block w3-padding" contenteditable="true" type="text" placeholder="Eg.Silver, Gold, Platinum" name="offer"></p>
            </div>
          </div>
        </div>
      </div>
       <div class="w3-row-padding">
        <div class="w3-col m12">
          <div class="w3-card w3-round w3-white">
            <div class="w3-container w3-padding">
            <h6 class="w3-opacity">City of Departure</h6>
             <p><input class="w3-border w3-block w3-padding" contenteditable="true" type="text" placeholder="Eg.Kochi, Mumbai, Chennai" name="source"></p>
            </div>
          </div>
        </div>
      </div>
      <div class="w3-row-padding">
        <div class="w3-col m12">
          <div class="w3-card w3-round w3-white">
            <div class="w3-container w3-padding">
            <h6 class="w3-opacity">City of Arrival</h6>
             <p><input class="w3-border w3-block w3-padding" contenteditable="true" type="text" placeholder="Eg.Kochi, Mumbai, Chennai" name="dest"></p>
              <input class="w3-button w3-block w3-green w3-padding-16 w3-section w3-right" type="submit">  
            </div>
          </div>
        </div>
      </div>
     
     </form>
      
    <!-- End Middle Column -->
    </div>
    
    <!-- Right Column -->
    <div class="w3-col m2">
      <div class="w3-card w3-round w3-white w3-center">
        <div class="w3-container">
          <p><button class="w3-button w3-block w3-theme-l4">OFFER</button></p>
          <p><strong>Silver Package</strong></p>
          <p>15 cartons(12X12)</p>
          <p>Price:Rs.1200/carton<p>
       
        </div>
      </div>
      <br>
       
      <div class="w3-card w3-round w3-white w3-center">
        <div class="w3-container">
          <p><button class="w3-button w3-block w3-theme-l4">OFFER</button></p>
          <p><strong>Gold Package</strong></p>
          <p>30 cartons(15X15)</p>
          <p>Price:Rs.1400/carton<p>
          
        </div>
      </div>
      <br>
       <div class="w3-card w3-round w3-white w3-center">
        <div class="w3-container">
          <p><button class="w3-button w3-block w3-theme-l4">OFFER</button></p>
          <p><strong>Platinum Package</strong></p>
          <p>40 cartons(20X20)</p>
          <p>Price:Rs.2000/carton<p>
         
        </div>
      </div>
      <br>
      <div class="w3-card w3-round w3-white w3-center">
        <div class="w3-container">
          <p><b>Feedback</b></p>
          
          <span>Would you like to rate our logisitic services?</span>
          <div class="w3-row w3-opacity">
            <div class="w3-half">
              <button class="w3-button w3-block w3-green w3-section" title="Accept"><i class="fa fa-check"></i></button>
            </div>
            <div class="w3-half">
              <button class="w3-button w3-block w3-red w3-section" title="Decline"><i class="fa fa-remove"></i></button>
            </div>
          </div>
        </div>
      </div>
      <br>
      
    
    <!-- End Right Column -->
    </div>
    
  <!-- End Grid -->
  </div>
  
<!-- End Page Container -->
</div>
<br>

<!-- Footer -->
<footer class="w3-container w3-theme-d3 w3-padding-16">
  <h5>Any queries? Contact us.</h5>
</footer>

<footer class="w3-container w3-theme-d5">
  <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">Amazon</a></p>
</footer>
 
<script>
// Accordion
function myFunction(id) {
  var x = document.getElementById(id);
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
    x.previousElementSibling.className += " w3-theme-d1";
  } else { 
    x.className = x.className.replace("w3-show", "");
    x.previousElementSibling.className = 
    x.previousElementSibling.className.replace(" w3-theme-d1", "");
  }
}

// Used to toggle the menu on smaller screens when clicking on the menu button
function openNav() {
  var x = document.getElementById("navDemo");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else { 
    x.className = x.className.replace(" w3-show", "");
  }
}
function setScrollbar() {   
	if(document.body.scrollHeight > document.body.clientHeight){
	    document.body.scroll="yes";
	}   
	else{
	    document.body.scroll="no";
	}       
	}
</script>



</body>
</html>