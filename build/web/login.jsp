<%-- 
    Document   : login
    Created on : 21 Feb, 2019, 10:39:12 PM
    Author     : Abhishek
--%>

<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
//     
//    response.addHeader("pragma","no-cache");//name and value
//response.addHeader("cache-control","no-store");//name and value
//    
//User u=(User)session.getAttribute("user");
//if(u!=null){
//  response.sendRedirect("home.jsp");
//}

%>


<!DOCTYPE html>
<html>
    
    <head>
     <title> Rent On Click</title>
        <link rel="icon" href="img/icon3.ico" type="image/x-icon">    
        
        <link href="css/login_1.css" rel="stylesheet" type="text/css">
          <link href="fontawesome-free-5.0.1/web-fonts-with-css/css/fontawesome-all.min.css" rel="stylesheet">        
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        
    <script>
    function valid(){
       var email= document.myForm.email.value;
        var password=document.myForm.password.value;
       
        
        
        if(email=="")
            {
                alert("email can't be empty");
                document.myForm.email.focus() ;
                return false;
            }
        if(password=="")
            {
                alert("password can't be empty");
                document.myForm.password.focus() ;
                
                return false;
            }
//        if(a.indexOf('@')<=0){
//          alert("invalid @ position in email");
//            return false;
//        }
//        if((a.charAt(a.length-4)!='.') && (a.charAt(a.length-3)!='.')){
//            alert("invalid email");
//            return false;
//        }
        if(password.length<3)
            {
                alert("password should be of atleast 8 character");
            return false;
            }
        
    }
    
    </script>
    
    </head>
<body>
<header>
    
    <div class="row1">
        <div class="logo" style="width: 1696px">
        <img src="img/logo1.png">
        
        
        
        
        
    <ul class="main-nav">
        
        <li><a href="index.jsp">HOME</a><vertical_separator></vertical_separator></li>
        <li><a href="index.jsp">OUR SERVICES</a><vertical_separator></vertical_separator></li>
        <li><a href="index.jsp">OUR LOCATIONS</a><vertical_separator></vertical_separator></li>
        <li><a href="index.jsp">CONTACT US</a><vertical_separator></vertical_separator></li>
        <li><a href="index.jsp">ABOUT US</a><vertical_separator></vertical_separator></li>

<li><a href="signup.jsp" class="btn btn-full">Sign Up</a></li>
    
        
    
            </ul></div></div>

	
			
    </header>
    <section class="sc">
	 <h1>Login</h1>

  <br><br>
    <center>
        <form action="login" method="post"  name="myForm" onSubmit="return valid()">
            <table >
            
        <tr>   <th> Email</th> <td>     <input type="text" name="email"  placeholder="EMAIL" ></td>
        
        </tr>
        <tr><th>
                PASSWORD </th><td>  <input type="password" name="password"  placeholder="PASSWORD"></td>
        </tr>
        <tr>
           <td></td> <td colspan="2" >
        <input type="submit" value="Login">
       </td>
        </tr>
            </table>
        
        </form>
        
        
        
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
  <p>Posted by: Jiya  & Abhishek </p>
  <p>Contact information: <a href="mailto:rentonclick@gmail.com">
  rent_on_click@gmail.com</a>.</p>
</footer>
    </body>
</html>