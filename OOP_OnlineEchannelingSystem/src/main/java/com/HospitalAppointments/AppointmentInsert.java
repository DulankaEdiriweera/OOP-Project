package com.HospitalAppointments;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AppointmentInsert
 */
@WebServlet("/AppointmentInsert")
public class AppointmentInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String RoomID = request.getParameter("roomID");
		String DoctorID = request.getParameter("doctorID");
		String Date = request.getParameter("date");
		String Time = request.getParameter("time");
		
		boolean isTrue;
		
		isTrue = AppointmentDButil.ScheduleAppointment(RoomID, DoctorID, Date, Time);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("Appointment.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
