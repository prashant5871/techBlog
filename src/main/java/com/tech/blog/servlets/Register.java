package com.tech.blog.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;

@WebServlet(name = "Register", urlPatterns = {"/RegisterServlet"})
public class Register extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String gender = request.getParameter("gender");
		String check = request.getParameter("check");
		
		
		if(check != null) {
//			out.println("<h1>name = " + name + " email = " + email + " passowrd = " +password+ " gender="+gender+"</h1>");
			User user = new User(name,email,password,gender);
			try {
				Thread.sleep(500);
			} catch (Exception e) {
				e.printStackTrace();
			}
			UserDao dao = new UserDao(ConnectionProvider.getConnection());
			dao.saveUser(user);
			out.print("done");
		}else {
			out.println("<h1>please agree with terms and conditions...</h1>");
		}
	}

}
