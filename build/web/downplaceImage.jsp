<%-- 
    Document   : login
    Created on : 21 Feb, 2019, 10:39:12 PM
    Author     : Abhishek
--%>

<%@page import="model.Place"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="model.ForPlaceImage"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="checkSession.jsp" %>
<%! String email,img;%>
<%

response.addHeader("pragma","no-cache");//name and value
response.addHeader("cache-control","no-store");//name and value

if(session==null)
          {
              response.sendRedirect("index.jsp");
          }
//try{
if(session.isNew())
          {
              response.sendRedirect("index.jsp");
          }



 Place p2=(Place)session.getAttribute("currentplace");
if(p2==null)
          {
              response.sendRedirect("index.jsp");
              
          }
  
        ForPlaceImage fpi2=(ForPlaceImage)session.getAttribute("imageforplace");
  if(fpi2==null)
          {
              response.sendRedirect("index.jsp");
              
          }



%>

<%! File f; 
   String img1,img2,count,placeid,userid;
   Place p1;
   ForPlaceImage fpi;
%>
<!DOCTYPE html>
<html>
    
    <head>
     <title> Rent On Click</title>
        <link rel="icon" href="img/icon3.ico" type="image/x-icon">    
        
        <link href="css/login.css" rel="stylesheet" type="text/css">
          <link href="fontawesome-free-5.0.1/web-fonts-with-css/css/fontawesome-all.min.css" rel="stylesheet">        
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
       
     <style>
img {
  border-radius: 20%;
}
img :hover {
  border-radius: 10%;
  width:40%;
  height:60% 
  
}

</style>
    
    
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
        <li><a href="VewAllAvailablePlaces.jsp">Book Places</a><vertical_separator></vertical_separator></li>
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
	
         <h1>Check Your Place Information </h1>
        
                <%
         fpi=(ForPlaceImage)session.getAttribute("imageforplace");
         p1=(Place)session.getAttribute("currentplace");
        placeid=Integer.toString(fpi.getPlaceid());
        userid=Integer.toString(fpi.getUserid());
        count=fpi.getCount();

        byte[] b1,b2;
       Blob blob1=fpi.getImagePlace1();
       Blob blob2=fpi.getImagePlace2();
       
       int size1,size2;
            size1=(int)blob1.length();
             b1=blob1.getBytes(1, size1);
      
             size2=(int)blob2.length();
             b2=blob2.getBytes(1, size2);
      
             
 f=new File("D:/Advanced JAVA/FinalRentOnClick/web/placeimg");
 //f=new File("src/FinalRentOnClick/web/placeimg");
  

 //f=new File("..FinalRentOnClick/web/placeimg");
 
 
 
     if(f.exists()){
         // out.println("Directory Exist");
     }  
     else
    f.mkdir();
      
    String path= f.getPath();
       
        FileOutputStream fos=new FileOutputStream(path+"/"+email+userid+placeid+count+"1.jpg");
        //out.println(path);
            fos.write(b1);
            //fos.write(b2);
            fos.close();
     
           FileOutputStream fos2=new FileOutputStream(path+"/"+email+userid+placeid+count+"2.jpg");
       // out.println(path);
            fos2.write(b2);
            fos2.close();
         
            
            
            
            
       
        //see image 
       
        img1="placeimg/"+email+userid+placeid+count+"1.jpg";
     
        img2="placeimg/"+email+userid+placeid+count+"2.jpg";
  
        
        
        %>
      
        <br>
    <center>
        <table boder="5">
            <tr >
                <th colspan="4" >YOur  Place  Information  </th>
                
            </tr>
            
            <tr>
                <th>Place id</th>
                <td><%=placeid %></td>
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
                <td><%=p1.getCustomertype1()%></td>
                <td><%=p1.getCustomertype2()%></td>
            
            </tr>
           
            <tr>
                <td>
                    <img src=<%= img1%> height="140"  width="100"/>
                </td>

                <td>
                    <img src=<%=img2%> height="140"  width="100"/>
        
        
         
                </td>

            </tr>
            
            
            
            
        </table> 
        
        
        
        
        <br>
        <h1>Press this make profile untile your profile pic not seen</h1>
        <form action="downplaceImage.jsp">
            <input type="submit" value="Make Place Visible">
            
        </form>
        
        <br>
        
        
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
  <a href="#"><i class="fas fa-home"></i></a> 
  <a href="#"><i class="fas fa-eye"></i></a> 
  <a href="#"><i class="far fa-hand-point-left"></i></a> 
           <a href="#"><i class="far fa-user"></i></a>
</div>
   
     <footer>
  <p>Posted by: Jiya  & Abhishek </p>
  <p>Contact information: <a href="mailto:rentonclick@gmail.com">
  rent_on_click@gmail.com</a>.</p>
</footer>
    </body>
</html>