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
    <title>Login Form</title>
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
          <form action="Logout" class="form-container">
            
             <div class="row">
			    <div class="col-md-12 col-sm-12 col-xs-12">
			    <center><img src="images/login2.png"></center>
			    <center><h1>Welcome</h1></center>
			    <center><h6>Expends Management System</h6></center>
			    </div>
			</div>
           
            
           
            <ul class="nav nav-tabs nav-fill">
			  <li class="nav-item">
			    <a class="nav-link active" href="loggedin.jsp">Home</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="userslist.jsp">Users List</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="januaryExp.jsp">January expends</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="userslist.jsp">Users List</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="userslist.jsp">Users List</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="userslist.jsp">Users List</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="userslist.jsp">Users List</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="Logout">Logout</a>
			  </li>
			</ul>
			
			
			<br />
				<div style="text-align: center">    
	            	Welcome:<h5> ${uname}</h5><br /><br />
		            
		            <h6>Congratulation You're logged in system successfully.<br />
		            You have access to full information of this site.</h6> 
	            </div>
            <br />
           	<br />
    		<br />
          	<button type="submit" class="btn btn-success btn-block">Logout</button>

            <center><label class="label-bottom">Copyright c 2018 by Jaroslaw Kowalczyk</label></center>
          </form>
        </div>
        <div class="col-md-1 col-sm-1 col-xs-12"></div>
      </div>
    </div>
  </body>
</html>