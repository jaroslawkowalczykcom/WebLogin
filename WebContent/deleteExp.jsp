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
<title>Delete</title>
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
		
		try{
			int row = 0;
			
			connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
			String query = "DELETE FROM `1_january_2018` WHERE `id`=?";
			ps = connection.prepareStatement(query);
			ps.setInt(1, id);
			row = ps.executeUpdate();
			
			if(row > 0){
				response.sendRedirect("januaryExp.jsp");
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