<!DOCTYPE html>
<%@ page import ="com.nttdata.training.domain.vehicle"%>
<%@ page import ="java.util.List"%>
<%@ page import ="java.util.ArrayList"%>
<html lang="en">
<head>
  <title>vehicle </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css">
   <script src="https://code.jquery.com/jquery-1.12.3.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>

   <script>
   
   
   
$(document).ready(function(){
    $('#myTable').dataTable();
   
});
</script>

<style>

body {
    background-image: url('https://img.freepik.com/free-vector/hand-painted-watercolor-pastel-sky-background_23-2148902771.jpg?w=2000');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    background-attachment: fixed;
}

#registration-form {
  width: 900px; /* Adjust the width as per your requirement */
  height: 500px; /* Adjust the height as per your requirement */
}


#myTable {
  width: 500px; /* Adjust the width as per your requirement */
  height: 400px; /* Adjust the height as per your requirement */
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

button[type="submit"] {
  display: block;
  margin: 0 auto;
}

</style>
</head>
<body>
 <% 
    HttpSession mysession=request.getSession(false);// false- it will not create a new session object__it will retrive the existing session,created by application on behalf of user.
	String user=(String)mysession.getAttribute("user"); // get attribute label as string.
	
	
	%>  
 
  <div class="container-fluid">
    <div class="row">
    <div class="mydivs col-lg-12 col-xs-2 ">
   
    <nav class="navbar navbar-expand-md bg-dark navbar-secondary">
	
		<h1 style="color: silver;">Rent Your Vehicle  </h1>
		
		
		
		<div class="  navbar-collapse justify-content-end" id="collapsibleNavbar">
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
   
   
   
   
   
   </div>
</div>
      </div>
   

  <br>
  
  <div class="container-fluid">
    <div class="row">
      <div class="mydivs col-lg-7 col-xs-6 bg-light">
      <div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">       <!--LEFT RIGHT MOVING PHOTO-->
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://img.indianautosblog.com/2019/04/08/2019-toyota-fortuner-chamois-interior-e645.jpg" alt="Los Angeles" width="1100" height="500">
    </div>
    <div class="carousel-item">
      <img src="https://static3.toyotabharat.com/images/showroom/innova-mmc/unmatched-comfort-banner1600x1000.jpg" alt="Chicago" width="1100" height="500">
    </div>
    <div class="carousel-item">
      <img src="https://stat.overdrive.in/wp-content/odgallery/2016/05/30223_Toyota_Innova_Crysta_2016_004.JPG" alt="New York" width="1100" height="500">
    </div>
    <div class="carousel-item">
      <img src="https://static.toiimg.com/photo/msid-79421352/79421352.jpg" alt="New York" width="1100" height="500">
    </div>
      <div class="carousel-item">
      <img src=" https://imgd-ct.aeplcdn.com/1056x660/n/cw/ec/136513/toyota-innova-hycross-bootspace15.jpeg?isig=0&wm=4&q=75" alt="New York" width="1100" height="500">
    </div>
  </div>
  
  
  
  
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>

</div></div>


 
<!--=====first row right wordings==================-->
<div class="mydivs col-lg-5 col-xs-3 bg-light ">
  <div style="margin-top: 25px;">
  <h1 class="text-center">  Vehicle Description</h1>
<table  id="myTable" class="table table-striped">

  <tbody>
   
 
  
  <%

for(vehicle veh:(ArrayList<vehicle>)request.getAttribute("vehiclelist"))
{  
%>


<tr>
  <th>Vehicle_Number :</th>
<td><%=veh.getVehicle_number() %></td>  
</tr>

<tr>
 <th>Vehicle_Type :</th>
<td><%=veh.getVehicle_type() %></td> 
</tr>

<tr>
   <th>Vehicle_Name :</th>
<td><%=veh.getVehicle_name()%></td> 

</tr>

<tr>
 <th>Vehicle_Price :</th>
 <td><%=veh.getVehicle_price()%></td> 
 </tr>
 
 <tr>
   <th> Discount :</th>
 <td><%=veh.getDiscount()  %>%</td> 
</tr>

 <tr>
   <th> Total_Cost :</th>
   
   <% int price= veh.getVehicle_price(); %>
    <% int discount= veh.getDiscount(); %>
    
    <%float dic=discount/100f;
	float mul=price*dic;
   float total_cst=(price-mul); %>
     
 <td>Rs: <%=total_cst  %></td> 
</tr>

<% } %>


</tbody>
</table>





   
   
   
   
                                                            
</div>
</div>
</div>
<br>
<!--===================second row====  left wordings===================-->







<div class="container-fluid">
<div class="d-flex justify-content-center" style="max-width: 2500px;">
  <div class="row mb-3 "></div>
  <div class="row  ">
   
    <div class="mydivs col-lg-12 col-xs-5 bg-#87CEEB ">
     
       <h1 class="text-center mb-4">Confirm Booking</h1>
        <form id="registration-form" action="book_vehicle.ds" method="post">
        
         <div class="form-group">
                <label for="userid">User ID</label>
                <input type="text" class="form-control" id="userid" name="userid" placeholder="Enter user_id">
            </div>
            <div class="form-group">
                <label for="location">Location</label>
                <select class="form-control" id="location" name="option_1">
                    <option>Select a city</option>
                    <option>Chennai</option>
                    <option>Delhi</option>
                    <option>Ahmedabad</option>
                    <option>Hyderabad</option>
                    <option>Pune</option>
                    <option>Bangalore</option>
                    <option>Kolkata</option>
                    <option>Mumbai</option>
                 
                </select>
            </div>
            <div class="form-group">
                <label for="vehicle">Vehicle Name</label>
                <select class="form-control" id="vehicle" name="option_2">
                    <option>Select vehicle name</option>
                    <option>Innova_Crysta</option>
                    <option>Suzuki_Baleno</option>
                    <option>Mahindra_Scorpio</option>
                     <option>Jeep_Compass</option>
                    <option>Vitara_Breeza</option>
                    <option>Tata_Punch</option>
                </select>
            </div>
            
            <div class="form-group">
                <label for="vehiclenum">Vehicle Number</label>
                <input type="text" class="form-control" id="vehicle_number" name="vehicle_number" placeholder="Enter vehicle_number">
            </div>
            
            <div class="form-group">
                <label for="startDate">Journey Begin</label>
                <input type="date" class="form-control" id="startDate" name="startdate">
            </div>
            <div class="form-group">
                <label for="endDate">Journey End</label>
                <input type="date" class="form-control" id="endDate" name="enddate">
            </div>
           
           
            <button type="submit" class="btn btn-success">Confirm Booking</button>
        </form>
    </div>
     
     
     
     
     
     
     
      </div>
    
       
<!--=========second row right picture==============================-->




  </div>
</div>
<br>



<footer>
		<p>&copy; 2023 Vehicle Rental Company. All rights reserved.</p>
	</footer>




</body>
</html>