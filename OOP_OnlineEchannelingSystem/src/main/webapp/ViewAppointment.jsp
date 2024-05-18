<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> View Appointment </title>
	<link rel="stylesheet" href="AppointmentStyle.css">
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
				<table border="1">
				<c:forEach var ="app" items="${appDetails}">
	
				<c:set var="appointmentID" value="${app.appointmentID}"/>
				<c:set var="roomID" value="${app.roomID}"/>
				<c:set var="doctorID" value="${app.doctorID}"/>
				<c:set var="date" value="${app.date}"/>
				<c:set var="time" value="${app.time}"/>
	
				<tr>
					<th> Appointment ID </th>
					<th> Room ID </th>
					<th> Doctor ID </th>
					<th> Date </th>
					<th> Time </th>
					<th> Edit </th>
					<th> Delete </th>
				</tr>
	
				<tr>
					<td>${app.appointmentID}</td>
					<td>${app.roomID}</td>
					<td>${app.doctorID}</td>
					<td>${app.date}</td>
					<td>${app.time}</td>
		
				<c:url value="UpdateAppointment.jsp" var="appointmentUpdate">
					<c:param name="apointmentID" value="${appointmentID}"/>
					<c:param name="roomID" value="${roomID}"/>
					<c:param name="doctorID" value="${doctorID}"/>
					<c:param name="date" value="${date}"/>
					<c:param name="time" value="${time}"/>
				</c:url>
		
					<td><a href="${appointmentUpdate}"><input type="button" name="update" value="Update"></a></td>
		
		
				<c:url value="DeleteAppointment.jsp" var="appointmentDelete">
					<c:param name="apointmentID" value="${appointmentID}"/>
					<c:param name="roomID" value="${roomID}"/>
					<c:param name="doctorID" value="${doctorID}"/>
					<c:param name="date" value="${date}"/>
					<c:param name="time" value="${time}"/>
				</c:url>
		
					<td><a href="${appointmentDelete}"><input type="button" name="delete" value="Delete"></a></td>
				</tr>
	
				</c:forEach>
	
				</table>
   				
			</td>
	</table>
	
</body>
</html>