
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

  
    
    <style>
    
    
     /*For back ground image */
    body {
      background-image: url(" https://img.freepik.com/free-vector/geometric-pattern-background-vector-white_53876-126684.jpg?w=2000 ");
      background-size: cover;
    }
 
 /* */
        .container {
            width: 300px;
            padding: 20px;
            background-color: white) ;
            margin: 0 auto;
            margin-top: 150px;
            text-align: center;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
        }
        
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

        /* Login button style */
        .login-button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        /* Login button hover effect */
        .login-button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<%
String context = request.getContextPath();
%>
	<!-- Navigation bar -->
	<nav class="navbar navbar-expand-md bg-dark navbar-secondary">
	
		<h1 style="color: silver;">Rent Your Vehicle</h1>
	
		
		
		<div class=" collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" href="main_page.jsp">Home</a>
				</li>
			
				<li class="nav-item">
					<a class="nav-link" href="about.jsp">About</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="contactus.jsp">Contact Us</a>
				</li>
			</ul>
		</div>
		
		
	</nav>

    <div class="container">
        <h1>Registration Successful!</h1>
         <form action="<%=context%>\pages\Login.jsp">
            <button class="login-button" type="submit">Login</button>
        </form>
      
    </div>
    <footer>
		<p>&copy; 2023 Vehicle Rental Company. All rights reserved.</p>
	</footer>
</body>
</html>


































