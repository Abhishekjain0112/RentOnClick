<%-- 
    Document   : showMyPlace
    Created on : 23 Feb, 2019, 1:39:13 AM
    Author     : Abhishek
--%>
<%@page import="model.Available"%>
<%@page import="java.util.List"%>
<%@page import="dao.PlaceDAO"%>
<%@page import="model.Place"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="checkSession.jsp" %>
<%!
 String email,img;
  List<Available> myList ;
  PlaceDAO pd=new PlaceDAO();
  String img1,img2;
%>
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
        
     <link href="css/forAll.css" rel="stylesheet" type="text/css">
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
 
          <h1>SEARCH HERE</h1>
        <br>

            <center>
       
<!--                
                <form method="post" action="searchPlaces.jsp">
    
            
            Location:
      <select name="searchby" >
                  <option></option>
                  <option>Rajwada </option>
                <option>Regal </option>
                <option>Annapurna </option>
               <option>Vijay Nagar</option>
                  <option>Teen imli</option>

                </select>
            
       
       <input type="hidden" name="data" value="1" >
        
          <button type="submit" value="Submit">Search by location"</button>
           </form>
        
        <br>
        
        <form method="post" action="searchPlaces.jsp">
    City:
            
        <select name="searchby">
                  <option></option>
                  <option>Indore </option>
                <option>Ujjain </option>
                <option>Bhopal </option>
               <option>Sagar</option>
                  <option>Other</option>

                </select>
		
		
	 <input type="hidden" name="data" value="2" >	
		
          <button type="submit" value="Submit">Search by city</button>
           </form>
        
<br>-->

          
        <form method="post" action="searchPlaces.jsp">
      place type :
      <select name="searchby">
                 <option></option>                
                 <option>Room</option> 
           <option>play ground</option> 				 
                <option>Appartment</option>
                    <option>Hostels</option>
                    <option>Individual House</option>
                     <option>House</option>
					  <option>Party</option>
					 
                </select>
           
		 <input type="hidden" name="data" value="3" >   
        
          <button type="submit" value="Submit">Search by place type</button>
           </form>
        
		<br>
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
        <%
        int uid=u2.getUserid();
        
       String searchno1=(String)session.getAttribute("search1");
        session.setAttribute("search1","6");
        
        if(searchno1.equals("5"))
        {
        myList=pd.getAllAvailablePlaces(u2);
        }    
        else{
        
        String searchby=request.getParameter("searchby");        
     
        String searchcheck="0";
        searchcheck=request.getParameter("data");    
     
       String searchno;
        searchno=(String)session.getAttribute("search");
      
       if(searchcheck.equals("1")){
       myList=pd.searchByLocation(searchby);
        session.setAttribute("search","1");
      }
      
      else if(searchcheck.equals("2")){
       myList=pd.searchBycity(searchby);
        session.setAttribute("search","2");
      }
      
      else if(searchcheck.equals("3")){
       myList=pd.searchByPlaceType(searchby);
        session.setAttribute("search","3");
      }
        
        
        }  
        
        //int uid =Integer.parseInt(userid);
    
        
        
        
        
        /* String searchby=request.getParameter("searchby");        
      String searchcheck="0";
              searchcheck=request.getParameter("data");    
     
      String searchno;
      
         searchno=(String)session.getAttribute("search");
      
         
         
         
         
      
      if(searchno.equals("0"))
      {  myList=pd.getAllAvailablePlaces(u2);
       session.setAttribute("search","0");
      }
      else if(searchcheck.equals("1")){
       myList=pd.searchByLocation(searchby);
        session.setAttribute("search","1");
      }
      
      else if(searchcheck.equals("2")){
       myList=pd.searchBycity(searchby);
        session.setAttribute("search","2");
      }
      
      else if(searchcheck.equals("3")){
       myList=pd.searchByPlaceType(searchby);
        session.setAttribute("search","3");
      }
      else{
       myList=pd.getAllAvailablePlaces(u2);
       session.setAttribute("search","0");
      }*/
      
        %>
        
<table bgcolor="pink" border="5" cellpadding="0" cellspacing="0">
       <tr>
           <th>Image</th> 
           <th> Name</th>
           <th colspan="1">PlaceType</th> 
           <th colspan="1">City</th>
           <th colspan="1">Date</th>
           <th>Time</th>
           <th>Duration</th>
           <th>Cost</th>
            <th>status</th>
           <th>details</th>
       </tr>
        <%
        for( Available a : myList)
        {
            Place p=a.getP();
            
       
                                    
        %>
        
        <tr>
        <form method="post" action="BookPlaceCart">

          <%
          img1="placeimg/"+p.getEmailid()+Integer.toString(p.getUser().getUserid())+Integer.toString(p.getPlaceid())+p.getCount()+"1.jpg";
     
          img2="placeimg/"+p.getEmailid()+Integer.toString(p.getUser().getUserid())+Integer.toString(p.getPlaceid())+p.getCount()+"2.jpg";
         
      
          %>  
          
<!--     place img     -->
          <td>
              <img src="<%= img1%>" height="100" width="100">
          </td>
        <!--  name   -->
      
        <td colspan="1">
              <input type="hidden" name="placeid" value="<%=p.getPlaceid()%>" >
              <input type="hidden" name="sellerid" value="<%=p.getUser().getUserid()%>" >
              <input type="hidden" name="availableid" value="<%=a.getAvailableid()%>" >
              
              
              <input type="text" value="<%=p.getPlacename()%>" readonly >
           </td>  
        
           
            <td>
           <!--    PlaceType    -->
    
                <input type="text" value="<%=p.getPlacetype()%>"  readonly>
           </td>  
           
           <td>
               <!--    city    -->
              <input type="text" value="<%= p.getCity()%>"   readonly>
           </td>  
                
           <td>
                          <!--    date     -->
                          <input type="text" name="date" value="<%=a.getDate()%>"  readonly>
           </td>  
                
           <td>
                          <!--    time    -->
              <input type="text" value="<%=a.getStartTime()%> " name="time"  readonly>
           </td>  
           
                
           <td>
                          <!--     Duration     -->
                          <input type="text" value="<%=  a.getDuration()%>"  readonly>
           </td>  
           
         
           <td>
                          <!--     Cost     -->
              <input type="text" name="cost" value="<%=  a.getCost()%>"  readonly>
           </td>  
            <td>
                          <!-- status    -->
              <input type="text"  value="<%=a.getStatus()%>"  readonly>
           </td>  
           <td>
                      <!--     Details  -->    
               <input type="submit" value="Book NOW"  readonly>
            
        </form>
       
           <form method="post" action="showDetails.jsp">
             <input type="hidden" name="placeid" value="<%=p.getPlaceid()%>" >
             
               <input type="submit" value="Details">
           </form>
           </td> 
       </tr>
        <%
        }
    %>
        
        
</table>   
        
            
            
        </center>
	
	
    </section>
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