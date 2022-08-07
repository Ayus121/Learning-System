<%-- 
    Document   : addStudent
    Created on : Feb 12, 2022, 9:57:47 PM
    Author     : vishu
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="dao.StudentDao"%>
<%@page import="dto.StudentDto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="login.css">
        <title>Update Student</title>
    </head>
    <body>
        <%
    String enrollment = request.getParameter("enrollment");
    StudentDao udao = new StudentDao();
    StudentDto user = udao.getUserData(enrollment);
%>
        <h1>Update Student</h1><hr>
      <form action="UpdateStudent" method="post">
      <div class="imgcontainer">
        <img src="img_avatar2.png" alt="Avatar" class="avatar">
        <h2>Update Here</h2>
      </div>
    
      <div class="container">
        <label for="enrollment"><b>Enrollment</b></label>
        <input type="text" placeholder="Enter Enrollment" name="enrollment" value="<%=user.getEnrollment() %>" required>
        
        <label for="name"><b>Name</b></label>
        <input type="text" placeholder="Enter Name" name="name" value="<%=user.getName() %>" required>
    
        <label for="fathername"><b>Father Name</b></label>
        <input type="text" placeholder="Enter Father Name" name="fathername" value="<%=user.getFathername() %>" required>

        <label for="password"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="password" value="<%=user.getPassword() %>" required>
        
         <label for="branch"><b>Branch</b></label>
        <input type="text" placeholder="Enter Branch" name="branch" value="<%=user.getBranch() %>" required>
        
         <label for="bloodgroop"><b>Blood Group</b></label>
        <input type="text" placeholder="Enter BloodGroup" name="bloodgroup" value="<%=user.getBloodgroup() %>" required>
        
         <label for="adharnumber"><b>Adhar Number</b></label>
        <input type="text" placeholder="Enter Adhar Number" name="adharnumber" value="<%=user.getAdharnumber() %>" required>
        
         <label for="email"><b>Email</b></label>
        <input type="text" placeholder="Enter Email" name="email" value="<%=user.getEmail() %>" required>
        
         <label for="phonenumber"><b>Phonenumber</b></label>
        <input type="text" placeholder="Enter Phonenumber" name="phonenumber" value="<%=user.getPhonenumber() %>" required>
        
         <label for="admissionyear"><b>Admission Year</b></label>
        <input type="text" placeholder="Enter admissionyear" name="admissionyear" value="<%=user.getAdmissionyear() %>" required>
        
         <label for="gender"><b>Gender</b></label>
        <input type="text" placeholder="Enter Gender" name="gender" value="<%=user.getGender() %>" required>
        
         <label for="dob"><b>DOB</b></label>
        <input type="text" placeholder="Enter Date Of Birth" name="dob" value="<%=user.getDob() %>" required>
        
        <label for="city"><b>City</b></label>
        <input type="text" placeholder="Enter City" name="city" value="<%=user.getCity() %>"required>
          
        <button type="submit">Submit</button>
       
      </div>
    
      
    </form>
    </body>
</html>
