<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
 <title> User Register</title>
  <style>
    body {
      background-image: url("https://www.icrkuw.com/site/admincp/files/slideshow/s1-en.png");
      background-size: cover;
    }
    
    table {
			margin: 0 auto;
		position: relative; /* set position to relative */ 
		top: 150px;
		right:200px;  
		}
		
    td {
			color: black  ; /* set the color property to red */
		}		
		
  </style>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title >Register urself</title>
</head>
<body>

<!-- Navigation bar -->
	<nav class="navbar navbar-expand-md bg-dark navbar-secondary">
	
		<h1 style="color: silver;">Rent Your Vehicle</h1>
	
		
		
		<div class=" collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" href="main_page.jsp">Home</a>
				</li>
				
				<li class="nav-item">
					<a class="nav-link" href="about.jsp"">About</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="contactus.jsp">Contact Us</a>
				</li>
			</ul>
		</div>
		
		
	</nav>
	
	
	
<h2 style="color: white;" align="center">User Register</h2>

<form action="register.ds">    


<table>
	<tr>
		<td colspan="2"><c:if test="${requestScope.Err!=null}">
			<font color="red">${requestScope.Err}</font>
		</c:if></td>
	</tr>
	<tr>
		<td><strong>User ID</strong></td>
		<td ><input type="text" name="user_id"></td>
	</tr>
	<tr>
		<td><strong>Name</strong></td>
		<td><input type="text" name="name"></td>
	</tr>
	<tr>
		<td><strong>Password</strong></td>
		<td><input type="text" name="password"></td>
	</tr>
	<tr>
		<td><strong>City</strong></td>
		<td><input type="text" name="city"></td>
	</tr>
	
	<tr>
		<td><strong>Email</strong></td>
		<td><input type="text" name="email"></td>
	</tr>
	
	<tr>
		<td><strong>Contact</strong></td>
		<td><input type="text" name="contact"></td>
	</tr>
	
	
	
	<tr>
		<td colspan="2" align="center"><input type="submit"
			value="Register"></td>
	</tr>
	
</table>
</form>
</body>
</html>