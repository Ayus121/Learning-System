 <%@page import="dto.StudentDto"%>
<%@page import="dao.StudentDao"%>
<%-- 
    Document   : checkStudent
    Created on : Feb 15, 2022, 2:18:03 PM
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
        
        <form action="checkStudent.jsp" method="post">
        <label for="enrollment"><b>Enrollment</b></label>
        <input type="text" placeholder="Enter Enrollment" name="enrollment" required>
         <button type="submit">Submit</button>
        </form>
        <%
           String enrollment=request.getParameter("enrollment");
         StudentDao udao = new StudentDao();
         StudentDto user = udao.getUserData(enrollment);
         if(enrollment!=null){
        %>
        <h1>Hello <%=enrollment%> </h1>
 <h2>Login Successful</h2>
 <table>
   <tr>
     <td><strong>Student:</strong><%=user.getName() %></td>
   </tr>
   <tr>
     <td><strong>Email:</strong><%=user.getEmail() %></td>
   </tr>
   <tr>
     <td><strong>Password:</strong><%=user.getPassword()%></td>
   </tr>
   <tr>
     <td><strong>PhoneNo:</strong><%=user.getPhonenumber() %></td>
   </tr>
   <tr>
     <td><strong>City:</strong><%=user.getCity()%></td>
   </tr>
   <tr>
     <td><strong>Course:</strong><%=user.getEnrollment() %></td>
   </tr>
 </table>
   <%
   }
   %>
    </body>
</html>
