<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@ page import ="com.nttdata.training.domain.Feedback"%>
<%@ page import ="java.util.List"%>
<%@ page import ="java.util.ArrayList"%>
<html>
<head>

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
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
  <!-- Custom CSS -->
  <style>
    body {
      background-image: url('https://wallpaperaccess.com/full/8657857.jpg');
      background-repeat: no-repeat;
      background-size: cover;
      background-position: center;
       height: 100vh;
        margin: 0;
    }
    .container {
      margin-top: 50px;
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
    
    .table thead {
      background-color: #007bff;
      color: #fff;
    }
    .table-hover tbody tr:hover {
      background-color: #f5f5f5;
    }
    
     .navbar a {
            font-size: 18px;
        }
        
         h1 {
            font-size: 28px;
            font-weight: bold;
        }
  </style>
</head>
<body>



 <div class="container-fluid">
    <div class="row">
    <div class="mydivs col-lg-12 col-xs-2 ">
   
   <nav class="navbar navbar-expand-lg navbar-light bg-dark">
  <div class="container-fluid">
   <h1 style="color: silver;">Rent Your Vehicle</h1>
    <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link text-primary " href="main_page.jsp">Home</a>
        </li>
       
        
        </ul>
       
       </div>
       </div>
       </nav>
   
   
   
   
   </div>
</div>
      </div>



  <div class="container">
    <h1 class="text-center my-4">User Feedback</h1>
    <table class="table table-hover">
      <thead>
        <tr>
          <th>USER NAME</th>
          <th>EMAIL</th>
          <th>PHONE</th>
          <th>FEED BACK</th>
        </tr>
      </thead>
      <tbody>
        <%

         for(Feedback feed:(ArrayList<Feedback>)request.getAttribute("feedlist"))
      {  
     %>
     
        <tr>
          <td data-label="User Name"><%=feed.getName() %></td>
          <td data-label="Email"><%=feed.getEmail() %></td>
          <td data-label="Phone"><%=feed.getPhone() %></td>
          <td data-label="Feed Back"><%=feed.getFeedback() %></td>
          
          
          
        </tr>
        
        
          <% } %>
       
      </tbody>
    </table>
  </div>
  <!-- Bootstrap JS -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
  
  
  <footer>
		<p>&copy; 2023 Vehicle Rental Company. All rights reserved.</p>
	</footer>
</body>
</html>

