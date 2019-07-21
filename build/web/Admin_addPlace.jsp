<%-- 
    Document   : AddPlace
    Created on : 23 Feb, 2019, 12:09:16 AM
    Author     : Abhishek
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="checkSession.jsp" %>
<%! String email,img;%>
<!DOCTYPE html>
<html>
    <%
    String name1=(String)session.getAttribute("name");
        
       
      // User u=(User)session.getAttribute("user");
        //out.print(u);
        email=(String)session.getAttribute("email");
        img="pimg/"+email+".jpg";    
    %>
    <head>
     <title> Rent On Click</title>
        <link rel="icon" href="img/icon3.ico" type="image/x-icon">    
        
        <link href="css/AddPlace_1.css" rel="stylesheet" type="text/css">
          <link href="fontawesome-free-5.0.1/web-fonts-with-css/css/fontawesome-all.min.css" rel="stylesheet">        
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
       
    
        <script class="valid">
 function validation(){
     var correct_way=/^[A-Za-z]+$/;
     var placename=document.myForm.placename.value;
 
     
     if(placename=="")
         {
             alert( "Please provide Place Name!" );
             document.myForm.placename.focus() ;
             return false;
         }
     if(placename.length<3)
         {
            alert(" Username must be of 3 character!");
             document.myForm.placename.focus() ;
             return false;
         }
     if(placename.length>20)
         {
             alert(" Username must be less than 20 character!");
             document.myForm.placename.focus() ;
             return false;
         }
     
        
 
  
     if(document.myForm.address.value=="")
         {
            alert( "Please provide a valid address .!!!" );
     document.myForm.address.focus() ;
     return false; 
         }
     if(document.myForm.image1.value=="")
      {
            alert( "Please provide 1 picture .!!!" );
     document.myForm.image1.focus() ;
     return false; 
         }
          if(document.myForm.image2.value=="")
      {
            alert( "Please provide a 2 picture .!!!" );
     document.myForm.image2.focus() ;
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
                <li><a href="AdminHome.jsp">HOME</a><vertical_separator></vertical_separator></li>
        <li><a href="Admin_addPlace.jsp">AddPlace</a><vertical_separator></vertical_separator></li>
        <li><a href="Admin_ApprovePlace.jsp">Approve_Places</a><vertical_separator></vertical_separator></li>
        <li><a href="Admin_View_AllAvailablePlaces.jsp">View_All_Available</a><vertical_separator></vertical_separator></li>    
<!--        
        <li><a href="showMyPlace.jsp">ShowMyPlaces</a><vertical_separator></vertical_separator></li>
        -->
        <li><a href="Admin_showAddAvailable.jsp">Add Available</a><vertical_separator></vertical_separator></li>
        <li><a href="Admin_BookAllAvailablePlaces.jsp">Book Places</a><vertical_separator></vertical_separator></li>
<!--      <li><a href="showMyAvailables.jsp">Show My Available</a><vertical_separator></vertical_separator></li>
      <li><a href="ViewMyProfile.jsp">Profile</a><vertical_separator></vertical_separator></li>
       <li><a href="showMyCart.jsp">Cart</a><vertical_separator></vertical_separator></li>-->
        <li><a href="Admin_searchPlaces.jsp">searchPlaces</a><vertical_separator></vertical_separator></li>
        <li><a href="aboutus.html">ABOUT US</a><vertical_separator></vertical_separator></li>
       <li><a href="Admin_ViewMyProfile.jsp"><%=name1%></a><vertical_separator></vertical_separator></li>  
<!--        <li><a href="login.jsp" class ="btn btn-half">Login</a></li>-->
        <li><a href="sessionExpiore.jsp" class="btn btn-full">Logout</a></li>
         <li><img src=<%=img%> height="50"  width="50"> </li>
 
    </ul></div></div>

	
			
    </header>
    <section class="sc">
  <h1>Add Place</h1>
  
        
        
        
    
        <form method="post" action="addplace" name="myForm" onSubmit="return validation()"  enctype="multipart/form-data">
                 
            
             <table class="table2" border="3" width="100%" align="center" bgcolor="lightyellow">
            <tr colspan="2" align="center">
            <td class="setfont"  colspan="2"> Add your Place<td> 
                
            </tr>
            
          
               <tr  class="setfont" >
             
        <td> Enter Place Name </td>   <td>
            <input type="text" name="placename" >
        </td>   
            </tr>
            
            
            
            
            <tr  class="setfont" >
             
        <td> Select Place Type </td>   <td> <select name="placetype">
                      <option>place</option>            
                 <option>Room</option>    
               
                    <option>Hostels</option>
                    <option>Individual House</option>
                     <option>Party</option>    
                <option>Play</option>
                    <option>Sports</option>
                    <option> House</option>
                    <option> Apartment</option>
                    <option> library</option>
                    <option> Room</option>
                    <option> Farm House</option>
                    
                    <option> Other</option>
                    
                    
                </select></td>   
            </tr>
           
           <tr>
            <td class="setfont">Landmark </td>
                    <td><select name="landmark">
                <option>---location--</option>
                  <option>Rajwada </option>
                <option>Regal </option>
                <option>Annapurna </option>
               <option>Vijay Nagar</option>
                  <option>Teen imli</option>

                </select> </td>
           
            </tr>
            
             <tr>
            <td class="setfont">City </td>
                    <td><select name="city">
                <option>---City--</option>
                  <option>Indore </option>
                <option>Ujjain </option>
                <option>Bhopal </option>
               <option>Sagar</option>
                  <option>Other</option>

                </select> </td>
           
            </tr>
            
            
              <tr>
            <td class="setfont">State </td>
                    <td><select name="state">
                <option>-State-</option>
                  <option>Madhya Pradesh  </option>
                <option>UP</option>
                <option>Rajasthan </option>
               <option>Other</option>

                </select> </td>
           
            </tr>
            
            
            
            
            <tr class="setfont">
            <td class="setfont">Address </td>
            <td><textarea rows="4" cols="40" name="address"></textarea>  </td>
                
            </tr>
           
           
            
            <tr class="setfont">
            <td class="setfont">Descryption</td>
            <!--<td><textarea rows="4" cols="10" name="address"></textarea>  </td>-->
            <td>Number of rooms : <select name="noOfRooms">
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>more</option>
                    <option>other</option>
                </select>
            Type<select name="Type">
                    <option>Appartment</option>
                    <option>Hostels</option>
                    <option>Individual House</option>
                      <option>other</option>
                </select></td>   
            </tr>
            
            <tr  class="setfont">
            <td class="setfont">Type of Customer</td>
            <!--<td><textarea rows="4" cols="10" name="address"></textarea>  </td>-->
            <td><select name="typeOfCustomer1">
                    <option>Family</option>
                    <option>Bachelors</option>
                    <option>Students</option>
                     <option>Married</option>
                    <option>Everybody</option>
                    <option>Others</option>
                    
                    
                    
                </select>
                &&
                
                <select name="typeOfCustomer2">
                    <option></option> 
                    <option>Family</option>
                    <option>Bachelors</option>
                    <option>Students</option>
                     <option>Married</option>
                    <option>EveryBody</option>
                    <option>Nobody</option>
                    <option>Others</option>
                </select></td> 
                
                
            </tr>
            
            
            
            
            
         <tr class="setfont">
                <th> Image 1</th>
                <td> <input type="file" size="50"    name="image1"></td>
                </tr> 
          <tr class="setfont">
                <th> Image 2</th>
                <td> <input type="file" size="50"  name="image2"></td>
                </tr>  
                
                
                
            
            <tr colspan="2" align="center">
                <td colspan="2"> <input type="submit" value="Add" onclick="return check1();"><input type="reset" value="reset" ></td>
            </tr>
            
            </table>        
        </form>
       
	
	
	
	
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