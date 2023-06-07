<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Feed back</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<style>
	
	 footer {
	background-color: #333;
	color: #fff;
	padding: 1rem;
	text-align: center;
	position: fixed;
    bottom: 0;
    width: 100%;
    height: 40px;
}
		body 
		{
			font-family: Arial, sans-serif;
			background-color: #f2f2f2;
		}
		h1 {
			text-align: center;
			margin-top: 50px;
		}
		
		
		form {
			max-width: 500px;
			margin: 50px auto;
			background-color: #ffffff;
			padding: 20px;
			border-radius: 10px;
			margin-right: 400px; 
			box-shadow: 0px 0px 10px #cccccc;
		}
		
		 .navbar {
        height: 80px; /* Adjust the height value as per your requirement */
        }
        
   body {
      background-image: url("https://img.freepik.com/free-photo/top-view-blue-monday-concept-composition-with-telephone_23-2149139106.jpg?w=2000");
      background-size: cover;
    }
		
		
	label 
	{
			display: block;
			margin-bottom: 10px;
			font-weight: bold;
		}
		input[type="text"], textarea 
		{
			width: 100%;
			padding: 10px;
			border: none;
			border-radius: 5px;
			background-color: #f9f9f9;
			margin-bottom: 20px;
			font-size: 16px;
		}
		input[type="submit"] {
			background-color: #4CAF50;
			color: #ffffff;
			padding: 10px 20px;
			border: none;
			border-radius: 5px;
			font-size: 16px;
			cursor: pointer;
		}
		input[type="submit"]:hover 
		{
			background-color: #3e8e41;
		}
              }
		
	</style>
</head>
<body>

<%  HttpSession mysession=request.getSession(false);// false- it will not create a new session object__it will retrive the existing session,created by application on behalf of user.
	String user=(String)mysession.getAttribute("user"); // get attribute label as string.
	
	
	%>  

<nav class="navbar navbar-expand-md bg-dark navbar-secondary ">
	
		<h1 style="color: silver;">Rent Your Vehicle</h1>
	
		
		
		<div class=" collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
			<ul class="navbar-nav">
			 <li class="nav-item">
					
			<a style="color:#90EE90 ;" class="nav-link" > (<%=user %>)</a>
			
	        </li>
				<li class="nav-item">
					<a class="nav-link" href="main_page.jsp">Home</a>
				</li>
				
				<li class="nav-item">
					<a class="nav-link" href="about.jsp"">About</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="contactus.jsp">Contact Us</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="login.ds?parameter_name=logout">Logout</a>
				</li>
			</ul>
		</div>
		
		
	</nav>
	
	<h1 style="font-weight: bold; margin-left: 150px; ">User Feedback</h1>
	
	<div style="text-align: center;">
      <colspan="2"><c:if test="${requestScope.Err!=null}">
		 </c:if>
		<font color="green">${requestScope.Err}</font>
    </div>
	 
	<form method="post" action="feedback.ds">
		<label for="name">Name:</label>
		<input type="text" id="name" name="name" placeholder="Enter your name" required>

		<label for="email">Email:</label>
		<input type="text" id="email" name="email" placeholder="Enter your email" required>

		<label for="phone">Phone:</label>
		<input type="text" id="phone" name="phone" placeholder="Enter your phone number" required>

		<label for="message">Feedback:</label>
		<textarea id="message" name="message" placeholder="Enter your Feedback" rows="5" required></textarea>

		<input type="submit" value="Submit">
		
		
	</form>
	
	 <footer>
		<p>&copy; 2023 Vehicle Rental Company. All rights reserved.</p>
	</footer>
	

</body>

	 
</html>