<%-- 
    Document   : index
    Created on : 21 Feb, 2019, 10:35:57 PM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
    <title> Rent On Click</title>
        <link rel="icon" href="img/icon3.ico" type="image/x-icon">    
        
        <link href="bootstrap-4.2.1-dist/css/bootstrap-theme.min.css" rel="stylesheet">
        <link href="bootstrap-4.2.1-dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="fontawesome-free-5.0.1/web-fonts-with-css/css/fontawesome-all.min.css" rel="stylesheet">        
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>	
<link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
 <link href="bootstrap-3.3.7-dist/css"   rel="stylesheet"> 
 
 <link href="fontawesome-free-5.0.7/web-fonts-with-css/css/fontawesome.min.css" 
       rel="stylesheet">        
 <link href="fontawesome-free-5.0.7/web-fonts-with-css/css/fontawesome-all.min.css" 
       rel="stylesheet">        
		<link href="css/index_1.css" rel="stylesheet" type="text/css">
        <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
    </head>
<body>
    
<header>
    
    <div class="row1">
        <div class="logo" style="width: 1696px">
        <img src="img/logo1.png">
        
    <ul class="main-nav">
        
        <li><a href="index.jsp">HOME</a><vertical_separator></vertical_separator></li>
        <li><a href="login.jsp">OUR SERVICES</a><vertical_separator></vertical_separator></li>
        <li><a href="login.jsp">OUR LOCATIONS</a><vertical_separator></vertical_separator></li>
        <li><a href="login.jsp">CONTACT US</a><vertical_separator></vertical_separator></li>
        <li><a href="login.jsp">ABOUT US</a><vertical_separator></vertical_separator></li>

        
        <li><a href="login.jsp" class ="btn btn-half">Login</a></li>
        <li><a href="signup.jsp" class="btn btn-full">Sign Up</a></li>
    
        
    
            </ul></div></div>
     
    <div class="hero">
<h1>Welcome To The First Ever <br>WEBSITE<br>With Which Becoming a Tenant Or a Squire<br>Is just like piece of cake </h1>
    </div>

    </header>
    
    <section class="features">
    <h3 class="text-center">FACILITIES WE'RE PROVIDING...</h3>
        <p class="copy">
            A bundle of roses seems to be as joyful as the services in bulk we are about to give you...
            our customers are our utmost priority...So scroll and Explore !!!
        </p>
        <section class="icon">
        <div class="container">
            
           <a href="SearchForViewAll.jsp" class="btn btn-info" role="button">
               <button type="button" class="btn btn-default" onclick="SearchForViewAll.jsp">
      <span class="glyphicon glyphicon-search"></span> Search
                </button></a>
               
            <a href="AdminLogin.jsp" class="btn btn-info" role="button">
            <button type="button" class="btn btn-default" onclick="login.jsp">
      <span class="glyphicon glyphicon-log-in"></span> Login
            </button></a>
            
            <button type="button" class="btn btn-default" onclick="">
      <span class="	glyphicon glyphicon-log-out"></span> Log out
    </button> <a href="AddPlace.html" class="btn btn-info" role="button">
            <button type="button" class="btn btn-default">
      <span class="	glyphicon glyphicon-open"></span> Add Place
      
            </button></a>
               <a href="viewPlace.html" class="btn btn-info" role="button">

            <button type="button" class="btn btn-default">
      <span class="	glyphicon glyphicon-globe"></span> View Place
            </button></a>
            </div>
        </section>
        <section class="carousel">
    <div class="container">
  <h2 class="text-center">Let's have a look at our gallery...</h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="img/1.jpg" alt="Los Angeles" style="width:100%;">
      </div>

      <div class="item">
        <img src="img/2.jpg" alt="Chicago" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="img/3.jpg" alt="New york" style="width:100%;">
      </div>
        <div class="item">
        <img src="img/00.jpg" alt="New york" style="width:100%;">
      </div>
        <div class="item">
        <img src="img/4.jpeg" alt="New york" style="width:100%;">
      </div>
        <div class="item">
        <img src="img/5.jpg" alt="New york" style="width:100%;">
      </div>
        <div class="item">
        <img src="img/7.jpg" alt="New york" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
        </div></section>
        <section class="needhave">
        <div class="container">
        <div class="row">
             <div class="col-md-6">
   <i class="fa fa-address-card"></i>
            <h4>HAVE EMPTY SPACE??</h4>
            
        <p class="arrange">
                why one have to go out , when there's chance of earning from home? Here's what you can do..just register yourself, upload the pictures of the non-usable place of yours and begin earning..and enjoy like a boss. Go Go Go !!
            </p>
            </div>
         <div class="col-md-6">
         <i class="fa fa-home"></i>
             <h4>NEED EMPTY SPACE??</h4>
            
        <p class="arrange">
               Tired of paying loads of rental bills and payments? searching for places at low cost? why to pay 24 hour hotel rent , if you need it for some hours..Here's the solution...get any place, at any time and have fun while saving money !! 
            </p>

            </div>
        </div>
        </div></section>
    </section>
    <section class="products">
    <ul class="products-showcase clearfix">
        <li>
        <figure class="products-photo">
            <img src="img/play.jpg" ></figure></li>
        
         
        <li>
        <figure class="products-photo">
            <img src="img/z.jpg" alt="">
            </figure></li>
        <li>
        <figure class="products-photo">
            <img src="img/h.jpg"></figure></li>
         <li>
        <figure class="products-photo">
            <img src="img/r.jpg"></figure></li>
        <li>
        <figure class="products-photo">
            <img src="img/s.jpg"></figure></li>
        <li>
        <figure class="products-photo">
            <img src="img/pp.jpg"></figure></li>
      
        </ul></section>
    <section class="head">
     <h3 class="text-center">you are just a click away...</h3>
    </section>
