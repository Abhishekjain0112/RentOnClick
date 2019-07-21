<%-- 
    Document   : sessionExpiore
    Created on : 30 Jan, 2019, 1:06:10 AM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%

 session.invalidate();
 response.sendRedirect("index.jsp");


%>




<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
