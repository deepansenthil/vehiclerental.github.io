<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Book Success</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  
  <%
String context = request.getContextPath();
%>
  <style>
  
  
  
   body {
      background-image: url(" https://wallpapers.com/images/hd/professional-background-4b31fgiuezafrguu.jpg ");
      background-size: cover;
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
    
    .container {
      margin-top: 50px;
    }
    .success-message {
      text-align: center;
      color: black;
      font-size: 24px;
      font-weight: bold;
      margin-bottom: 20px;
    }
    .vehicle-details {
      background-color: #f8f9fa;
      padding: 20px;
      border-radius: 5px;
    }
  </style>
</head>

<body>
<%  HttpSession mysession=request.getSession(false);// false- it will not create a new session object__it will retrive the existing session,created by application on behalf of user.
	String user=(String)mysession.getAttribute("user"); // get attribute label as string.
	
	
	%>  


<nav class="navbar navbar-expand-md bg-dark navbar-secondary">
	
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
					<a class="nav-link" href="about.jsp">About</a>
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
	
  <div class="container">
    <div class="success-message">Vehicle Booking Successful!</div>
    <div class="vehicle-details">
      <h4>Booking Details</h4>
      <p><strong>Vehicle:</strong>  <%= request.getAttribute("message1") %> </p> 
      <p><strong>Date:</strong> <%= request.getAttribute("message2") %></p>
      <p><strong>Location:</strong> <%= request.getAttribute("message3") %></p>
    </div>
  </div>

  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  
  
  <footer>
		<p>&copy; 2023 Vehicle Rental Company. All rights reserved.</p>
	</footer>
  
</body>

</html>