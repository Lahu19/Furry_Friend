package com.connnection;

import java.sql.DriverManager;

import com.mysql.jdbc.Connection;

public class JDBCConnnection {
public static Connection con;
	
	public static Connection getconnection() {
		
	try {
		Class.forName("com.mysql.jdbc.Driver");
		con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/furryfriends","root","");
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
		return con;
	}
}
