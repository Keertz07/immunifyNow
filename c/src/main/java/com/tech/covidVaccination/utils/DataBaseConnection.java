package com.tech.covidVaccination.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.springframework.stereotype.Component;

@Component
public class DataBaseConnection {
	public Connection conn=null;
		
	public Connection dbConnection() throws SQLException,ClassNotFoundException{
		try {
				Class.forName("com.mysql.jdbc.Driver");
				conn=DriverManager.getConnection("jdbc:mysql://localhost:3308/covid","root","admin");
				
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
}
