<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<title>Reachyoulogistics.com</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {font-family: "Lato", sans-serif}
.mySlides {display: none}
</style>
<body>


<div class="w3-top">
  <div class="w3-bar w3-black w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large">HOME</a>
    <a href="#band" class="w3-bar-item w3-button w3-padding-large w3-hide-small">ABOUT US</a>
    <a href="#tour" class="w3-bar-item w3-button w3-padding-large w3-hide-small">MODE</a>
    <a href="#contact" class="w3-bar-item w3-button w3-padding-large w3-hide-small">CONTACT</a>
    <div class="w3-dropdown-hover w3-hide-small">
      <button class="w3-padding-large w3-button" title="More">MORE <i class="fa fa-caret-down"></i></button>     
      <div class="w3-dropdown-content w3-bar-block w3-card-4">
        <button class="w3-bar-item w3-button" onclick="document.getElementById('registerModal').style.display='block'">Register</button>
        <a href="#" class="w3-bar-item w3-button">Merchandise</a>
        <a href="#" class="w3-bar-item w3-button">Extras</a>
        
      </div>
    </div>
    <a href="javascript:void(0)" class="w3-bar-item w3-button w3-wide w3-padding-large w3-hover-red w3-hide-small w3-right">REACHYOU LOGISTICS<i class="fa fa-suitcase"></i></a>
  </div>
</div>

<!-- Navbar on small screens (remove the onclick attribute if you want the navbar to always show on top of the content when clicking on the links) -->
<div id="navDemo" class="w3-bar-block w3-black w3-hide w3-hide-large w3-hide-medium w3-top" style="margin-top:46px">
  <a href="#band" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">BAND</a>
  <a href="#tour" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">TOUR</a>
  <a href="#contact" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">CONTACT</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">MERCH</a>
</div>

