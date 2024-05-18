package com.HospitalAppointments;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AppointmentUpdateServlet
 */
@WebServlet("/AppointmentUpdateServlet")
public class AppointmentUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String AppID = request.getParameter("appointmentid");
		String RoomID = request.getParameter("roomid");
		String DoctorID = request.getParameter("doctorid");
		String Date = request.getParameter("date");
		String Time = request.getParameter("time");
		
		boolean isTrue;
		
		isTrue = AppointmentDButil.UpdateAppointment(AppID, RoomID, DoctorID, Date, Time);
		
		if(isTrue == true) {
			List<HospitalAppointments> appDetails = AppointmentDButil.getAppointmentDetails(AppID);
			request.setAttribute("appDetails", appDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("ViewAppointment.jsp");
			dis.forward(request, response);
		}
		else {
			List<HospitalAppointments> appDetails = AppointmentDButil.getAppointmentDetails(AppID);
			request.setAttribute("appDetails", appDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("ViewAppointment.jsp");
			dis.forward(request, response);
		}
		
	}

}
