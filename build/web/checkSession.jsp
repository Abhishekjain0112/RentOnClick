<%-- 
    Document   : checkSession
    Created on : 30 Jan, 2019, 1:10:24 AM
    Author     : Abhishek
--%>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
response.addHeader("pragma","no-cache");//name and value
response.addHeader("cache-control","no-store");//name and value
    String  name=(String)session.getAttribute("name");
   String  email=(String)session.getAttribute("email");
   String  userid=(String)session.getAttribute("userid");
   String  address=(String)session.getAttribute("address");
   

if(name==null)
          {
               out.println("inside the if  ");
              response.sendRedirect("index.jsp");
          }
   
    
 
if(session==null)
          {
              response.sendRedirect("index.jsp");
          }
  //out.println("here is the session methord runs   name="+name+"session = "+ session);

  User u2=(User)session.getAttribute("user");
  
  
  
  
  
%>