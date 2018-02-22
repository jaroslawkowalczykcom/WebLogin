<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
    <title>January expends</title>
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
         
          <form action="addExp.jsp" class="form-container">
            <center><img src="images/login2.png"></center>
            <center><h1>January</h1></center>
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
              <input type="text" class="form-control" name="date" value="YYYY-MM-DD">
            </div>
          </div>        
          <div class="col-md-1 col-sm-1 col-xs-12">
            <div class="form-group">
              <label>Eating:</label>
              <input type="text" class="form-control" name="eating" value="0">
            </div>
          </div>          
          <div class="col-md-1 col-sm-1 col-xs-12">
            <div class="form-group">
              <label>Mobile:</label>
              <input type="text" class="form-control" name="mobile" value="0">
            </div>
          </div>         
          <div class="col-md-1 col-sm-1 col-xs-12">
            <div class="form-group">
              <label>Flat:</label>
              <input type="text" class="form-control" name="flat" value="0">
            </div>
          </div>
          <div class="col-md-1 col-sm-1 col-xs-12">
            <div class="form-group">
              <label>Fuel:</label>
              <input type="text" class="form-control" name="fuel" value="0">
            </div>
          </div>
          <div class="col-md-1 col-sm-1 col-xs-12">
            <div class="form-group">
              <label>Tickets:</label>
              <input type="text" class="form-control" name="tickets" value="0">
            </div>
          </div>          
          <div class="col-md-1 col-sm-1 col-xs-12">
            <div class="form-group">
              <label>Payment:</label>
              <input type="text" class="form-control" name="payment" value="0">
            </div>
          </div>        
          <div class="col-md-1 col-sm-1 col-xs-12">
            <div class="form-group">
              <label>Other:</label>
              <input type="text" class="form-control" name="other" value="0">
            </div>
          </div>          
          <div class="col-md-3 col-sm-3 col-xs-12">
            <div class="form-group">
              <label>Action:</label>
              <div style="text-align: right"><button type="submit" class="btn btn-success btn-block">Add expends</button></div>  
            </div>
          </div>  
	   </div>  
	   
	      
	   <hr><br />  
	   
            <div class="table-responsive">
            <table class="table table-hover table-sm table-bordered">
            	<thead class="thead-light">
            		<tr>
            			<th scope="col">Id</th>
            			<th scope="col">Date</th>
            			<th scope="col">Eating</th>
            			<th scope="col">Mobile</th>
            			<th scope="col">Flat</th>
            			<th scope="col">Fuel</th>
            			<th scope="col">Tickets</th>
            			<th scope="col">Payment</th>
            			<th scope="col">Other</th>
            			<th scope="col">Total</th>
            			<th scope="col">Edit</th>
            			<th scope="col">Delete</th>
            		</tr>
            	</thead>
            	
            		<%
            		try{
            			connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
            			statement = connection.createStatement();
            			String sql = "SELECT * FROM `1_january_2018`";
            			
            			
            			resultSet = statement.executeQuery(sql);
            			while(resultSet.next()){
            				
            				double eating = Double.parseDouble(resultSet.getString("eating"));
            				double mobile = Double.parseDouble(resultSet.getString("mobile"));
            				double flat = Double.parseDouble(resultSet.getString("flat"));
            				double fuel = Double.parseDouble(resultSet.getString("fuel"));
            				double tickets = Double.parseDouble(resultSet.getString("tickets"));
            				double payment = Double.parseDouble(resultSet.getString("payment"));
            				double other = Double.parseDouble(resultSet.getString("other"));
            				double total = eating+mobile+flat+fuel+tickets+payment+other;
            				
            		%>
        		
        		
           		<tbody>
           			<tr>
	           			<td><%=resultSet.getInt("id") %></td>
	            		<td><%=resultSet.getString("date") %></td>
	            		<td><%=resultSet.getString("eating") %></td>
	            		<td><%=resultSet.getString("mobile") %></td>
	            		<td><%=resultSet.getString("flat") %></td>
	            		<td><%=resultSet.getString("fuel") %></td>
	            		<td><%=resultSet.getString("tickets") %></td>
	            		<td><%=resultSet.getString("payment") %></td>
	            		<td><%=resultSet.getString("other") %></td>
	            		<td><strong><%=total %></strong></td>
           			    <td><a href="editExpForm.jsp?id=<%=resultSet.getString("id") %>" class="btn btn-warning btn-block btn-sm" role="button">Edit</a></td>
	            		<td><a href="deleteExp.jsp?id=<%=resultSet.getString("id") %>" class="btn btn-danger btn-block btn-sm" role="button">Delete</a></td>
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