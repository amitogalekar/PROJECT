<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body >
    <nav class="navbar navbar-expand-lg navbar-light" style="background-color: transparent;border-style: solid;border-width: 1px;">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">SaiCards</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item px-5">
          <a class="nav-link" aria-current="page" href="index.jsp">Home</a>
        </li>
        <li class="nav-item px-5">
          <a class="nav-link" href="#">About Us</a>
        </li>
        <li class="nav-item px-5">
          <a class="nav-link" href="#">Cart</a>
        </li>
        <li class="nav-item px-5">
          <a class="nav-link" href="login.jsp">login</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
    <h1 class="text-center py-5">Registration Form</h1>
    <div class="container py-2">
      <form id="frm"   class="row g-3">
        <div class="col-md-6">
          <label for="firstName" class="form-label" >First Name</label>
          <input type="text" class="form-control" id="firstName" placeholder="First Name" name="f_name">
          <span style="color:red" id="firstNameError" style="red"></span>
        </div>
        <div class="col-md-6">
          <label for="lastName" class="form-label" >Last Name</label>
          <input type="text" class="form-control" id="lastName" placeholder="Last Name" name="l_name">
          <span style="color:red" id="lastNameError" style="red"></span>
        </div>
        <div class="col-md-6">
          <label for="address" class="form-label">Address</label>
          <input type="text" class="form-control" id="address" placeholder="1234 Main St" name="address">
          <span style="color:red" id="addressError" style="red"></span>
        </div>
        <div class="col-md-6">
          <label for="mobNo" class="form-label">Mobile No</label>
          <input type="tel" class="form-control" id="mobNo"  name="mob_no">
          <span style="color:red" id="mobNoError" style="red"></span>
        </div>
        <div class="col-md-6">
          <label for="email" class="form-label">Email</label>
          <input type="email" class="form-control" id="email" name="email">
          <span style="color:red" id="emailError" style="red"></span>
        </div>
        <div class="col-md-3">
          <label for="password" class="form-label">Password</label>
          <input type="password" class="form-control" id="password" name="password">
          <span style="color:red" id="passwordError" style="red"></span>
        </div>
        <div class="col-md-3">
          <label for="confirmpassword" class="form-label">Confirm Password</label>
          <input type="password" class="form-control" id="confirmPassword" >
          <span style="color:red" id="confirmPasswordError" style="red"></span>
        </div>
        <div class="col-md-6">
          <label for="city" class="form-label">City</label>
          <input type="text" class="form-control" id="city" name="city">
          <span style="color:red" id="cityError" style="red"></span>
        </div>
        <div class="col-md-6">
          <label for="pincode" class="form-label">Pincode</label>
          <input type="text" class="form-control" id="pincode" name="pincode">
          <span style="color:red" id="pincodeError" style="red"></span>
        </div>
        <div class="col-12 text-center">
          <button onclick="return validationRegForm()" type="submit" class="btn btn-primary px-5" style="width: 30%;">Sign in</button>
        </div>
      </form>
      <div class="col-12 text-center py-3">
          <p style="display: inline-block;" class="form-label">Already Registered ? <a href="login.jsp">login here</a></p>
        </div>
      
    </div>
    
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"  crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js"  crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js	"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="assets/MyJS/validateRegFrm.js"></script>
<script src="assets/MyJS/submitRegFrm.js"></script>
  
  </body>
</html>
<style>
body {
 background-image: url("assets/image/regimage.jpg");
 background-repeat: no-repeat;background-size: cover;
}
</style>