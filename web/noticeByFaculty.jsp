<%-- 
    Document   : noticeByFaculty
    Created on : Feb 28, 2022, 5:53:01 PM
    Author     : vishu
--%>

<%@page import="dto.FacultyDto"%>
<%@page import="dao.FacultyDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
          String facultyid = request.getParameter("facultyid");
         FacultyDao udao = new FacultyDao();
         FacultyDto user = udao.getUserData(facultyid);
        %>
        <h1>Hello World!</h1>
         <h3><strong>Student</strong></h3>
                <form action="NoticeHod" method="post">
          
           <input type="text" hidden="" name="sender" value="<%=user.getCategory() %>">
           <input type="text" hidden="" name="receiver" value="student">
          <label for="notice">Review of W3Schools:</label>
          <textarea id="w3review" name="notice" rows="4" cols="50">
            At w3schools.com you will learn how to make a website. They offer free tutorials in all web development technologies.
          </textarea>
          <br><br>
          <input type="submit" value="Submit">
       </form>
    </body>
</html>
