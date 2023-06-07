<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page import ="com.nttdata.training.domain.vehicle"%>
<%@ page import ="java.util.List"%>
<%@ page import ="java.util.ArrayList"%>



<html>
    <head>
    <style>

     /*For back ground image */
    body {
      background-image: url("https://images.unsplash.com/photo-1554034483-04fda0d3507b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8c29mdCUyMGJhY2tncm91bmR8ZW58MHx8MHx8&w=1000&q=80");
      background-size: cover;
    }
    </style>
    
    
    <title> view vehicle    </title>
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
</head>


<body>
   


<div class="table-responsive">

  <table id="myTable" class="display table">
    <thead>
    
        <tr>
        <th> Vehicle_Number</th>
        <th> Vehicle_Type </th>
         <th> Vehicle_Name</th>
        <th> Vehicle_Price </th>
         <th> Discount </th>
     
       
       </tr>
    </thead>
<tbody>

<%

for(vehicle veh:(ArrayList<vehicle>)request.getAttribute("vehiclelist"))
{  
%>
<tr>
<td><%=veh.getVehicle_number() %></td>  

<td><%=veh.getVehicle_type() %></td> 

<td><%=veh.getVehicle_name()%></td> 


 <td><%=veh.getVehicle_price()%></td> 
 
 <td><%=veh.getDiscount()%></td> 
</tr>

<% } %>


</tbody>
</table>
</div>

</body>
</html>
