<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Add vehicle</title>
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
			box-shadow: 0px 0px 10px #cccccc;
		}
		
		 .navbar {
        height: 80px; /* Adjust the height value as per your requirement */
        }
        
   body {
      background-image: url(" https://wallpapers.com/images/hd/professional-background-dnw8wv6tbsb6j09p.jpg ");
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

<nav class="navbar navbar-expand-md bg-dark navbar-secondary">
	
		<h1 style="color: silver;">Rent Your Vehicle  </h1>
		
		
		
		<div class="  navbar-collapse justify-content-end" id="collapsibleNavbar">
			<ul class="navbar-nav">
			   
				<li class="nav-item">
					<a class="nav-link" href="main_page.jsp">Home</a>
				</li>
				
				
			</ul>
		</div>
		
		
	</nav>
	
	<h1 style="font-weight: bold;">Add Vehicle</h1>
	
	<div style="text-align: center;">
      <colspan="2"><c:if test="${requestScope.Err!=null}">
		 </c:if>
		<font color="green">${requestScope.Err}</font>
    </div>
	 
	<form method="post" action="adminservlet.ds">
	  <input type="hidden" name="parameter_name" value="insert">
	  
		<label for="name">Vehicle Number:</label>
		<input type="text" id="number" name="number" placeholder="Enter the vehicle name" required>

		<label for="email">Vehicle Type:</label>
		<input type="text" id="type" name="type" placeholder="Enter the vehicle type" required>

		<label for="phone">Vehicle Name:</label>
		<input type="text" id="name" name="name" placeholder="Enter the vehicle name" required>

		<label for="phone">Vehicle Price:</label>
		<input type="text" id="price" name="price" placeholder="Enter the vehicle price" required>
		
		<label for="phone">Discount Percent:</label>
		<input type="text" id="discount" name="discount" placeholder="Enter the discount" required>
		
		<input type="submit" value="Submit">
		
		
	</form>
	
	 <footer>
		<p>&copy; 2023 Vehicle Rental Company. All rights reserved.</p>
	</footer>
	

</body>

	 
</html>