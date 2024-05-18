<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Registration Page </title>
	<link rel="stylesheet" href="RegisterStyle.css">
	<style>
		body{
	background-image:url("images/doctors2.jpg");
	background-size:cover;
	background-repeat:no-repeat;
	background-attachment:fixed;
}
	</style>
	
</head>
<body>

<%@ include file = "Header.jsp" %>

	<div class = "container1">
	<form action = "insert" method = "POST" onsubmit="return checkPassword()">
		<h1 align = "center"> Create an Account </h1>
		<table>
			<tr>
				<td><label for="FirstName"> First Name </label></td>
				<td><input type="text" name="FirstName" placeholder="First Name" required></td>
			</tr>
			
			<tr>
				<td><label for="LastName"> Last Name </label></td>
				<td><input type="text" name="LastName" placeholder="Last Name" required></td>
			</tr>
			
			<tr>
				<td><label for="Address"> Address </label></td>
				<td><input type="text" name="Address" placeholder="Address" required></td>
			</tr>
			
			<tr>
				<td><label for="DOB"> Date of Birth </label></td>
				<td><input type="date" name="DOB" placeholder="mm/dd/yyyy" required></td>
			</tr>
			
			<tr>
				<td><label for="mobile"> Mobile Number </label></td>
				<td><input type="tel" name="mobile" placeholder="0777777777" pattern="[0-9]{10}" required></td>
			</tr>
			
			<tr>
				<td><label for="email" >E-mail </label></td>
				<td><input type="email" name ="email" placeholder="abc@gmail.com" pattern="[a-z0-9.-+_%]+@[a-z0-9.-]+\.[a-z]{2,3} " required></td>
			</tr>
			
			<tr>
				<td><label for="pwd"> Password </label></td>
				<td><input type="password" name="pass" id="pwd" required></td>
			</tr>
			
			<tr>
				<td><label for="cnfrmpwd"> Re-Enter Password </label></td>
				<td><input type="password" name="cpass" id="cnfrmpwd" required></td>
			</tr>
			
		</table>
		<br>
		<div align = center>
			<input type="submit" value="Register" id="RegisterBtn">	
		</div>
		</form>
		</div>
		
		<script>
			function checkPassword(){
			if(document.getElementById("pwd").value != document.getElementById("cnfrmpwd").value){
				alert("Password Mismatched!");
				return false;
			}
			else{
				alert("Success");
				return true;
			}
		}
		</script>

<%@ include file = "Footer.jsp"%>
		
</body>
</html>