<%-- 
    Document   : home
    Created on : Apr 24, 2022, 8:25:37 PM
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
         String course = request.getParameter("course");
        %>
        <h1>Hello World!<%=course%></h1>
    </body>
</html>