<section class="parallax">
    <div class="main">
    <div class="heading">
        <h2>Our aim</h2>
        <p>we are providing you best among all..keep in touch for more.</p></div>
    <div class="col-md-4">
        <div class="icon">
        <i class="fa fa-laptop"></i></div>
        <div class"text-box-1">
        <h5>Easy searching</h5>
        <p>with many filtering options you can search appropriate places upto your need.</p></div></div>
     <div class="col-md-4">
        <div class="icon">
        <i class="fa fa-newspaper"></i></div>
        <div class"text-box-1">
        <h5>Online Payment</h5>
        <p>adding and paying through our roc wallet one will not get the problem of carrying cash.</p></div></div>
     <div class="col-md-4">
        <div class="icon">
        <i class="fa fa-binoculars"></i></div>
        <div class"text-box-1">
        <h5>updated pictures</h5>
        <p>whenever you want any type of place , you will also get the facility of seeing real images.</p></div></div>
     <div class="col-md-4">
        <div class="icon">
        <i class="fa fa-cog"></i></div>
        <div class"text-box-1">
        <h5>24x7 accesibility</h5>
        <p>user can access and get places at any moment regardless of any issue or server problem. </p></div></div>
        <div class="col-md-4">
        <div class="icon">
        <i class="fa fa-lock"></i></div>
        <div class"text-box-1">
        <h5>Secure and trustworthy</h5>
        <p>all the confidential information of our customers are highly secured and the places we are providing too. </p></div></div>
     <div class="col-md-4">
        <div class="icon">
        <i class="fa fa-calendar"></i></div>
        <div class"text-box-1">
            <h5>unlimited usage</h5>
            <p>the registered users can use the services many times they want and also at very low price.</p></div></div></div></section>
 
    <div class="icon-bar">
        <a  href="#"><i class="fab fa-facebook-square"></i></a> 
  <a href="#"><i class="fab fa-linkedin"></i></a> 
  <a href="#"><i class="fab fa-twitter-square"></i></a> 
  <a href="#"><i class="fab fa-instagram"></i></a>
  <a href="#"><i class="fab fa-google-plus"></i></a> 
    </div>
      <div class="icon-bar-left">
  <a href="home.jsp"><i class="fas fa-home"></i>
      <p>Home</p>
  </a> 
  <a href="onlyView.jsp"><i class="fas fa-eye"></i><p>View</p></a> 
  
  <a href="home.jsp"><i class="far fa-hand-point-left"></i><p>Back</p>  </a> 
       
  <a href="login.jsp"><i class="far fa-question-circle"></i>  <p>Query</p>     
</a> 
  <a href="login.jsp"><i class="fas fa-edit"></i><p>Feedback</p></a> 
  
  <a href="login.jsp"><i class="fas fa-shopping-cart"></i>  <p>Cart</p></a> 

  <a href="login.jsp"><i class="far fa-user"></i>   <p>Profile</p> </a>
 
<a href="mailto:abhishekjain0112@gmail.com"><i class="fa fa-envelope" aria-hidden="true"></i><p>Mail</p> </a>  
            
</div>
   
    <footer>
  <p> by: Jiya  & Abhishek </p>
  <p>Contact information: <a href="mailto:rentonclick@gmail.com">
  rent_on_click@gmail.com</a>.</p>
</footer>
    </body>
</html>