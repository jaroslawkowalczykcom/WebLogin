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
    <title>Edit Form</title>
  </head>
  <body>
  
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
         
          <form action="update.jsp" method="get" class="form-container">
          
            		<%
            		try{
            			connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
            			statement = connection.createStatement();
            			String sql = "SELECT * FROM `dane` WHERE `id`='"+id+"'";
            			
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
			    <a class="nav-link active" href="userslist.jsp">Users List</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="januaryExp.jsp">January expends</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="Logout">Logout</a>
			  </li>
			</ul>    
			
			<br />
            
      <div class="row">
          <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="form-group">
              <label>Username:</label>
              <input type="text" class="form-control" name="username" value="<%=resultSet.getString("username") %>">
            </div>
            <div class="form-group">
              <label>Password:</label>
              <input type="text" class="form-control" name="password" value="<%=resultSet.getString("password") %>">
            </div>
          </div>
            
          <div class="col-md-4 col-sm-4 col-xs-12"> 
            <div class="form-group">
              <label>First Name:</label>
              <input type="text" class="form-control" name="firstname" value="<%=resultSet.getString("firstname") %>">
            </div>
            <div class="form-group">
              <label>Last Name:</label>
              <input type="text" class="form-control" name="lastname" value="<%=resultSet.getString("lastname") %>">
            </div>
          </div>
          
          <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="form-group">
              <label>E-mail address:</label>
              <input type="text" class="form-control" name="email" value="<%=resultSet.getString("email") %>">
            </div>
            <div class="form-group">
              <label>Age:</label>
              <input type="text" class="form-control" name="age" value="<%=resultSet.getInt("age") %>">
            </div>
          </div> 
	   </div>   
	   
	   <hr><br />
	   
      <div class="row">
          <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="form-group">
              <label>January salary:</label>
              <input type="text" class="form-control" name="januarySalary" value="<%=resultSet.getString("january_salary") %>">
            </div>
            <div class="form-group">
              <label>February salary:</label>
              <input type="text" class="form-control" name="februarySalary" value="<%=resultSet.getString("february_salary") %>">
            </div>
            <div class="form-group">
              <label>March salary:</label>
              <input type="text" class="form-control" name="marchSalary" value="<%=resultSet.getString("march_salary") %>">
            </div>
            <div class="form-group">
              <label>April salary:</label>
              <input type="text" class="form-control" name="aprilSalary" value="<%=resultSet.getString("april_salary") %>">
            </div>
          </div>
            
          <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="form-group">
              <label>May salary:</label>
              <input type="text" class="form-control" name="maySalary" value="<%=resultSet.getString("may_salary") %>">
            </div>
            <div class="form-group">
              <label>June salary:</label>
              <input type="text" class="form-control" name="juneSalary" value="<%=resultSet.getString("june_salary") %>">
            </div>
            <div class="form-group">
              <label>July salary:</label>
              <input type="text" class="form-control" name="julySalary" value="<%=resultSet.getString("july_salary") %>">
            </div>
            <div class="form-group">
              <label>August salary:</label>
              <input type="text" class="form-control" name="augustSalary" value="<%=resultSet.getString("august_salary") %>">
            </div>
          </div>
          
          <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="form-group">
              <label>September salary:</label>
              <input type="text" class="form-control" name="septemberSalary" value="<%=resultSet.getString("september_salary") %>">
            </div>
            <div class="form-group">
              <label>October salary:</label>
              <input type="text" class="form-control" name="octoberSalary" value="<%=resultSet.getString("october_salary") %>">
            </div>
            <div class="form-group">
              <label>November salary:</label>
              <input type="text" class="form-control" name="novemberSalary" value="<%=resultSet.getString("november_salary") %>">
            </div>
            <div class="form-group">
              <label>December salary:</label>
              <input type="text" class="form-control" name="decemberSalary" value="<%=resultSet.getString("december_salary") %>">
            </div>
          </div>
	   </div>
	   <div class="row">
	   		<div class="col-md-12 col-sm-12 col-xs-12">
	   			<div style="text-align:center"><button type="submit" class="btn btn-success">Update Record</button></div>
	   		</div>
	   </div>
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