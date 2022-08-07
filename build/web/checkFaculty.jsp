 <%@page import="dto.FacultyDto"%>
<%@page import="dao.FacultyDao"%>

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
        
        <form action="checkFaculty.jsp" method="post">
        <label for="facultyid"><b>Faculty ID:</b></label>
        <input type="text" placeholder="Enter Faculty ID" name="facultyid" required>
         <button type="submit">Submit</button>
        </form>
        <%
         String facultyid=request.getParameter("facultyid");
         FacultyDao udao = new FacultyDao();
         FacultyDto user = udao.getUserData(facultyid);
         if(facultyid!=null){
        %>
        <h1>Hello <%=facultyid%> </h1>
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
     <td><strong>City:</strong><%=user.getAddress()%></td>
   </tr>
   <tr>
     <td><strong>Course:</strong><%=user.getBloodgroup() %></td>
   </tr>
 </table>
   <%
   }
   %>
    </body>
</html>
