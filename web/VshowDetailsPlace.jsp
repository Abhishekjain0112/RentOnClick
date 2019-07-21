<%-- 
    Document   : login
    Created on : 21 Feb, 2019, 10:39:12 PM
    Author     : Abhishek
--%>

<%@page import="model.Place"%>
<%@page import="dao.PlaceDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
 
  PlaceDAO pd=new PlaceDAO();
  String img1,img2; 
 String email,img;%>
 
 


<!DOCTYPE html>
<html>
    
    <head>
   <title> Rent On Click</title>
        <link rel="icon" href="img/icon3.ico" type="image/x-icon">    
        
        <link href="css/login.css" rel="stylesheet" type="text/css">
          <link href="fontawesome-free-5.0.1/web-fonts-with-css/css/fontawesome-all.min.css" rel="stylesheet">        
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
       

    
    </head>
<body>
    

<header>
    
    <div class="row1">
        <div class="logo" style="width: 1696px">
        <img src="img/logo1.png">
        
        
        
        
        
      
      <ul class="main-nav">
        
  <li><a href="home.jsp">HOME</a><vertical_separator></vertical_separator></li>
        <li><a href="addPlace.jsp">AddPlace</a><vertical_separator></vertical_separator></li>
        <li><a href="index.jsp">ShowMyPlaces</a><vertical_separator></vertical_separator></li>
        <li><a href="index.jsp">Add Available</a><vertical_separator></vertical_separator></li>
        <li><a href="index.jsp">Book Places</a><vertical_separator></vertical_separator></li>
        <li><a href="index.jsp">Show My Available</a><vertical_separator></vertical_separator></li>
      <li><a href="index.jsp">Profile</a><vertical_separator></vertical_separator></li>
      
        
        
        <li><a href="aboutus.html">ABOUT US</a><vertical_separator></vertical_separator></li>
 
        
<!--        <li><a href="login.jsp" class ="btn btn-half">Login</a></li>-->

        
    
            </ul></div></div>

	
			
    </header>
    <section class="sc">
	
        <center> 
        
            
              <h1>Place Details </h1>
        
        <%
      String pid=request.getParameter("placeid");
      
      Place p=new Place();
      p.setPlaceid(Integer.parseInt(pid));
        
      Place p1=pd.getSinglePlaces(p);
        
        img1="placeimg/"+p1.getEmailid()+Integer.toString(p1.getUser().getUserid())+Integer.toString(p1.getPlaceid())+p1.getCount()+"1.jpg";
     
        img2="placeimg/"+p1.getEmailid()+Integer.toString(p1.getUser().getUserid())+Integer.toString(p1.getPlaceid())+p1.getCount()+"2.jpg";
         
        
      
        %>
        
    <center>
        <table border="5">
            <tr >
                <th colspan="4" >YOur  Place  Information  </th>
                
            </tr>
            
            <tr>
                <th>Place id</th>
                <td><%=Integer.toString(p1.getPlaceid()) %></td>
            </tr>
            
            <tr>
                <th>Place Name</th>
                <td><%=p1.getPlacename()%></td>
            </tr>
   
            
            <tr>
                <th>Place Type </th>
                <td><%= p1.getPlacetype()%></td>
            </tr>
             <tr>
                <th>Place Address</th>
                <td><%=p1.getAddress()%></td>
            </tr>
            <tr>
                <th>City </th>
                <td><%= p1.getCity()%></td>
            </tr>
            <tr>
                <th>State </th>
                <td><%=  p1.getState()%></td>
            </tr>
          
            
             <tr>
                <th>Landmark </th>
                <td><%=p1.getLandmark()%></td>
            </tr>
            <tr>
                <th>Description</th>
                <td><%=p1.getDescription()%></td>
            </tr>
            <tr>
                <th>Customer Type </th>
                <td><%=p1.getCustomertype1()%>
             <%=p1.getCustomertype2()%></td>
            
            </tr>
           
            <tr>
                <td>  </td>

                <td>
                    <img src=<%= img1%> height="300"  width="400"/>
              
                    <img src=<%=img2%> height="300"  width="400"/>
        
            
                </td>

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