<!-- Page content -->
<div class="w3-content" style="max-width:2000px;margin-top:46px">

  <!-- Automatic Slideshow Images -->
  <div class="mySlides w3-display-container w3-center">
    <img src="kochi.jpg" style="width:100%">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
      <p>Operations in</p>
      <h3>KOCHI</h3>
      <p><b>Harbour of Western Coast</b></p>   
    </div>
  </div>
  <div class="mySlides w3-display-container w3-center">
    <img src="mumbai.jpg" style="width:100%">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
     <p>Operations in</p>
      <h3>MUMBAI</h3>
      <p><b>Gateway city of Arabian sea</b></p>    
    </div>
  </div>
  <div class="mySlides w3-display-container w3-center">
    <img src="chennai.jpg" style="width:100%">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
      <p>Operations in</p>
      <h3>CHENNAI</h3>
      <p><b>City of vibrant people</b></p>    
    </div>
  </div>

  <!-- The Band Section -->
  <div class="w3-container w3-content w3-center w3-padding-64" style="max-width:800px" id="band">
    <h2 class="w3-wide">ABOUT US</h2>
    <p class="w3-opacity"><i>Moving Lives for better living</i></p>
    <p class="w3-justify">REACHYOU Logistics was established in 1994, in Cochin, Kerala, India, as a forwarding agent. We hold our own CHA and DGCA license with a fleet of trailers which helps us to provide total logistics solution to our clients. The role of Logistic Agents is to act as a bridge in between logistics connecting Customs, Ports, Airways, Roadways, shipping agents and other related agencies and to guide with a professional attitude to achieve the goal. </p>
    <div class="w3-row w3-padding-32">
      
      
      <center>
        <img src="reachyou.png" class="w3-round w3-margin-bottom" alt="Random Name" style="width:100%">
        </center>
      
     
    </div>
  </div>

  <!-- The Tour Section -->
  <div class="w3-black" id="tour">
    <div class="w3-container w3-content w3-padding-64" style="max-width:800px">
      <h2 class="w3-wide w3-center">MODE OF SHIFT</h2>
      <p class="w3-opacity w3-center"><i> To book for logistics!</i></p><br>

      

      <div class="w3-row-padding w3-padding-32" style="margin:0 -16px">
        <div class="w3-third w3-margin-bottom">
          <img src="plane.jpg" alt="New York" style="width:100%" class="w3-hover-opacity">
          <div class="w3-container w3-white">
            <p><b>AIR</b></p>
            <p class="w3-opacity">Approved Permit by AAI</p>
            <p>Consignment shipped by Cargo plane.</p>
            <button class="w3-button w3-black w3-margin-bottom" onclick="document.getElementById('ticketModal').style.display='block'">Book</button>
          </div>
        </div>
        <div class="w3-third w3-margin-bottom">
          <img src="ship.jpg" alt="Paris" style="width:100%" class="w3-hover-opacity">
          <div class="w3-container w3-white">
            <p><b>SEA</b></p>
            <p class="w3-opacity">Approved Permit by DGT</p>
            <p>Consignment shipped by Container ship.</p>
            <button class="w3-button w3-black w3-margin-bottom" onclick="document.getElementById('ticketModal').style.display='block'">Book</button>
          </div>
        </div>
        <div class="w3-third w3-margin-bottom">
          <img src="road.jpg" alt="San Francisco" style="width:100%" class="w3-hover-opacity">
          <div class="w3-container w3-white">
            <p><b>ROAD</b></p>
            <p class="w3-opacity">Approved Permit by NHAI</p>
            <p>Consignment shipped by InterState trucks.</p>
            <button class="w3-button w3-black w3-margin-bottom" onclick="document.getElementById('ticketModal').style.display='block'">Book</button>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Ticket Modal -->
  <div id="ticketModal" class="w3-modal">
    <div class="w3-modal-content w3-animate-top w3-card-4">
      <header class="w3-container w3-teal w3-center w3-padding-32"> 
        <span onclick="document.getElementById('ticketModal').style.display='none'" 
       class="w3-button w3-teal w3-xlarge w3-display-topright">�</span>
        <h2 class="w3-wide"><i class="fa fa-suitcase w3-margin-right"></i>Login</h2>
      </header>
      <div class="w3-container">
      <form action="Usercontroller" method="post">
        <p><label><i class="fa fa-user"></i> Username</label></p>
        <input class="w3-input w3-border" type="text" placeholder="Enter username" name="user">
        <p><label><i class="fa fa-lock"></i> Password</label></p>
        <input class="w3-input w3-border" type="password" placeholder="Enter password" name="pass">
        <input class="w3-button w3-block w3-teal w3-padding-16 w3-section w3-right" type="submit"> 
        
        <p class="w3-right">New user? <a href="#band" class="w3-text-blue"><b>Check MORE to register</b></a> 
        </form>
      </div>
    </div>
  </div>
  
  <div id="registerModal" class="w3-modal">
    <div class="w3-modal-content w3-animate-top w3-card-4">
      <header class="w3-container w3-teal w3-center w3-padding-32"> 
        <span onclick="document.getElementById('registerModal').style.display='none'" 
       class="w3-button w3-teal w3-xlarge w3-display-topright">�</span>
        <h2 class="w3-wide"><i class="fa fa-suitcase w3-margin-right"></i>Register</h2>
      </header>
      <div class="w3-container">
      <form action="Logi_register">
        <p><label><i class="fa fa-user"></i> Username</label></p>
        <input class="w3-input w3-border" type="text" placeholder="Enter username" name="uid">
        <p><label><i class="fa fa-lock"></i> Password</label></p>
        <input class="w3-input w3-border" type="password" placeholder="Enter password" name="pid">
        <input class="w3-button w3-block w3-teal w3-padding-16 w3-section w3-right" type="submit"> 
        
       </form>  
      </div>
    </div>
  </div>

  <!-- The Contact Section -->
  <div class="w3-container w3-content w3-padding-64" style="max-width:800px" id="contact">
    <h2 class="w3-wide w3-center">CONTACT</h2>
    <p class="w3-opacity w3-center"><i>Drop a note!</i></p>
    <div class="w3-row w3-padding-32">
      <div class="w3-col m6 w3-large w3-margin-bottom">
        <i class="fa fa-map-marker" style="width:30px"></i> Kochi Infopark, Kerala, India<br>
        <i class="fa fa-phone" style="width:30px"></i> Phone: +91 9650254733<br>
        <i class="fa fa-envelope" style="width:30px"> </i> Email: reachyou@gmail.com<br>
      </div>
      <div class="w3-col m6">
        <form action="/action_page.php" target="_blank">
          <div class="w3-row-padding" style="margin:0 -16px 8px -16px">
            <div class="w3-half">
              <input class="w3-input w3-border" type="text" placeholder="Email" required name="Email">
            </div>
          </div>
          <input class="w3-input w3-border" type="text" placeholder="Message" required name="Message">
          <button class="w3-button w3-black w3-section w3-right" type="submit">SEND</button>
        </form>
      </div>
    </div>
  </div>
  
<!-- End Page Content -->
</div>

<!-- Image of location/map -->
<img src="/w3images/map.jpg" class="w3-image w3-greyscale-min" style="width:100%">

<!-- Footer -->
<footer class="w3-container w3-padding-64 w3-center w3-opacity w3-light-grey w3-xlarge">
  <i class="fa fa-facebook-official w3-hover-opacity"></i>
  <i class="fa fa-instagram w3-hover-opacity"></i>
  <i class="fa fa-snapchat w3-hover-opacity"></i>
  <i class="fa fa-pinterest-p w3-hover-opacity"></i>
  <i class="fa fa-twitter w3-hover-opacity"></i>
  <i class="fa fa-linkedin w3-hover-opacity"></i>
  <p class="w3-medium">Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">Amazon</a></p>
</footer>

<script>
// Automatic Slideshow - change image every 4 seconds
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 4000);    
}

// Used to toggle the menu on small screens when clicking on the menu button
function myFunction() {
  var x = document.getElementById("navDemo");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else { 
    x.className = x.className.replace(" w3-show", "");
  }
}

// When the user clicks anywhere outside of the modal, close it
var modal = document.getElementById('ticketModal');
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>

</body>
</html>