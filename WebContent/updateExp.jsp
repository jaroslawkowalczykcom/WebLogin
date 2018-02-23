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
		String date = request.getParameter("date");
		String eating = request.getParameter("eating");
		String mobile = request.getParameter("mobile");
		String flat = request.getParameter("flat");
		String fuel = request.getParameter("fuel");
		String tickets = request.getParameter("tickets");
		String payment = request.getParameter("payment");
		String other = request.getParameter("other");
		
		try{
			int row = 0;
			
			connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
			String query = "UPDATE `1_january_2018` SET `date`=?,`eating`=?,`mobile`=?,`flat`=?,`fuel`=?,`tickets`=?,`payment`=?,`other`=? WHERE `id`=?";
			
			ps = connection.prepareStatement(query);
			
			ps.setString(1, date);
			ps.setString(2, eating);
			ps.setString(3, mobile);
			ps.setString(4, flat);
			ps.setString(5, fuel);
			ps.setString(6, tickets);
			ps.setString(7, payment);
			ps.setString(8, other);
			ps.setInt(9, id);
			
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