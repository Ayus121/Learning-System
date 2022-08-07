<%-- 
    Document   : logout
    Created on : Apr 18, 2022, 7:32:29 PM
    Author     : vishu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
   <%
   session.invalidate();
   response.sendRedirect("login.html");
   %>
    </body>
</html>
