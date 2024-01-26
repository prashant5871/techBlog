package com.tech.blog.dao;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;

public class UserDao {
	private Connection con = null;

	public UserDao(Connection con) {
		this.con = con;
	}

	public boolean saveUser(User u) {
		boolean flag = false;
		try {
			String query = "insert into user(name,email,password,gender) values(?,?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(query);

			pstmt.setString(1, u.getName());
			pstmt.setString(2, u.getEmail());
			pstmt.setString(3, u.getPassword());
			pstmt.setString(4, u.getGender());

			int rowAffected = pstmt.executeUpdate();

			flag = (rowAffected > 0);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return flag;

	}

	public User getUserByEmailAndPassword(String email, String password) {
		User u = null;

		try {
			String query = "select * from user where email=? and password=?";
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1, email);
			pstmt.setString(2, password);

			ResultSet res = pstmt.executeQuery();

			if (res.next()) {
				int id = res.getInt(1);
				String name = res.getString("name");
				String em = res.getString("email");
				String pass = res.getString("password");
				String gender = res.getString("gender");
				String profile = res.getString("profile");
				u = new User(id, name, em, pass, gender,profile);
			} else {
				System.out.println("Invalid information...");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return u;
	}

}
