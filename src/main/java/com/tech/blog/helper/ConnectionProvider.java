package com.tech.blog.helper;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {
	static Connection con = null;

	public static Connection getConnection() {
		try {
			if (con == null) {
				String url = "jdbc:mysql://localhost:3306/techBlog";
				String user = "root";
				String password = "Prashant@23";

				con = DriverManager.getConnection(url, user, password);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return con;
	}
}
