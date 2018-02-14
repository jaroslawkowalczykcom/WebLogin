package com.register;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Register")
public class Register extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {
			String userName = request.getParameter("username");
			String password = request.getParameter("password");
			String firstName = request.getParameter("firstname");
			String lastName = request.getParameter("lastname");
			String email = request.getParameter("email");
			int age = Integer.parseInt(request.getParameter("age"));
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/login", "root", "");
			Statement st = con.createStatement();
			
			// Username veryfication
			String sqlUsernameCheck = "SELECT `username` FROM `dane` WHERE `username`='"+userName+"'";
			ResultSet rs = st.executeQuery(sqlUsernameCheck);
			
			int count = 0;
			while(rs.next())
			{
				count += 1;
			}
			
			if(count == 1)  // Username already exist
			{
				request.setAttribute("errorMessageUserExist", "Sorry, this Username already exist try with another.");
				request.getRequestDispatcher("register.jsp").forward(request, response);
			}
			else if(count > 1) // Duplicate user
			{
				request.setAttribute("errorMessageUserExist", "Duplicate User, access denied.");
				request.getRequestDispatcher("register.jsp").forward(request, response);
			}
			else    // Register successful
			{
				String sql = "INSERT INTO `dane` (`username`, `password`, `firstname`, `lastname`, `email`, `age`) VALUES (?, ?, ?, ?, ?, ?)";

				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, userName);
				ps.setString(2, password);
				ps.setString(3, firstName);
				ps.setString(4, lastName);
				ps.setString(5, email);
				ps.setInt(6, age);
				ps.executeUpdate();
				
				response.sendRedirect("login.jsp");
			}
			
		} catch (Exception e) {		
			e.printStackTrace();
		}
		
	}

}
