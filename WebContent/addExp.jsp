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
<title>Add expends</title>
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
		String connectionUrl= "jdbc:mysql://localhost/";
		String dbName = "login";
		String userId = "root";
		String password = "";
		
		try {
			Class.forName(driverName);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		Connection connection = null;
		PreparedStatement ps = null;
		
		
		
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
			String query = "INSERT INTO `1_january_2018`(`date`, `eating`, `mobile`, `flat`, `fuel`, `tickets`, `payment`, `other`) VALUES (?,?,?,?,?,?,?,?)";
			
			ps = connection.prepareStatement(query);
			
			ps.setString(1, date);
			ps.setString(2, eating);
			ps.setString(3, mobile);
			ps.setString(4, flat);
			ps.setString(5, fuel);
			ps.setString(6, tickets);
			ps.setString(7, payment);
			ps.setString(8, other);

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