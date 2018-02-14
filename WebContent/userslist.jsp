<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
	Statement statement = null;
	ResultSet resultSet = null;
%>


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
    <title>Users List</title>
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
  
    <div class="container-fluid bg">
      <div class="row">
        <div class="col-md-1 col-sm-1 col-xs-12"></div>
        <div class="col-md-10 col-sm-10 col-xs-12">
         
          <form action="adduser.jsp" class="form-container">
            <center><img src="images/login2.png"></center>
            <center><h1>Users list</h1></center>
            <center><h6>Expends Management System</h6></center><br />
            
      
      <div class="row">
          <div class="col-md-2 col-sm-2 col-xs-12">
            <div class="form-group">
              <label>Username:</label>
              <input type="text" class="form-control" name="username" value="">
            </div>
          </div>
          
          <div class="col-md-2 col-sm-2 col-xs-12"> 
            <div class="form-group">
              <label>Password:</label>
              <input type="password" class="form-control" name="password" value="">
            </div>
          </div>
            
          <div class="col-md-2 col-sm-2 col-xs-12"> 
            <div class="form-group">
              <label>First Name:</label>
              <input type="text" class="form-control" name="firstname" value="">
            </div>
          </div>
          
          <div class="col-md-2 col-sm-2 col-xs-12"> 
            <div class="form-group">
              <label>Last Name:</label>
              <input type="text" class="form-control" name="lastname" value="">
            </div>
          </div>
          
          <div class="col-md-2 col-sm-2 col-xs-12">
            <div class="form-group">
              <label>E-mail address:</label>
              <input type="text" class="form-control" name="email" value="">
            </div>
          </div>
          
          <div class="col-md-1 col-sm-1 col-xs-12"> 
            <div class="form-group">
              <label>Age:</label>
              <input type="text" class="form-control" name="age" value="">
            </div>
          </div> 
          
          <div class="col-md-1 col-sm-1 col-xs-12"> 
            <div class="form-group">
              <label>Action:</label>
              <button type="submit" class="btn btn-success btn-block">Add</button>
             
            </div>
          </div> 
	   </div>   
	   
	   <hr>   
	   
      <div class="row">
          <div class="col-md-2 col-sm-2 col-xs-12">
            <div class="form-group">
              <label>January salary:</label>
              <input type="text" class="form-control" name="januarySalary">
            </div>
            <div class="form-group">
              <label>February salary:</label>
              <input type="text" class="form-control" name="februarySalary">
            </div>
          </div>
          
          <div class="col-md-2 col-sm-2 col-xs-12">
            <div class="form-group">
              <label>March salary:</label>
              <input type="text" class="form-control" name="marchSalary">
            </div>
            <div class="form-group">
              <label>April salary:</label>
              <input type="text" class="form-control" name="aprilSalary">
            </div>
          </div>
            
          <div class="col-md-2 col-sm-2 col-xs-12">
            <div class="form-group">
              <label>May salary:</label>
              <input type="text" class="form-control" name="maySalary">
            </div>
            <div class="form-group">
              <label>June salary:</label>
              <input type="text" class="form-control" name="juneSalary">
            </div>
          </div>
          
          <div class="col-md-2 col-sm-2 col-xs-12">
            <div class="form-group">
              <label>July salary:</label>
              <input type="text" class="form-control" name="julySalary">
            </div>
            <div class="form-group">
              <label>August salary:</label>
              <input type="text" class="form-control" name="augustSalary">
            </div>
          </div>
          
          <div class="col-md-2 col-sm-2 col-xs-12">
            <div class="form-group">
              <label>September salary:</label>
              <input type="text" class="form-control" name="septemberSalary">
            </div>
            <div class="form-group">
              <label>October salary:</label>
              <input type="text" class="form-control" name="octoberSalary">
            </div>
          </div>
          
          <div class="col-md-2 col-sm-2 col-xs-12">
            <div class="form-group">
              <label>November salary:</label>
              <input type="text" class="form-control" name="novemberSalary">
            </div>
            <div class="form-group">
              <label>December salary:</label>
              <input type="text" class="form-control" name="decemberSalary">
            </div>
          </div>
	   </div>
	   
	   <hr><br />     
            
            <div class="table-responsive">
            <table class="table table-hover table-sm">
            	<thead class="thead-light">
            		<tr>
            		    <th scope="col">Edit</th>
            			<th scope="col">Delete</th>
            			<th scope="col">Id</th>
            			<th scope="col">Username</th>
            			<th scope="col">Password</th>
            			<th scope="col">First Name</th>
            			<th scope="col">Last Name</th>
            			<th scope="col">Email</th>
            			<th scope="col">Age</th>
            	 		<th scope="col">January Salary</th>
            			<th scope="col">February Salary</th>
            			<th scope="col">March Salary</th>
            			<th scope="col">April Salary</th>
            			<th scope="col">May Salary</th>
            			<th scope="col">June Salary</th>
            			<th scope="col">July Salary</th>
            			<th scope="col">August Salary</th>
            			<th scope="col">September Salary</th>
            			<th scope="col">October Salary</th>
            			<th scope="col">November Salary</th>
            			<th scope="col">December Salary</th>	
            		</tr>
            	</thead>
            	
            		<%
            		try{
            			connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
            			statement = connection.createStatement();
            			String sql = "SELECT * FROM `dane`";
            			
            			resultSet = statement.executeQuery(sql);
            			while(resultSet.next()){
            		%>
            		
           		<tbody>
           			<tr>
           			    <td><a href="editform.jsp?id=<%=resultSet.getString("id") %>" class="btn btn-warning btn-block btn-sm" role="button">Edit</a></td>
	            		<td><a href="delete.jsp?id=<%=resultSet.getString("id") %>" class="btn btn-danger btn-block btn-sm" role="button">Delete</a></td>
	       
	           			<td><%=resultSet.getString("id") %></td>
	            		<td><%=resultSet.getString("username") %></td>
	            		<td><%=resultSet.getString("password") %></td>
	            		<td><%=resultSet.getString("firstname") %></td>
	            		<td><%=resultSet.getString("lastname") %></td>
	            		<td><%=resultSet.getString("email") %></td>
	            		<td><%=resultSet.getString("age") %></td>

	            		<td><%=resultSet.getString("january_salary") %></td>
	            		<td><%=resultSet.getString("february_salary") %></td>
	            		<td><%=resultSet.getString("march_salary") %></td>
	            		<td><%=resultSet.getString("april_salary") %></td>
	            		<td><%=resultSet.getString("may_salary") %></td>
	            		<td><%=resultSet.getString("june_salary") %></td>
	            		<td><%=resultSet.getString("july_salary") %></td>
	            		<td><%=resultSet.getString("august_salary") %></td>
	            		<td><%=resultSet.getString("september_salary") %></td>
	            		<td><%=resultSet.getString("october_salary") %></td>
	            		<td><%=resultSet.getString("november_salary") %></td>
	            		<td><%=resultSet.getString("december_salary") %></td>     
            		</tr>	
            		
            		<%
            		}
            		} catch (Exception e1) {
            			e1.printStackTrace();
            		}
            		%>
            		
           		</tbody>
            </table>
            </div>
            
            <br />

            <center><label class="label-bottom">Copyright c 2018 by Jaroslaw Kowalczyk</label></center>
          </form>
        </div>
        <div class="col-md-1 col-sm-1 col-xs-12"></div>
      </div>
    </div>
  </body>
</html>