package com.Db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Driver;

public class DBConnect {
	public static 	Connection conn;
	public static Connection getConn() {
	 
			try {
				if(conn==null) {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mynotes","root","1234");
			} }catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
	
		
		return conn;
	}
}
