<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<html>
<head>
<style type="text/css">
/* Background image */
body {
    background-image: url('https://t3.ftcdn.net/jpg/02/92/90/56/360_F_292905667_yFUJNJPngYeRNlrRL4hApHWxuYyRY4kN.jpg');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    background-attachment: fixed;
}

/* Form styles */
.container 
{
    max-width: 600px;
    margin-left: 750px;
    margin-top: 160px;

    padding: 20px;
    background-color: rgba(255, 255, 255, 0.9);
    border-radius: 10px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

h2 
{
    text-align: center;
    margin-bottom: 30px;
    color: black;
    font-size: 36px;
}

.form-group {
    margin-bottom: 25px;

}

label {
    display: block;
    font-size: 18px;
    margin-bottom: 10px;
    color: #000;
}

input {
    display: block;
    width: 100%;
    padding: 12px;
    border-radius: 10px;
    border: none;
    background-color: rgba(255, 255, 255, 0.8);
    font-size: 18px;
    color: #444;
}

.error {
    color: #ff4136;
    font-size: 16px;
    margin-top: 5px;
}

.btn {
    display: block;
    margin-top: 30px;
      margin-left: 235px;
    background-color:#87CEEB;
    color: #fff;
    padding: 12px 24px;
    border-radius: 10px;
    border: none;
    font-size: 20px;
    font-weight: bold;
    cursor: pointer;
    transition: background-color 0.3s ease-in-out;
}

.btn:hover {
    background-color: green ;
}
footer {
	background-color: #333;
	color: #fff;
	padding: 1rem;
	text-align: center;
	position: fixed;
    bottom: 0;
    width: 100%;
    height: 60px;
}

</style>
	<title>User Login</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

	<div class="container">
		<h2>User Login</h2>
		 <colspan="2"><c:if test="${requestScope.Err!=null}">
		 </c:if>
		<font color="red">${requestScope.Err}</font>
		<form id="registration-form" action="login.ds?parameter_name=login" method="post">
			<div class="form-group">
				<label for="userid">UserID:</label>
				<input type="text" id="userid" name="user_id" placeholder="Enter UserID" required>
				<span class="error" id="userid-error"></span>
			</div>
			<div class="form-group">
				<label for="password">Password:</label>
				<input type="password" id="password" name="password" placeholder="Enter Password" required>
				<span class="error" id="password-error"></span>
			</div>
			
			<button type="submit" class="btn">Submit</button>
		</form>
	</div>

	<script src="script.js"></script>
</body>
</html>

