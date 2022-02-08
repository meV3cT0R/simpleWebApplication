package com.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class DB {
	public static Connection getDBConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/webdb","root","");
		}catch(ClassNotFoundException exception) {
			exception.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}
}
