<%-- 
    Document   : login
    Created on : 21 Feb, 2019, 10:39:12 PM
    Author     : Abhishek
--%>

<%@page import="java.io.File"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="model.ForProfile"%>
<%@page import="dao.UserDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="checkSession.jsp" %>
<%@page import="model.User"%>

<%! File f; 
   String img,email;
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
  border-radius: 70%;
}
</style>
    
    
    </head>
<body>
<header>
    
    <div class="row1">
        <div class="logo" style="width: 1696px">
        <img src="img/logo1.png">
        
        
        
        
        
    <ul class="main-nav">
        
        <li><a href="">HOME</a><vertical_separator></vertical_separator></li>
        <li><a href="">OUR SERVICES</a><vertical_separator></vertical_separator></li>
        <li><a href="">OUR LOCATIONS</a><vertical_separator></vertical_separator></li>
        <li><a href="">CONTACT US</a><vertical_separator></vertical_separator></li>
        <li><a href="">ABOUT US</a><vertical_separator></vertical_separator></li>

        
        <li><a href="" class ="btn btn-half">Login</a></li>
        <li><a href="" class="btn btn-full">Sign Up</a></li>
    
        
    
            </ul></div></div>

	
			
    </header>
    <section class="sc">
	 <h1>View Your Profile</h1>

  <br><br>
    <center>
   
        
        
  
	
	
	
    
      
        <%
        
          User u=(User)session.getAttribute("user");
        
        
        ForProfile fp;
        UserDAO us=new UserDAO();
        fp=us.getImageFromDataBase(u2.getEmail());
        
        byte[] b;
       Blob blob=fp.getBolbImage();
       
       int size;
            size=(int)blob.length();
       
       b=blob.getBytes(1, size);
       
 //f=new File("D:/Advanced JAVA/DemoRent/web/img");//old project path 
       
  f=new File("D:/Advanced JAVA/FinalRentOnClick/web/pimg"); 
               if(f.exists()){
          out.println("Directory Exist");
     }  
     else
    f.mkdir();
      
    String path= f.getPath();
       
        FileOutputStream fos=new FileOutputStream(path+"/"+fp.getEmail() +".jpg");
          
        out.println(path);
            fos.write(b);
            fos.close();
       
       
        //see image 
            
                email=u2.getEmail();
        img="pimg/"+email+".jpg";
     
        
        
        %>
      
        <br>
        <h1>Press this make profile untile your profile pic not seen</h1>
        <form action="downlodeImage.jsp">
            <input type="submit" value="Make profile Visible">
            
        </form>
        
        <br>
        
        <img src=<%= img%> height="100"  width="100"/>
        
        <br><h2> <a href="home.jsp">HOME</a></h2>
    
    
          
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