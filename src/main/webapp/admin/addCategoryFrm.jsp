<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	if(session.getAttribute("adminEmail")==null){
		response.sendRedirect("index.jsp");
	}
%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://use.fontawesome.com/e49fd5ce0d.js"></script>

    <title>Hello, world!</title>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-light nav-fill w-100" style="background-color: white;" >
  <div class="container-fluid">
    
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse w-100" id="navbarNav">
      <ul class="navbar-nav w-100">
      <li class="nav-item px-5" >
          <a class="nav-link" href="order.jsp">Orders</a>
        </li>
        <li class="nav-item px-5" style="background-color: blue;">
          <a class="nav-link active" Style="color:white" href="#">Add Category</a>
        </li>
        <li class="nav-item px-5" >
          <a class="nav-link" href="addProductFrm.jsp" >Add Product</a>
        </li>
        <li class="nav-item px-5">
          <a class="nav-link" href="changePassword.jsp">Change Password</a>
        </li>
        
        <li class="nav-item px-5">
          <a class="nav-link"  href="../Logout">Log out</a>
        </li>
        
      </ul>
    </div>
  </div>
</nav>
    
    <div class="container py-2" style="margin-top:100px">
    <h1 class="text-center py-5">Add Category</h1>
      <form id="frm" style="margin: 0px auto;">
          <div class="row" style="margin: 0px auto;display: block;">        
        <div class="col-md-6" style="margin: 0px auto">
          <label for="email" class="form-label">Enter Category</label>
          <input type="text" class="form-control" id="category" name="category">
          <span id="categoryError" style="color:red"></span>
        </div>
    </div>
    
        
        <div class="col-6 text-center" style="margin: 20px auto;">
          <button onclick="return validateAddCategoryForm()" type="submit" class="btn btn-primary px-5" >Add</button>
        </div>

       
        
      </form>
      <table class="table table-borderless my-5" style="width:50%;margin:0px auto">
  
  <tbody id="cataDiv">
    <tr>
      <th scope="row">1</th>
      <td style="float:right">Mark</td>
      
    </tr>
    <tr>
      <th scope="row">2</th>
      <td style="float:right">Mark</td>     
    </tr>
    <tr>
      <th scope="row">3</th>
      <td style="float:right">Mark</td>
      
    </tr>
  </tbody>
</table>
      
    </div>
    
    
  </body>
</html>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="../assets/MyJS/addCategory.js"></script>
<script src="../assets/MyJS/validationAtAdmin.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<style>
body {
 background-image: url("../assets/image/regimage.jpg");
 background-repeat: no-repeat;
background-size: cover;
}
</style>
<script>
$("#category").blur(function(){
		
	let category = $("#category").val();
	console.log(category.toUpperCase());
	$("#category").val(category.toUpperCase());
	  
	});
</script>