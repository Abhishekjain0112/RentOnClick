<%-- 
    Document   : signup
    Created on : 22 Feb, 2019, 12:01:47 AM
    Author     : Abhishek
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
     <title> Rent On Click</title>
        <link rel="icon" href="img/icon3.ico" type="image/x-icon">    
        
        <link href="css/login_1.css" rel="stylesheet" type="text/css">
          <link href="fontawesome-free-5.0.1/web-fonts-with-css/css/fontawesome-all.min.css" rel="stylesheet">        
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        
    
    <script class="valid">
 function validation(){
     var correct_way=/^[A-Za-z]+$/;
     var name=document.myForm.name.value;
     var email= document.myForm.email.value;
        var password=document.myForm.password.value;
     if(name=="")
         {
             alert( "Please provide your Name!" );
             document.myForm.name.focus() ;
             return false;
         }
     if(name.length<3)
         {
            alert(" Username must be of 3 character!");
             document.myForm.name.focus() ;
             return false;
         }
     if(name.length>20)
         {
             alert(" Username must be less than 20 character!");
             document.myForm.name.focus() ;
             return false;
         }
     if(name.match(correct_way)){
         true;}
    
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
     if ( ( myForm.gender[0].checked == false ) && ( myForm.gender[1].checked == false ) && (myForm.gender[2].checked == false) )
   {
   alert ( "Please choose your Gender: Male or Female" );
       document.myForm.gender.focus() ;
   return false;
   }   
       
      if( document.myForm.phone.value == "")
   {
     alert( "Please provide a Mobile No.!!!" );
     document.myForm.phone.focus() ;
     return false;
   }
     if(isNaN( document.myForm.phone.value))
         {
              alert( "Only Numeric values are allowed in Mobile No.!!!" );
     document.myForm.phone.focus() ;
     return false;
         }
     if(document.myForm.phone.value.length != 10){
         alert( "only 10 numeric characters are allowed!!!" );
     document.myForm.phone.focus() ;
     return false;
     }
     if(document.myForm.address.value=="")
         {
            alert( "Please provide a valid address .!!!" );
     document.myForm.address.focus() ;
     return false; 
         }
     if(document.myForm.pic.value=="")
      {
            alert( "Please provide a profile picture .!!!" );
     document.myForm.pic.focus() ;
     return false; 
         }
 }
    </script>
    
    </head>
<body background="j1.jpg">
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

        
<li><a href="login.jsp" class ="btn btn-half">Login</a></li>
        
    
        
    
            </ul></div></div>

	
			
    </header>
    <section class="sc">
        
          <form method="post" action="signin" name="myForm" onSubmit="return validation()" enctype="multipart/form-data">
              <font size="5">
              <center>
              
     <table class="table2" border="3" width="100%" align="center" bgcolor="lightgreen">
                    <tr colspan="2" align="center">
            <td class="setfont"  colspan="2"> Signup Table<td> 
                
            </tr>
           
                     
             <tr>
            <td class="setfont">Name</td>
            <td><input type="text" name="name" > </td>
               
            </tr>
       

      <tr>
            <td class="setfont">email</td>
            <td><input type="text" name="email" > </td>
               
            </tr>
        





	   
             <tr>
            <td class="setfont">Password</td>
            <td><input type="password" name="password" > </td>
           </tr>
        
            
            
            
             <tr>
          	<tr class="setfont">
		<td>Gender</td>
		<td><input type="radio" name="gender" value="male" checked> Male  
			<input type="radio" name="gender" value="female"> Female
			<input type="radio" name="gender" value="other"> Other</td>
	</tr>
            
           
          	<tr class="setfont">
		<td>Phone Number</td>
		<td><input type="text" name="phone"/></td>
	</tr>

	<tr class="setfont">
		<td>Address</td>
		<td><input type="text" name="address"/></td>
	</tr>
            
         <tr>
             
                <td class="setfont">DATE</td>
                       <td>
                           <select name="day">
                               <option>Date</option>
                              
                               <% for(int i=1;i<31;i++)
                               {    
                               %>
                               
                               <option><%=i%></option>
                              
                           <%}%>
                                  
                                  
                                  
                                  
                                  
                                  
                                  
                           </select>
                           <select name="month">
                               <option>Month</option>
                                 <% for(int i=1;i<13;i++)
                               {    
                               %>
                               
                               <option><%=i%></option>
                              
                           <%}%>
                             
                           </select>
                           <select name="year">
                                <option>year</option>
                                      <% for(int i=1990;i<2000;i++)
                               {    
                               %>
                               
                               <option><%=i%></option>
                              
                           <%}%>
                                
                           </select>
                       </td>
            </tr>
        
        
        
	<tr class="setfont">
		<td>Profile pic</td>
		<td><input type="file" name="pic"/></td>
	</tr>
           
        
        
            <tr colspan="2" align="center">
           <td colspan="2"> <input type="submit" value="Submit"><input type="reset" value="reset" ></td>
            </tr>
            
            </table>        
      
                           </font></center>
          </form>
        
        
        
        
        
		  <img src="img/dd.jpg"  >
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