<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Appointments </title>
	<link rel="stylesheet" href="AppointmentStyle.css">
	<style type="text/css">
		
		body{
			margin: 0;
		}
		
		input[type="text"],input[type="date"],input[type="time"]{
  			width: 50%;
  			padding: 10px;
  			border-radius: 3px;
 			border: 1px solid #ccc;
  			box-sizing: border-box;
  			margin-bottom: 20px;
		}
		
		input[type="submit"] {
 			 background-color: white;
 	 		 color: black;
  			 padding: 10px 20px;
  			 border: 2px solid black;
  			 border-radius: 3px;
  			 cursor: pointer;
		}

		input[type="submit"]:hover {
  				background-color: red;
		}
	</style>
</head>
<body>
	<table>
		<tr>
			<td>
				<ul>
  					<li><a href="Appointment.jsp"> DashBoard </a></li>
  					<li><a href="ScheduleAppointment.jsp"> Schedule Appointment </a></li>
  					<li><a href="#"> View Appointment </a></li>
  					<li><a href="#"> Logout </a></li>
				</ul>
				<img src="images\image1.jpeg" alt="image not found" width="400px">
			</td>
			<td width="100%" align="center">
				<form action="searchAppointment" method="POST">
					<h3 align = "center"> Search Appointment </h3>
        			Room ID : <input type="text" name="roomid" placeholder="Room ID"><br>
        			Doctor ID : <input type="text" name="doctorid" placeholder="Doctor ID"><br>
        			Date : <input type="date" name="date" placeholder="Date"><br>
        			
					<input type="submit" value="Search" id="searchbtn">	
   				</form>	
			</td>
			<tr>
				<td colspan="2"></td>
			</tr>	
	</table>
</body>
</html>