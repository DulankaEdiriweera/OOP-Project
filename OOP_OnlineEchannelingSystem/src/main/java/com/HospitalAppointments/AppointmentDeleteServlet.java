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
 * Servlet implementation class AppointmentDeleteServlet
 */
@WebServlet("/AppointmentDeleteServlet")
public class AppointmentDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String ID = request.getParameter("appointmentid");
		
		boolean isTrue;
		
		isTrue = AppointmentDButil.DeleteAppointment(ID);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("ScheduleAppointment.jsp");
			dispatcher.forward(request, response);
		}
		else {
			List<HospitalAppointments> appDetails = AppointmentDButil.getAppointmentDetails(ID);
			request.setAttribute("appDetails", appDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("ViewAppointment.jsp");
			dispatcher.forward(request, response);
		}
	}

}
