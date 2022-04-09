<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
.mySlides {display:none;}

input[type="text"], input[type="mail"]
{
    border: solid 2px;
    background:white;
    height: 50px;
    font-size: 16px;
	margin-left:2%;
	padding:15px;	
}
</style>
</head>
<body>

<div class="header">
  <a href="#default" class="logo"><img style="border-radius:50%;" class="logo" src="Logo0.png"></a>
  
  <div class="header-right">
    <a class="active" href="index.jsp">Home</a>
    <a href="adminLogin.jsp">Admin Login</a>
  </div>
</div>

<div style="max-width:100%">
  <img class="mySlides"  src="slide1.jpg" >
  <img class="mySlides"  src="slide2.png" >
</div>
<script>
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
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>


<body>
  <br>
  <%
  String msg=request.getParameter("msg");
  if("valid".equals(msg)){  %>
  <center><font color="red" size="5">Form Submitted Successfully. You will be notified within 8 to 24 hours.</font></center>
  <%
  }
  if("invalid".equals(msg)){  %>
  <center><font color="red" size="5">Invalid Data! Try again.</font></center>
  <%
  }
  %>
 <center><h1>Enter your details to request for Blood!</h1></center><br>
 <form action="indexFormAction.jsp" method="post">
 <center>
 <input type="text" name="name" placeholder="Enter name" required> <br><br>
 <input type="text" name="mobilenumber" placeholder="Enter mobile number" required><br><br>
 <input type="mail" name="email" placeholder="Enter email address" required><br><br>
 <input type="text" name="bloodgroup" placeholder="Enter blood group" required><br><br>
 <button class="button1" ><span>Submit</span></button>
 
 </center>
 </form>
 
 
 
 
  <br>
  <br>

<div class="row1"> 
<div class="container"> 
<br>         
<br>
   
</div>
</div>
<h3><center>All Rights Reserved @Blood Bank  </center></h3>

</body>
</html>

