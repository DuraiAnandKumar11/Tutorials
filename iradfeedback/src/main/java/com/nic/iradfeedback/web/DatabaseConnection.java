package com.nic.iradfeedback.web;

import java.sql.Connection;
import java.sql.DriverManager;

import org.springframework.stereotype.Controller;

@Controller
public class DatabaseConnection {
	public Connection getConnect() {
		
		Connection connection = null;

		try {
			Class.forName("org.postgresql.Driver");

			connection = DriverManager.getConnection("jdbc:postgresql://10.163.0.3:5432/irad_feedbacks","postgres","Geoendb@23#");

			if (connection != null) {
				System.out.println("connected");
			}
			return connection;
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}
}
