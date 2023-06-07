<!DOCTYPE html>

<%@ page import ="com.nttdata.training.domain.vehicle"%>
<%@ page import ="java.util.List"%>
<%@ page import ="java.util.ArrayList"%>
<html lang="en">
<head>
  <title>view discount</title>
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
   
   
   

</script>

<style>

body {
    background-image: url('https://img.freepik.com/free-vector/hand-painted-watercolor-pastel-sky-background_23-2148902771.jpg?w=2000');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    background-attachment: fixed;
}


 body {
      background-color: #f5f5f5;
    }
    
    h1 {
      text-align: center;
      margin-top: 20px;
    }
    .table {
      margin: 0 auto;
      float: none;
      transition: all 0.3s ease;
      background-color: rgba(255, 255, 255, 0.8);
      border-radius: 10px;
      box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
      overflow: hidden;
      width: 105%;
    }
    
       th,
    td {
    
      padding: 10px;
      text-align: center;
      font-size: 18px;
    }
    
    th {
      background-color:#3366cc;
      color: #fff;
      font-weight: bold;
    }
    .table:hover {
      transform: scale(1.1);
      box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.5);
    }
    

    
    .table thead {
      background-color: #007bff;
      color: #fff;
    }
    .table-hover tbody tr:hover {
      background-color: #f5f5f5;
    }
    
   
    



#registration-form {
  width: 900px; /* Adjust the width as per your requirement */
  height: 500px; /* Adjust the height as per your requirement */
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

 
  <div class="container-fluid">
    <div class="row">
    <div class="mydivs col-lg-12 col-xs-2 ">
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
   
   
   
   </div>
</div>
      </div>
   

  <br>
  
  <div class="container-fluid">
    <div class="row">
      
 
<!--=====first row ==================-->
<div class="mydivs col-lg-12 col-xs-3 bg-light ">
  <div style="margin-top: 25px;">


  <div class="container">
    <h1 style="font-weight: bold;">Vehicle Details</h1>
    <table class="table table-hover">
      <thead>
        <tr>
          <th>Vehicle_Number</th>
          <th>Vehicle_Type</th>
          <th>Vehicle_Name</th>
          <th>Vehicle_Price</th>
          <th>Discount</th>
        </tr>
      </thead>
      <tbody>
        
      <%

         for(vehicle veh:(ArrayList<vehicle>)request.getAttribute("vehiclelist"))
      {  
     %>
        <tr>
          <td data-label="Vehicle_Number"> <%=veh.getVehicle_number() %></td>
          <td data-label="Vehicle_Type"><%=veh.getVehicle_type() %></td>
          <td data-label="Vehicle_Name"><%=veh.getVehicle_name()%></td>
          <td data-label="Vehicle_Price"><%=veh.getVehicle_price()%></td>
          <td data-label="Discount"><%=veh.getDiscount()  %>%</td>
        </tr>
      
      
      <% } %>
      </tbody>
    </table>
  </div>
  

   
   
   
   
  </div>                                                          
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
     
       <h1 style="font-weight: bold;" class="text-center mb-4">Update Discount</h1>
       <div style="text-align: center;">
       
   
	 
        <form id="registration-form" action="adminservlet.ds" method="post">
        <input type="hidden" name="parameter_name" value="discount">
        
            
            <div class="form-group">
                <label for="vehiclenum">Vehicle Number</label>
                <input type="text" class="form-control" id="vehicle_number" name="vehicle_number" placeholder="Enter vehicle_number">
            </div>
            
            
            <div class="form-group">
                <label for="vehiclenum">Discount</label>
                <input type="text" class="form-control" id="discount" name="discount" placeholder="Enter New Discount Value">
            </div>
         
           
            <button type="submit" class="btn btn-success">Update Discount</button>
           
            
        </form>
         
    </div>
     
     
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