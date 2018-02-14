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
    <div class="container-fluid bg">
      <div class="row">
        <div class="col-md-4 col-sm-4 col-xs-12"></div>
        <div class="col-md-4 col-sm-4 col-xs-12">
        
          <form action="Login" method="post" class="form-container">
            <center><img src="images/login2.png"></center>
            <center><h1>Sign Up</h1></center>
            <center><h6>Expends Management System</h6></center><br />
            <div class="form-group">
              <label for="exampleInputUsername">Username:</label>
              <input type="text" class="form-control" name="uname" required="required" placeholder="Enter username">
            </div>
            <div class="form-group">
              <label for="exampleInputPassword">Password:</label>
              <input type="password" class="form-control" name="pass" required="required" placeholder="Enter password">
            </div>
            <div class="form-check">
              <input type="checkbox" class="form-check-input" id="exampleRemember1">
              <label class="form-check-label" for="exampleCheck1">Remember me</label>
            </div>
            <br />
            <button type="submit" class="btn btn-success btn-block">Sign Up</button>
            <center><a href="register.jsp" style="color: #009999">Click Here to register new User</a></center>
            
           <div class="error">${errorMessage}</div> 
            	
            <center><label class="label-bottom">Copyright c 2018 by Jaroslaw Kowalczyk</label></center>
          </form>
          
        </div>
        <div class="col-md-4 col-sm-4 col-xs-12"></div>
      </div>
    </div>
  </body>
</html>
