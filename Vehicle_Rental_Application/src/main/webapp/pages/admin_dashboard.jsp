<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Admin Dashboard</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<!-- Custom CSS -->
	<style>
		 body {
        /*background-image: url('https://wallpaperaccess.com/full/270183.jpg');*/
         background: linear-gradient(to right, #4F73B3, #FF6A7D);
        background-size: cover;
        background-position: center center;
        background-repeat: no-repeat;
        height: 100vh;
        margin: 0;
        color: #fff;
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
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    background: linear-gradient(to right, #4F73B3, #FF6A7D);
    padding: 30px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
    transition: all 0.3s ease-in-out;
    cursor: pointer;
    opacity: 0.8;
    color: #fff;
    font-weight: bold; /* set the text to bold */
}


    .container:hover {
        transform: translate(-50%, -50%) scale(1.05);
        background-color: #2ECC71; /* set the hover background color to darker green */
        box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.7);
        opacity: 1;
    }

    .form-control,
    .btn {
        background-color: rgba(255, 255, 255, 0.8);
        opacity: 0.8;
        color: #000;
    }

    .form-control:focus,
    .btn:focus {
        background-color: rgba(255, 255, 255, 1);
        opacity: 1;
        color: #000;
    }

    .card {
        background-color: rgba(255, 255, 255, 0.8);
        opacity: 0.8;
        color: #000;
    }

    .card:hover {
        background-color: rgba(255, 255, 255, 1);
        opacity: 1;
        color: #000;
    }

    h1, h2, h3, h4, h5, h6 {
        color: green;
    }
	</style>
</head>
<body>


<nav class="navbar navbar-expand-md bg-dark navbar-secondary">
	
		<h1 style="color: silver;">Rent Your Vehicle</h1>
	
		
		
		<div class=" collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" href="main_page.jsp">Home</a>
				</li>
				
			</ul>
		</div>
		
		
	</nav>
	
	


	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="card">
					<div class="card-header">
						Add Vehicle
					</div>
					<div class="card-body">
						<p>Use this button to add a new vehicle to the system.</p>
						 <colspan="2"><c:if test="${requestScope.Err1!=null}">
		                   </c:if>
	                      <font color="green">${requestScope.Err1}</font>
						<a href="adminadd_veh.jsp" class="btn btn-primary">Add Vehicle</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<div class="card-header">
						Update Discount
					</div>
					<div class="card-body">
						<p>Use this button to update the discount for a vehicle.</p>
						   <colspan="2"><c:if test="${requestScope.Err2!=null}">
		                   </c:if>
	                      <font color="green">${requestScope.Err2}</font>
						<a href="adminservlet.ds?parameter_name=viewveh" class="btn btn-primary">Update Discount</a>
					</div>
				</div>
			</div>
			
			<div class="col-md-4">
				<div class="card">
					<div class="card-header">
						View Vehicle Bookings
					</div>
					<div class="card-body">
						<p>Use this button to view all vehicle bookings.</p>
						<a href="adminservlet.ds?parameter_name=viewbook" class="btn btn-success">View Bookings</a>
					</div>
				</div>
			</div>
			
			
			<!-- ---------------------------SECOND ROW--------------------------    -->
			
				<div class="col-md-4">
				<div class="card">
					<div class="card-header">
							View Feedback
					</div>
					<div class="card-body">
						<p>Use this button to view all customer feedback..</p>
						<a href="adminservlet.ds?parameter_name=viewfeed" class="btn btn-primary">View Feedback</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<div class="card-header">
						
					</div>
					<div class="card-body">
						<h1 style="text-align: center;"> WELCOME ADMIN </h1>
						<p style="text-align: center;"> HOW CAN I HELP YOU </p>
						
					</div>
				</div>
			</div>
			
			<div class="col-md-4">
				<div class="card">
					<div class="card-header">
						View Users
					</div>
					<div class="card-body">
						<p>Use this button to view all users and know their details.</p>
						<a href="adminservlet.ds?parameter_name=viewuser" class="btn btn-primary">View Users</a>
					</div>
				</div>
			</div>
			

			
		
		</div>
	</div>
	<!-- Bootstrap JS -->
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


	<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

<!-- Popper.js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>

<!-- Bootstrap JS -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<footer>
		<p>&copy; 2023 Vehicle Rental Company. All rights reserved.</p>
	</footer>
</body>
</html>
