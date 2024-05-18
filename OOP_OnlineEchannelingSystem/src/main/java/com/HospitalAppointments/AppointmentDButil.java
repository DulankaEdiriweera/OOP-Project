package com.HospitalAppointments;

import java.sql.Connection;
//import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AppointmentDButil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	
	public static List<HospitalAppointments> ValidateAppoiintment(String RoomID, String DoctorID, String Date){
		
		ArrayList<HospitalAppointments> app = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "SELECT * FROM appointments WHERE RoomID='"+RoomID+"'AND DoctorID='"+DoctorID+"' AND Date='"+Date+"'";
			
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int AppID = rs.getInt(1);
				String RID = rs.getString(2);
				String DID = rs.getString(3);
				String AppDate = rs.getString(4);
				String AppTime = rs.getString(5);
				
				HospitalAppointments a = new HospitalAppointments(AppID,RID,DID,AppDate,AppTime);
				app.add(a);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return app;
	}
	
	public static boolean ScheduleAppointment(String RoomID, String DoctorID, String Date,String Time) {
		
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "INSERT INTO appointments VALUES (0,'"+RoomID+"','"+DoctorID+"','"+Date+"','"+Time+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}else
				isSuccess = false;
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	
	public static boolean UpdateAppointment(String ID, String RoomID, String DoctorID, String Date, String Time) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "UPDATE appointments SET RoomID='"+RoomID+"',DoctorID='"+DoctorID+"',Date='"+Date+"',Time='"+Time+"' WHERE AppointmentID='"+ID+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess =true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	
	public static List<HospitalAppointments> getAppointmentDetails(String ID){
		
		int ConvertedID = Integer.parseInt(ID);
		
		ArrayList<HospitalAppointments> appointment = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "SELECT * FROM appointments WHERE AppointmentID='"+ConvertedID+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int AppID = rs.getInt(1);
				String RoomID = rs.getString(2);
				String DoctorID = rs.getString(3);
				String Date = rs.getString(4);
				String Time = rs.getString(5);
				
				HospitalAppointments ha = new HospitalAppointments(AppID,RoomID,DoctorID,Date,Time);
				appointment.add(ha);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return appointment;
		
	}
	
	
	public static boolean DeleteAppointment(String ID) {
		
		int ConvertedID = Integer.parseInt(ID);
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "DELETE FROM appointments WHERE AppointmentID='"+ConvertedID+"'";
			
			int r = stmt.executeUpdate(sql);
			
			if(r > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
}
