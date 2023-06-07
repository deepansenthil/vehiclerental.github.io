<!DOCTYPE html>
<html>
<head>

  <%
String context = request.getContextPath();
%>
    
	<title>Vehicle Rental App</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style>
  
      /*For back ground image */
    body {
      background-image: url("https://everest-star.com/images/banner2.jpg");
      background-size: cover;
    }
    
    h1 {
				font-size: 26px;
				
		}
		
		
		h2 {
		     background: linear-gradient(to right, red, green, yellow, green,yellow);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
			text-align: center;
			margin-top: 50px;
			
			
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
		
			
		#Button1 
		{
  margin-top: 50px; 
        }	
			
	</style>
   

</head>
<body>
	<!-- Navigation bar -->
	<nav class="navbar navbar-expand-md bg-dark navbar-secondary">
	
		<h1 style="color: silver;">Rent Your Vehicle</h1>
	
		
		
		<div class=" collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" href="#">Home</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="<%=context%>\pages\admin_login.jsp">Admin Portal</a>
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
	
	<h2   > Drive the experience you deserve</h2>
	
	
	<div class="container  ">
		
	<div class="row justify-content-center">
		<div class="btn-group" id="Button1" role="group" aria-label="Button Group with Separator" >
		
				<a href="<%=context%>\pages\Login.jsp" class="btn btn-link btn-lg text-light font-weight-bold">LOGIN</a>
			<span class="mx-2">|</span>
			
				<a href="<%=context%>\pages\Register.jsp" class="btn btn-link btn-lg text-light font-weight-bold">REGISTER</a>
		</div>
		</div>
		
	</div>
	
	 <footer>
		<p>&copy; 2023 Vehicle Rental Company. All rights reserved.</p>
	</footer>	
	      

	</body>
	</html>
	
	