<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
body{
	background-image: url("https://static.vecteezy.com/system/resources/previews/000/676/628/original/blue-blur-backdrop.jpg");
	 background-repeat: no-repeat;
	 background-size: cover;
      background-position: center;

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
.col-md-6 {
	height: 100vh;
	width: 100%;
	background-position: center;
	text-align: center;
	color: Black;
	padding-top: 10rem;
    padding-bottom: 10rem;
}
.col-md-6 h1 {
  font-size: 32px;
  font-weight: bold;
  margin-bottom: 20px;
}

.col-md-6 p {
  font-size: 18px;
  line-height: 1.5;
  margin-bottom: 30px;
}
.col-md-6 a {
	display: inline-block;
	background-color: black;
	color: white;
	padding: 1rem 2rem;
	border-radius: 3px;
	text-decoration: none;
	transition: all 0.3s ease-in-out;
}

</style>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>About Us - Vehicle Rental Company</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>

<%  HttpSession mysession=request.getSession(false);       
	String user=(String)mysession.getAttribute("user");    
	
	
	%>  
  <nav class="navbar navbar-expand-md bg-dark navbar-secondary">
	
		<h1 style="color: silver;">Rent Your Vehicle  </h1>
		
		
		
		<div class=" collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
			<ul class="navbar-nav">
			    <li class="nav-item">
					
					<a style="color:#90EE90 ;" class="nav-link" > (<%=user %>)</a>
				</li>
				
				<li class="nav-item">
					<a class="nav-link" href="main_page.jsp">Home</a>
				</li>
				
				<li class="nav-item">
					<a class="nav-link" href="feedback.jsp">Feedback</a>
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

  <div class="container my-5">
    <div class="row">
      <div class="col-md-12">
        <h1 style="text-align: center;">About Us</h1>
        <p>: Our extensive range of vehicles includes various makes and models to suit different preferences and travel needs. From fuel-efficient compact cars to spacious SUVs and versatile vans, we have options for individuals, families, and groups of any size.</p>
        <p> We offer competitive rental rates and flexible rental durations to provide value for your money. Our transparent pricing structure ensures there are no hidden costs, and we are committed to delivering affordability without compromising on quality.</p>
        <p> We prioritize convenience for our customers. Our online reservation system allows you to easily browse and book vehicles from the comfort of your home or office. We also provide convenient pick-up and drop-off options, including airport transfers and local delivery services.</p>
      </div>
      
    </div>
  </div>

  <footer>
    <div >
      <p>&copy; 2023 Vehicle Rental Company. All rights reserved.</p>
    </div>
  </footer>

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>