package com.HospitalAppointments;

public class HospitalAppointments {
	
	private int AppointmentID;
	private String RoomID;
	private String DoctorID;
	private String Date;
	private String Time;
	
	
	public HospitalAppointments(int appointmentID, String roomID, String doctorID, String date, String time) {
		this.AppointmentID = appointmentID;
		this.RoomID = roomID;
		this.DoctorID = doctorID;
		this.Date = date;
		this.Time = time;
	}


	public int getAppointmentID() {
		return AppointmentID;
	}

	public String getRoomID() {
		return RoomID;
	}

	public String getDoctorID() {
		return DoctorID;
	}

	public String getDate() {
		return Date;
	}


	public String getTime() {
		return Time;
	}

	
	
}
