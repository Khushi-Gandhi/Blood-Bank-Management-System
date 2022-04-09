<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="com.sun.corba.se.spi.orbutil.fsm.Guard.Result" %>
<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.Connection" %>
<%@include file="header.html"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="email"], select,input[type="number"]
{
    border: solid 2px;
    background:white;
    height: 50px;
    font-size: 16px;
	padding:15px;
	width:60%;	
 	border-radius: 25px; 
	margin-left:20%;
}
h2,h1
{	
	margin-left:20%;
}
hr
{
width:60%;	
}
</style>
</head>
<body>

<%  String msg=request.getParameter("msg");
if("valid".equals(msg)){  %>
<center><font color="red" size="5">Successfully Updated.</font></center>
<%
}
if("invalid".equals(msg)){  %>
<center><font color="red" size="5">Some thing went wrong! Try again.</font></center>
<%
}
%>

<%
int id=1;
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select max(id) from donor");
	if(rs.first()){
		id=rs.getInt(1);
		id = id + 1;
	}
 %>

<div class="container">
<h1 style="color:red;">Donor ID:  <%out.println(id); %>
</div>

<%
}
catch(Exception e){

}
%>

<div class="container"> 
<form action="addNewDonorAction.jsp" method="post">
<input type="hidden" name="id" value=" <%out.println(id); %> ">
<h2>Name</h2>
<input type="text" placeholder="Enter Name" name="name">
<hr>
<h2>Father's Name</h2>
<input type="text" placeholder="Enter Father's Name" name="father">
<hr>
<h2>Mother's Name</h2>
<input type="text" placeholder="Enter Mother's Name" name="mother">
<h2>Mobile Number</h2>
<input type="number" placeholder="Enter Mobile Number" name="mobilenumber">
<hr>
<h2>Gender</h2>
<select name="gender">
<option value="Male">Male</option>
<option value="Female">Female</option>
<option value="Others">Others</option>
</select>
<hr>
<h2>Email</h2>
<input type="email" placeholder="Enter Email" name="email">
<hr>
<h2>Blood Group</h2>
<select name="bloodgroup">
<option value="A+">A+</option>
<option value="A-">A-</option>
<option value="B+">B+</option>
<option value="B-">B-</option>
<option value="O+">O+</option>
<option value="O-">O-</option>
<option value="AB+">AB+</option>
<option value="AB-">AB-</option>
</select>
<hr>
<h2>Address</h2>
<input type="text" placeholder="Enter Address" name="address">
<br>
<center><button type="submit" class="button">Save</button> </center>

</form>
</div>

<br>
<br>
<br>
<br>
<h3><center>All Rights Reserved @Blood Bank </center></h3>

</body>
</html>