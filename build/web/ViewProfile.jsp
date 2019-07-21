<%-- 
    Document   : login
    Created on : 21 Feb, 2019, 10:39:12 PM
    Author     : Abhishek
--%>

<%@page import="dao.UserDAO"%>
<%@page import="model.Place"%>
<%@page import="dao.PlaceDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="checkSession.jsp" %>
<%!
 
 
 String email,img;%>
 
 


<!DOCTYPE html>
<html>
    
    <head>
     <title> Rent On Click</title>
        <link rel="icon" href="img/icon3.ico" type="image/x-icon">    
        
          <link href="css/forAll.css" rel="stylesheet" type="text/css">
          <link href="fontawesome-free-5.0.1/web-fonts-with-css/css/fontawesome-all.min.css" rel="stylesheet">        
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
       

    
    </head>
<body>
    
        <%
    String name1=(String)session.getAttribute("name");
        
       
      // User u=(User)session.getAttribute("user");
        //out.print(u);
        email=(String)session.getAttribute("email");
        img="pimg/"+email+".jpg";    
    %>
    
<header>
    
    <div class="row1">
        <div class="logo" style="width: 1696px">
        <img src="img/logo1.png">
        
        
        
        
        
      
      <ul class="main-nav">
        
        <li><a href="home.jsp">HOME</a><vertical_separator></vertical_separator></li>
        <li><a href="addPlace.jsp">AddPlace</a><vertical_separator></vertical_separator></li>
        <li><a href="showMyPlace.jsp">ShowMyPlaces</a><vertical_separator></vertical_separator></li>
        <li><a href="showAddAvailable.jsp">Add Available</a><vertical_separator></vertical_separator></li>
        <li><a href="BookAllAvailablePlaces.jsp">Book Places</a><vertical_separator></vertical_separator></li>
        <li><a href="showMyAvailables.jsp">Show My Available</a><vertical_separator></vertical_separator></li>
      <li><a href="ViewMyProfile.jsp">Profile</a><vertical_separator></vertical_separator></li>
      
        
        
        <li><a href="aboutus.html">ABOUT US</a><vertical_separator></vertical_separator></li>
   <li><a href="home.jsp"><%=name1%></a><vertical_separator></vertical_separator></li>
      
        
<!--        <li><a href="login.jsp" class ="btn btn-half">Login</a></li>-->


        <li><a href="sessionExpiore.jsp" class="btn btn-full">Logout</a></li>
 
        <li><img src=<%=img%> height="50"  width="50"> </li>
          
        
    
            </ul></div></div>

	
			
    </header>
    <section class="sc">
	
        <center> 
       
    <%
        //see image 
     UserDAO ud=new UserDAO();
    User user3=ud.viewProfile(u2);
    
    
    
                email=user3.getEmail();
        img="pimg/"+email+".jpg";
     
        
        
        %>
      
        <br>
        <br>
         <center> 
       
        
            <h1>User Profile </h1>
    
       
        <table border="5" >
             <tr>
                <td colspan="8"> <img src=<%= img%> height="300"  width="200"/></td>
            </tr>        
            
            <tr>
                <th colspan="4">NAME</th>
                <td colspan="4"><%=user3.getName() %></td>
            </tr>
            
            <tr>
                <th colspan="4">EMAIL</th>
                <td colspan="4"><%=user3.getEmail() %></td>
            </tr>
   
            
            <tr>
                <th colspan="4">PHONE</th>
                <td colspan="4"><%=user3.getPhone() %></td>
            </tr>
            
              <tr>
                <th colspan="4">ADDRESS</th>
                <td colspan="4"><%=user3.getAddress() %></td>
            </tr>
   
                        <tr>
                <th colspan="4">GENDER</th>
                <td colspan="4"><%=user3.getGender() %></td>
            </tr>


        </table> 
        
        
        
        </center>
        
            
     
       
        
	
    
    
</section>
    
    
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
  <a href="ViewAll.jsp"><i class="fas fa-eye"></i><p>View</p></a> 
  
  <a href="home.jsp"><i class="far fa-hand-point-left"></i><p>Back</p>  </a> 
       
  <a href="query.jsp"><i class="far fa-question-circle"></i>  <p>Query</p>     
</a> 
  <a href="feedback.jsp"><i class="fas fa-edit"></i><p>Feedback</p></a> 
  
  <a href="showMyCart.jsp"><i class="fas fa-shopping-cart"></i>  <p>Cart</p></a> 

  <a href="ViewMyProfile.jsp"><i class="far fa-user"></i>   <p>Profile</p> </a>
 
<a href="mailto:abhishekjain0112@gmail.com"><i class="fa fa-envelope" aria-hidden="true"></i><p>Mail</p> </a>  
            
</div>
     <footer>
  <p>Posted by: Jiya  & Abhishek </p>
  <p>Contact information: <a href="mailto:rentonclick@gmail.com">
  rent_on_click@gmail.com</a>.</p>
</footer>
    </body>
</html>