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
    <title>Register Form</title>
  </head>
  <body>
    <div class="container-fluid bg">
      <div class="row">
        <div class="col-md-3 col-sm-3 col-xs-12"></div>
        <div class="col-md-6 col-sm-6 col-xs-12">
      
      <form action="Register" method="post" class="form-register-container">
        <div class="row">
          <div class="col-md-12 col-sm-12 col-xs-12">
            <center><h1>Register Form</h1></center>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="form-group">
              <label for="exampleInputUsername">Username:</label>
              <input type="text" class="form-control" name="username" required="required" placeholder="Enter username">
            </div>
            <div class="form-group">
              <label for="exampleInputPassword">Password:</label>
              <input type="password" class="form-control" name="password" required="required" placeholder="Enter password">
            </div>
            <div class="form-group">
              <label for="exampleInputRePassword">Retype Password:</label>
              <input type="password" class="form-control" name="repassword" required="required" placeholder="Enter password again">
            </div>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="form-group">
              <label for="exampleInputFirstName">First Name:</label>
              <input type="text" class="form-control" name="firstname" required="required" placeholder="Enter your first name">
            </div>
            <div class="form-group">
              <label for="exampleInputLastName">Last Name:</label>
              <input type="text" class="form-control" name="lastname" required="required" placeholder="Enter your last name">
            </div>
            <div class="form-group">
              <label for="exampleInputEmail">E-mail address:</label>
              <input type="text" class="form-control" name="email" required="required" placeholder="Enter your email">
            </div>
            <div class="form-group">
              <label for="exampleInputAge">Age:</label>
              <input type="text" class="form-control" name="age" required="required" placeholder="Enter your age">
            </div>
        </div>
      </div>
      <div class="row">
          <div class="col-md-12 col-sm-12 col-xs-12">
            <button type="submit" class="btn btn-success btn-block">Register</button>
            <center><a href="login.jsp" style="color: #009999">Click Here to Login</a></center>
          </div>
      </div>
      <div class="error">${errorMessageUserExist}</div>
      </form>
      
        </div>
        <div class="col-md-3 col-sm-3 col-xs-12"></div>
      </div>
    </div>
  </body>
</html>