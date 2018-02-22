<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/bootstrap.css" rel="stylesheet">
    <link href="css/global.css" type="text/css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <title>Edit expends</title>
  </head>
  <body>
  
<%
	String driverName = "com.mysql.jdbc.Driver";
	String connectionUrl= "jdbc:mysql://localhost/";
	String dbName = "admin_db";
	String userId = "admin_admin";
	String password = "jarek1234";
	
	try {
		Class.forName(driverName);
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	
	int id = Integer.parseInt(request.getParameter("id"));
		
%>
  
  	<%
  	
  		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");	 // HTTP 1.1
  		response.setHeader("Pragma", "no-cache"); // HTTP 1.0
  		response.setHeader("Expires", "0"); // PROXIES
  	
  		if(session.getAttribute("uname") == null)
  		{
  			response.sendRedirect("login.jsp");
  		}
  	%>
  
    <div class="container-fluid bg">
      <div class="row">
        <div class="col-md-1 col-sm-1 col-xs-12"></div>
        <div class="col-md-10 col-sm-10 col-xs-12">
         
          <form action="updateExp.jsp" method="get" class="form-container">
          
            		<%
            		try{
            			connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
            			statement = connection.createStatement();
            			String sql = "SELECT * FROM `1_january_2018` WHERE `id`='"+id+"'";
            			
            			resultSet = statement.executeQuery(sql);
            			while(resultSet.next()){
            		%>
          
          <input type="hidden" name="id" value="<%=resultSet.getInt("id") %>">
          
            <center><img src="images/login2.png"></center>
            <center><h1>Edit Form</h1></center>
            <center><h6>Expends Management System</h6></center><br />
            
            <ul class="nav nav-tabs nav-fill">
			  <li class="nav-item">
			    <a class="nav-link" href="loggedin.jsp">Home</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="userslist.jsp">Users List</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link active" href="januaryExp.jsp">January expends</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="Logout">Logout</a>
			  </li>
			</ul>  
			
			<br />
            
      
      <div class="row">
          <div class="col-md-2 col-sm-2 col-xs-12">
            <div class="form-group">
              <label>Date:</label>
              <input type="text" class="form-control" name="date" value="<%=resultSet.getString("date") %>">
            </div>
          </div>        
          <div class="col-md-1 col-sm-1 col-xs-12">
            <div class="form-group">
              <label>Eating:</label>
              <input type="text" class="form-control" name="eating" value="<%=resultSet.getString("eating") %>">
            </div>
          </div>          
          <div class="col-md-1 col-sm-1 col-xs-12">
            <div class="form-group">
              <label>Mobile:</label>
              <input type="text" class="form-control" name="mobile" value="<%=resultSet.getString("mobile") %>">
            </div>
          </div>         
          <div class="col-md-1 col-sm-1 col-xs-12">
            <div class="form-group">
              <label>Flat:</label>
              <input type="text" class="form-control" name="flat" value="<%=resultSet.getString("flat") %>">
            </div>
          </div>
          <div class="col-md-1 col-sm-1 col-xs-12">
            <div class="form-group">
              <label>Fuel:</label>
              <input type="text" class="form-control" name="fuel" value="<%=resultSet.getString("fuel") %>">
            </div>
          </div>
          <div class="col-md-1 col-sm-1 col-xs-12">
            <div class="form-group">
              <label>Tickets:</label>
              <input type="text" class="form-control" name="tickets" value="<%=resultSet.getString("tickets") %>">
            </div>
          </div>          
          <div class="col-md-1 col-sm-1 col-xs-12">
            <div class="form-group">
              <label>Payment:</label>
              <input type="text" class="form-control" name="payment" value="<%=resultSet.getString("payment") %>">
            </div>
          </div>        
          <div class="col-md-1 col-sm-1 col-xs-12">
            <div class="form-group">
              <label>Other:</label>
              <input type="text" class="form-control" name="other" value="<%=resultSet.getString("other") %>">
            </div>
          </div>          
          <div class="col-md-3 col-sm-3 col-xs-12">
            <div class="form-group">
              <label>Action:</label>
              <div style="text-align: right"><button type="submit" class="btn btn-success btn-block">Update</button></div>  
            </div>
          </div>  
	   </div>  
	   
	   <hr><br />
	   
     
            		<%
            		}
            		} catch (Exception e1) {
            			e1.printStackTrace();
            		}
            		%>
            <div style="text-align:center"><label class="label-bottom">Copyright c 2018 by Jaroslaw Kowalczyk</label></div>
          </form>
        </div>
        <div class="col-md-1 col-sm-1 col-xs-12"></div>
      </div>
    </div>
  </body>
</html>