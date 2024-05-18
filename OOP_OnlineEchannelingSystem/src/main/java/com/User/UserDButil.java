package com.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class UserDButil {
	
	public static boolean InsertUser(String fname, String lname, String address, String DOB, String mobile, String Email, String pwd) {
		boolean isSuccess = false;
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/userdb";
		String user = "root";
		String password = "PWD@#123dula";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, password);
			Statement stmt = con.createStatement();
			
			String sql = "INSERT INTO user_table VALUES (0,'"+fname+"','"+lname+"','"+address+"','"+DOB+"','"+mobile+"','"+Email+"','"+pwd+"')";
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
	
}
