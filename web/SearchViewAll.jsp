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
        
        <link href="css/showAvailable_1_1.css" rel="stylesheet" type="text/css">
          <link href="fontawesome-free-5.0.1/web-fonts-with-css/css/fontawesome-all.min.css" rel="stylesheet">        
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    





<style>
* {
  box-sizing: border-box;
}

#myInput {
  background-image: url('/css/searchicon.png');
  background-position: 10px 10px;
  background-repeat: no-repeat;

  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 18px;
 
}

#myTable {
  border-collapse: collapse;
  width: 100%;
  border: solid #ddd;
  font-size: 18px;
}

#myTable th, #myTable td {
  text-align: left;
  padding: 1px;
}

#myTable tr {
  border-bottom: 0px solid #ddd;
  
}
#myTable td {
  border-bottom: 0px solid #ddd;
  color:#8EFD59;
}
#myTable tr:hover{

    color:#FBFB25;
}


#myTable tr.header, #myTable tr:hover {
  background-color: #172A3C;
  
}
</style>









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
 
        <center>
            
   
        
         <h1>Search By City </h1>
        
    <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for Citys.." title="Type in a name">
  
    
<!--      <h1>Search By Place Type</h1>
        
    <input type="text" id="myInput1" onkeyup="myFunction1()" placeholder="Search for Type.." title="Type in a name">
       -->
    
    
    
         
        <%
        int uid=u2.getUserid();
        //int uid =Integer.parseInt(userid);
        myList=pd.getAllAvailablePlacesAdmin();
 
        %>
        
<table bgcolor="pink" border="5" id="myTable">
       <tr>
           <th>Image</th> 
           <th> Name</th>
           <th>PlaceType</th> 
           <th>City</th>
           <th>Date</th>
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
            
        <form method="post" action="showDetails.jsp">

          <%
          img1="placeimg/"+p.getEmailid()+Integer.toString(p.getUser().getUserid())+Integer.toString(p.getPlaceid())+p.getCount()+"1.jpg";
     
          img2="placeimg/"+p.getEmailid()+Integer.toString(p.getUser().getUserid())+Integer.toString(p.getPlaceid())+p.getCount()+"2.jpg";
         
      
          %>  
          
          
<!--     place img     -->
          <td>
              <img src="<%= img1%>" height="100" width="100">
          </td>
        <!--  name   -->
      
          <td>
<!--              <%=p.getPlacename()%>
-->

              <input type="hidden" name="placeid" value="<%=p.getPlaceid()%>" >
              <input type="hidden" value="<%=p.getPlacename()%>" readonly >
               <%=p.getPlacename()%>
   
          </td>  
        
           
            <td>
           <!--    PlaceType    -->
    <%=p.getPlacetype()%>
           <input type="hidden" value="<%=p.getPlacetype()%>"  readonly>
           </td>  
           
           <td>
               <!--    city    -->
               
               <input type="hidden" value="<%= p.getCity()%>"   readonly>
              
               <%= p.getCity()%> 
               
           </td>  
                
           <td>
                          <!--    date     -->
          <%=a.getDate()%>                
                          <input type="hidden" value="<%=a.getDate()%>"  readonly>
           </td>  
                
           <td>
                          <!--    time    -->
              <%=a.getStartTime()%>            
                          <input type="hidden" value="<%=a.getStartTime()%> "  readonly>
           </td>  
           
                
           <td>
                          <!--     Duration     -->
              <%=  a.getDuration()%>            
                          <input type="hidden"value="<%=  a.getDuration()%>"  readonly>
           </td>  
           
         
           <td>
                          <!--     Cost     -->
              <%=  a.getCost()%>            
              <input type="hidden" value="<%=  a.getCost()%>"  readonly>
           </td>  
            <td>
                          <!-- status    -->
              <%=a.getStatus()%>            
                          <input type="hidden" value="<%=a.getStatus()%>"  readonly>
           </td>  
           <td>
                      <!--     Details  -->    
              
                    <font size="2" color="red" face="verdana">  
                      <input type="submit" value="Details"  readonly>
                      </font>
           
           </td>  
           
        
     
        </form>    
      </tr>   
        <%
        }
    %>
        
        
</table>   
    
    
    
    <script>
function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  
  tr = table.getElementsByTagName("tr");
  
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[3];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display ="";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}

function myFunction1() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput1");
  
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  
  tr = table.getElementsByTagName("tr");
  
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[2];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display ="";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}











</script>
    
    
    
    
    
    
    
    
            
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