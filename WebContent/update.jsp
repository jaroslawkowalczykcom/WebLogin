<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update</title>
</head>
<body>

  	<%
  	
  		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");	 // HTTP 1.1
  		response.setHeader("Pragma", "no-cache"); // HTTP 1.0
  		response.setHeader("Expires", "0"); // PROXIES
  	
  		if(session.getAttribute("uname") == null)
  		{
  			response.sendRedirect("login.jsp");
  		}
  	%>

	<%
		String driverName = "com.mysql.jdbc.Driver";
		String connectionUrl= "jdbc:mysql://jarq.nazwa.pl/";
		String dbName = "admin_db";
		String userId = "admin_admin";
		String password = "jarek1234";
		
		try {
			Class.forName(driverName);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		Connection connection = null;
		PreparedStatement ps = null;
		
		
		int id = Integer.parseInt(request.getParameter("id"));
		String userName = request.getParameter("username");
		String pass = request.getParameter("password");
		String firstName = request.getParameter("firstname");
		String lastName = request.getParameter("lastname");
		String email = request.getParameter("email");
		int age = Integer.parseInt(request.getParameter("age"));
		
		String januarySalary = request.getParameter("januarySalary");
		String februarySalary = request.getParameter("februarySalary");
		String marchSalary = request.getParameter("marchSalary");
		String aprilSalary = request.getParameter("aprilSalary");
		String maySalary = request.getParameter("maySalary");
		String juneSalary = request.getParameter("juneSalary");
		String julySalary = request.getParameter("julySalary");
		String augustSalary = request.getParameter("augustSalary");
		String septemberSalary = request.getParameter("septemberSalary");
		String octoberSalary = request.getParameter("octoberSalary");
		String novemberSalary = request.getParameter("novemberSalary");
		String decemberSalary = request.getParameter("decemberSalary");
		
		try{
			int row = 0;
			
			connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
			String query = "UPDATE `dane` SET `username`=?,`password`=?,`firstname`=?,`lastname`=?,`email`=?,`age`=?,`january_salary`=?,`february_salary`=?,`march_salary`=?,`april_salary`=?,`may_salary`=?,`june_salary`=?,`july_salary`=?,`august_salary`=?,`september_salary`=?,`october_salary`=?,`november_salary`=?,`december_salary`=? WHERE `id`=?";
			
			ps = connection.prepareStatement(query);
			
			ps.setString(1, userName);
			ps.setString(2, pass);
			ps.setString(3, firstName);
			ps.setString(4, lastName);
			ps.setString(5, email);
			ps.setInt(6, age);
			
			ps.setString(7, januarySalary);
			ps.setString(8, februarySalary);
			ps.setString(9, marchSalary);
			ps.setString(10, aprilSalary);
			ps.setString(11, maySalary);
			ps.setString(12, juneSalary);
			ps.setString(13, julySalary);
			ps.setString(14, augustSalary);
			ps.setString(15, septemberSalary);
			ps.setString(16, octoberSalary);
			ps.setString(17, novemberSalary);
			ps.setString(18, decemberSalary);
		
			
			ps.setInt(19, id);
			
			row = ps.executeUpdate();
			
			if(row > 0){
				response.sendRedirect("userslist.jsp");
			}else {
				out.println("Error in query..");
			}
		}
		catch(Exception ex){
			ex.printStackTrace();
		}
	%>


</body>
</html>