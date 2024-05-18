<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Edit Appointment </title>
	
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

	<% 
		String ID = request.getParameter("apointmentID");
		String RoomID = request.getParameter("roomID");
		String DoctorID = request.getParameter("doctorID");
		String Date = request.getParameter("date");
		String Time = request.getParameter("time");
	%>

	<div align="center">
		<form action="updateAppointment" method="POST" class="container1">
		
			<h3> Update the Data </h3>
			
			<table>
				<tr>
					<td><label> Appointment ID : </label></td>
					<td><input type="text" name="appointmentid" value="<%= ID %>" readonly></td>
				</tr>
				
				<tr>
					<td><label> Room ID : </label></td>
					<td><input type="text" name="roomid" value="<%= RoomID %>"></td>
				</tr>
				
				<tr>
					<td><label> Doctor ID : </label></td>
					<td><input type="text" name="doctorid" value="<%= DoctorID %>"></td>
				</tr>
				
				<tr>
					<td><label> Date : </label></td>
					<td><input type="date" name="date" value="<%= Date %>"></td>
				</tr>
				
				<tr>
					<td><label> Time : </label></td>
					<td><input type="time" name="time" value="<%= Time %>"></td>
				</tr>
				
				<tr>
					<td colspan="2" align="center"><input type="submit" name="Update" value="Update"></td>
				</tr>
				
			</table>
			
			
		</form>
		</div>
</body>
</html>