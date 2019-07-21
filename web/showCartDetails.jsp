<%-- 
    Document   : login
    Created on : 21 Feb, 2019, 10:39:12 PM
    Author     : Abhishek
--%>

<%@page import="model.Available"%>
<%@page import="dao.AvailableDAO"%>
<%@page import="model.Cart"%>
<%@page import="dao.CartDAO"%>
<%@page import="model.Place"%>
<%@page import="dao.PlaceDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="checkSession.jsp" %>
<%!
  CartDAO cd=new CartDAO();
  Cart c;
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
        
            
              <h1> Invoice </h1>
        
        <%
        
        int uid=u2.getUserid();
        int cartid=Integer.parseInt(request.getParameter("cartid"));
        //int uid =Integer.parseInt(userid);
        c=cd.ShowCartDetails(cartid);
        //if c is not null
            
         int availableid =c.getAvailableid();
            AvailableDAO ad=new AvailableDAO();
            
            Available a=ad.getAvailableDetails(availableid);
             Place p=a.getP();
 
  
        img1="placeimg/"+p.getEmailid()+Integer.toString(p.getUser().getUserid())+Integer.toString(p.getPlaceid())+p.getCount()+"1.jpg";
     
        img2="placeimg/"+p.getEmailid()+Integer.toString(p.getUser().getUserid())+Integer.toString(p.getPlaceid())+p.getCount()+"2.jpg";
         
       
      
        %>
        
    <center>
        <table border="5">
            <tr >
                <th colspan="4" >YOur  Place  Information  </th>
                
            </tr>
        
            
            <tr>
                <th>Place Name</th>
                <td><%=p.getPlacename()%></td>
            </tr>
   
            
            <tr>
                <th>Place Type </th>
                <td><%= p.getPlacetype()%></td>
            </tr>
             <tr>
                <th>Place Address</th>
                <td><%=p.getAddress()%></td>
            </tr>
            <tr>
                <th>City </th>
                <td><%= p.getCity()%></td>
            </tr>
            <tr>
                <th>State </th>
                <td><%=  p.getState()%></td>
            </tr>
          
            
             <tr>
                <th>Landmark </th>
                <td><%=p.getLandmark()%></td>
            </tr>
            <tr>
                <th>Description</th>
                <td><%=p.getDescription()%></td>
            </tr>
            <tr>
                <th>Customer Type </th>
                <td><%=p.getCustomertype1()%>
             <%=p.getCustomertype2()%></td>
            
            </tr>
               <tr>
                <th>Cost</th>
                <td><%=c.getCost()%></td>
            
            </tr>        
            
                    <tr>
                <th>Paid</th>
                <td><%=c.getPaid()%></td>
            
            </tr>   
            
            
                           <tr>
                <th>Date</th>
                <td><%=c.getDate()%></td>
            
            </tr>   
                         <tr>
                <th>Information</th>
                <td>
<!--                  <form method="post" action="home.jps">
                        <input type="hidden" name="userid" value="<%=c.getBuyerid()%>" >
                        <input type="submit" value="home " >
                    </form>  
                     -->
                     
                        <form method="post" action="showDetails.jsp">
             <input type="hidden" name="placeid" value="<%=p.getPlaceid()%>" >
             
               <input type="submit" value="place Details">
           </form>  
                        
                        
                    <form method="post" action="ViewUserProfile.jsp">
                        <input type="hidden" name="userid" value="<%=c.getBuyerid()%>" >
                        <input type="submit" value="Buyer Details" >
                    </form>   
                    &nbsp;&nbsp;&nbsp;
                       <form method="post" action="ViewUserProfile.jsp">
                        <input type="hidden" name="userid" value="<%=c.getSellerid()%>" >
                        <input type="submit" value="Seller Details" >
                    </form> 
                    
                </td>
            
            </tr>      
            
            <tr>
            

                <td colspan="2">
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