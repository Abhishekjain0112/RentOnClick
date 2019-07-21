<%-- 
    Document   : AddPlace
    Created on : 23 Feb, 2019, 12:09:16 AM
    Author     : Abhishek
--%>

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
          
      
        if(document.myForm.hh.value=="")
         {
            alert( "Field can't be left Blank" );
     document.myForm.hh.focus() ;
     return false; 
         }
        if(document.myForm.hh2.value=="")
         {
            alert( "Field can't be left Blank" );
     document.myForm.hh2.focus() ;
     return false; 
         }
             if(document.myForm.mm.value=="")
         {
            alert( "Field can't be left Blank" );
     document.myForm.mm.focus() ;
     return false; 
         }    
              if(document.myForm.mm2.value=="")
         {
            alert( "Field can't be left Blank" );
     document.myForm.mm2.focus() ;
     return false; 
         }   
         
        
        
         
         
         
     if(document.myForm.duration.value=="")
      {
            alert( "Please provide duration .!!!" );
     document.myForm.duration.focus() ;
     return false; 
         }
         
         if(document.myForm.cost.value=="")
      {
            alert( "Please provide cost .!!!" );
     document.myForm.cost.focus() ;
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
          
        
    
            </ul></</div></div>

	
			
    </header>
    <section class="sc">
        <center>
            
              <h1>Add Available</h1>
        <%
        int placeid=Integer.parseInt(request.getParameter("placeid"));
        int userid1=(Integer)session.getAttribute("uid");
         String placename=request.getParameter("placename");
        %>
        
        <form method="post" action="AddAvailablelogic" name="myForm" onSubmit="return validation()" >
                 
            
             <table class="table2" border="3" width="100%" align="center" bgcolor="lightyellow">
          
                 <tr colspan="2" align="center">
            <td class="setfont"  colspan="2"> Add This Place To Available<td> 
                
            </tr>
            
          
               <tr  class="setfont" >
                <td>
              <input type="hidden" name="placeid" value="<%=placeid%>" >
              <input type="hidden" name="userid" value="<%=userid1%>" >
              Place Name </td> 
                <td>
             <input type="text" name="placename"  value="<%=placename%>" readonly>
        </td>   
        
            </tr>
              
            
            <tr>
            <td class="setfont">DATE</td>
                       <td>
                           <select name="day">
                               <option>Date</option>
                               <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                 <option>4</option>
                                  <option>5</option>
                           </select>
                           <select name="month">
                               <option>Month</option>
                               <option>01</option>
                               <option>02</option>
                               <option>03</option>
                               <option>04</option>
                               <option>05</option>
                               <option>05</option>
                               <option>06</option>
                               <option>07</option>
                               <option>08</option>
                               <option>09</option>
                               <option>10</option>
                               <option>11</option>
                               <option>12</option>
                         
                           </select>
                           <select name="year">
                                <option>year</option>
                                <option>2019</option>
                                <option>2020</option>
                           </select>
                       </td>
            </tr>
            
                    
            <tr >
            <td >Start time </td>
            <td>
                <input type="text" name="hh" placeholder="hh"  value="">
               :
               <input type="text" name="mm" placeholder="mm"  value="">
              <select name="am">
                                <option>PM</option>
                                <option>AM</option>
                           </select>
              
            </td>
                
            </tr>
            
            
                 <tr >
            <td >End time </td>
          
             <td>
                 <input type="text" name="hh2" placeholder="hh"  value="">
             
               <input type="text" name="mm2" placeholder="mm"  value="">
              <select name="am2">
                                <option>PM</option>
                                <option>AM</option>
                           </select>
              
            </td>              
            </tr>
    
            <tr class="setfont">
            <td class="setfont">Duration</td>
        
            <td>
                <input type="text" name="duration" placeholder="HOW MUCH TIME">
            
            </td>   
            </tr>
            
            <tr  class="setfont">
            <td class="setfont">Cost</td>
            <!--<td><textarea rows="4" cols="10" name="address"></textarea>  </td>-->
            <td><input type="text" name="cost"/>Rs</td>
              
            </tr>
     
            <tr colspan="2" align="center">
                <td colspan="2"> <input type="submit" value="Add" onclick="return check1();">
                    <input type="reset" value="reset" ></td>
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