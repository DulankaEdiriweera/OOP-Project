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
 * Servlet implementation class HospitalAppointmentServlet
 */
@WebServlet("/HospitalAppointmentServlet")
public class HospitalAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String RoomID = request.getParameter("roomid");
		String DoctorID = request.getParameter("doctorid");
		String Date = request.getParameter("date");
		//String time = request.getParameter("time");
		
		try {
			List<HospitalAppointments> appDetails = AppointmentDButil.ValidateAppoiintment(RoomID, DoctorID, Date);
			request.setAttribute("appDetails", appDetails);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("ViewAppointment.jsp");
		dis.forward(request, response);
	}

}
