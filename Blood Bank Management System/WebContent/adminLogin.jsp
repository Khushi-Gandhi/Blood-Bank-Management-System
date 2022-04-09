<!DOCTYPE html>
<html lang="en">
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="submit"]
{
    border: solid 2px;
    background:white;
    height: 50px;
    font-size: 16px;
	margin-left:35%;
	padding:15px;
	width:33%;	
/* 	border-radius: 25px; */
}
</style>
</head>
<body>
<div class="header">
  <a href="#default" class="logo"><img  style="border-radius:50%;" class="logo" src="Logo0.png"></a>
  <div class="header-right">
    <a href="index.jsp">Home</a>
    <a class="active" href="adminLogin.jsp">Admin Login</a>
  </div>
</div>
<body>
<div class="container">
<br>
	<br>
	
	<%
	String msg = request.getParameter("msg");
	if("invalid".equals(msg)){
	%>
	<center><font color="red" size="5">Invalid Username/Password !</font></center>
	<%
	}
	%>

<form action="adminLoginAction.jsp" method="post">
<div class="form-group">
<center><h2>Username</h2></center>
<input type="text" placeholder="Enter Username" name="username" required>
<center><h2>Password</h2></center>
<input type="password" placeholder="Enter Password" name="password" required>
<br><br>
<center><button type="submit" class="button">Submit</button></center>

</div>
</form>
	
	
</div>
<br>
<br>
<br>
<br>
<h3><center>All Rights Reserved @Blood Bank </center></h3>
</body>
</html>
