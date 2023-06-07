<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>user op</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style>

   
    body {
      background-image: url("https://live.staticflickr.com/7592/16888464777_0073470e81_b.jpg");
      background-size: cover;
    }
    
    /* to make carousel control arrow black */
    .carousel-control-prev, .carousel-control-next
     {
          color: black;
     }
  
    /* center the carousel */
    .carousel
     {
      margin: 20px auto;
      max-width: 3000px;
      max-height: 500px;
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
  </style>
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
					<a class="nav-link" href="about.jsp">About</a>
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
	
	
  <div class="container">
    <h2 style="color: #FFFFFF;" style= "font-weight: bold;" class="text-center" >OUR VEHICLES</h2>
    <div id="productCarousel" class="carousel slide" data-ride="carousel">
      <!-- indicators -->
      <ol class="carousel-indicators">
        <li data-target="#productCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#productCarousel" data-slide-to="1"></li>
        <li data-target="#productCarousel" data-slide-to="2"></li>
         <li data-target="#productCarousel" data-slide-to="3"></li>
          <li data-target="#productCarousel" data-slide-to="4"></li>
           <li data-target="#productCarousel" data-slide-to="5"></li>
      </ol>

      <!-- slides -->
      
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="https://d308ljkq6e62o1.cloudfront.net/img/NRga1%2BNPQKCv5XGiKgvxuA/file.JPG" alt="Product 1">
          <div class="carousel-caption">
          
          
           <colspan="2"><c:if test="${requestScope.Err!=null}">
		   </c:if>
		  <font color="red">${requestScope.Err}</font>
		  
		  
            <h3 style="font-weight: bold;">INNOVA_CRYSTA</h3>
            
             <form action="cardetail.ds" method="post">
             <input type="hidden" name="name" value="Innova_Crysta">
             <button type="submit" class="btn btn-success"> Book Now</button>
             </form>
          </div>
        </div>
        
        
        <div class="carousel-item">
          <img src="https://d308ljkq6e62o1.cloudfront.net/img/plSKKLOWR5OZ0yp9boXRXg/file.JPG" alt="Product 2">
          <div class="carousel-caption">
          
          
           <colspan="2"><c:if test="${requestScope.Err1!=null}">
		   </c:if>
		  <font color="red">${requestScope.Err1}</font>
		  
		  
            <h3 style="font-weight: bold;">SUZUKI_BALENO</h3>
                <form action="cardetail.ds" method="post">
             <input type="hidden" name="name" value="Suzuki_Baleno">
             <button type="submit" class="btn btn-success"> Book Now</button>
             </form>
          </div>
        </div>
        
        
        <div class="carousel-item">
          <img src="https://d308ljkq6e62o1.cloudfront.net/img/V6wTYQjSSu6QI1bTDSctIQ/file.JPG" alt="Product 3">
          <div class="carousel-caption">
          
          
           <colspan="2"><c:if test="${requestScope.Err2!=null}">
		   </c:if>
		  <font color="red">${requestScope.Err2}</font>
		
		
            <h3 style="font-weight: bold;">MAHINDRA_SCORPIO</h3>
            
            <form action="cardetail.ds" method="post">
             <input type="hidden" name="name" value="Mahindra_Scorpio">
             <button type="submit" class="btn btn-success"> Book Now</button>
             </form>
           
          </div>
        </div>
        
        
        
        
        
        
        <div class="carousel-item">
          <img src="https://d308ljkq6e62o1.cloudfront.net/img/xoj_bgbKRpyVpJXON1pYBg/file.JPG" alt="Product 4">
          <div class="carousel-caption">
          
          
           <colspan="2"><c:if test="${requestScope.Err3!=null}">
		   </c:if>
		  <font color="red">${requestScope.Err3}</font>
		
		
            <h3 style="font-weight: bold;">JEEP_COMPASS</h3>
            
            <form action="cardetail.ds" method="post">
             <input type="hidden" name="name" value="Jeep_Compass">
             <button type="submit" class="btn btn-success"> Book Now</button>
             </form>
           
          </div>
        </div>
        
        
        
        
        
        <div class="carousel-item">
          <img src="https://d308ljkq6e62o1.cloudfront.net/img/pXvftziaRpKwl5tYxz4HmA/file.JPG" alt="Product 5">
          <div class="carousel-caption">
          
          
           <colspan="2"><c:if test="${requestScope.Err4!=null}">
		   </c:if>
		  <font color="red">${requestScope.Err4}</font>
		
		
            <h3 style="font-weight: bold;">VITARA_BREEZA</h3>
            
            <form action="cardetail.ds" method="post">
             <input type="hidden" name="name" value="Vitara_Breeza">
             <button type="submit" class="btn btn-success"> Book Now</button>
             </form>
           
          </div>
        </div>
        
        <div class="carousel-item">
          <img src="https://d308ljkq6e62o1.cloudfront.net/img/NYmANOnFRVim6hWfW8cz7Q/file.JPG" alt="Product 6">
          <div class="carousel-caption">
          
          
           <colspan="2"><c:if test="${requestScope.Err5!=null}">
		   </c:if>
		  <font color="red">${requestScope.Err5}</font>
		
		
            <h3  style="font-weight: bold;">TATA_PUNCH</h3>
            
            <form action="cardetail.ds" method="post">
             <input type="hidden" name="name" value="Tata_Punch">
             <button type="submit" class="btn btn-success"> Book Now</button>
             </form>
           
          </div>
        </div>
        
          <!-- for  book more vehicles     -->
          
        <div class="carousel-item">
          <img src="img/HD_transparent_picture1.png" alt="Product 3">
          <div class="carousel-caption">
          
          
      
		
            <h3 style="font-weight: bold; color: black;"> For Book More Vehicles</h3>
            
            <form action="allcardetails.ds" method="post">
                <input type="hidden" name="value" value="viewcar">
           
             <button type="submit" class="btn btn-success"> Press Here</button>
             </form>
           
          </div>
        </div>
        
        
        
      
        
        
      </div>

      <!-- controls -->
      <a class="carousel-control-prev" href="#productCarousel" data-slide="prev">
        <span class="carousel-control-prev-icon"></span>
      </a>
      <a class="carousel-control-next" href="#productCarousel" data-slide="next">
        <span class="carousel-control-next-icon"></span>
      </a>
    </div>
  </div>
  
  
  <footer>
		<p>&copy; 2023 Vehicle Rental Company. All rights reserved.</p>
	</footer>
</body>
</html>





 <!--  https://images.pexels.com/photos/2387793/pexels-photo-2387793.jpeg?cs=srgb&dl=pexels-adrien-olichon-2387793.jpg&fm=jpg -->
 <!--  blur https://hougumlaw.com/wp-content/uploads/2016/05/light-website-backgrounds-light-color-background-images-light-color-background-images-for-website-1024x640.jpg-->