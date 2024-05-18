<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Schedule Appointment </title>
	<link rel="stylesheet" href="AppointmentStyle.css">
	
	<style type="text/css">
		.container1 {
 			width: 400px;
  			margin: 100px auto;
 			padding: 20px;
 			background-color: #ffffff;
  			border-radius: 5px;
  			box-shadow: 0 0 10px rgba(0, 0, 0, 0);
  			background:rgba(39,39,39,0.2);
			}
			
			
		label {
  			color:black;
  			font-size:18px
		}
		
		input[type="text"],input[type="date"],input[type="time"]{
  			width: 100%;
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
			<td width="100%">
				<div class="container1">
				<form action="insertAppointment" method = "POST">
					<h2 align="center"> Schedule an Appointment </h2>
					<table>
						<tr>
							<td><label for="roomID"> Room ID : </label></td>
							<td><input type="text" name="roomID" placeholder="Room ID" required></td>
						</tr>
						
						<tr>
							<td><label for="doctorID"> Doctor ID : </label></td>
							<td><input type="text" name="doctorID" placeholder="Doctor ID" required></td>
						</tr>
						
						<tr>
							<td><label for="date"> Date : </label></td>
							<td><input type="date" name="date" placeholder="date" required></td>
						</tr>
						
						<tr>
							<td><label for="time"> Time : </label></td>
							<td><input type="time" name="time" placeholder="time" required></td>
						</tr>
						
					</table>
					
					<div align = center>
							<input type="submit" value="Create Appointment" id="CreateAppointmentBtn">	
					</div>
					
				</form>
				</div>
			</td>
	</table>
</body>
</html>