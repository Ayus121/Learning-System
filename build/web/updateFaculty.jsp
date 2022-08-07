<%-- 
    Document   : addStudent
    Created on : Feb 12, 2022, 9:57:47 PM
    Author     : vishu
--%>

<%@page import="dto.FacultyDto"%>
<%@page import="dao.FacultyDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="login.css">
        <title>JSP Page</title>
    </head>
    <body>
        <%
//        String facultyid = (String)session.getAttribute("facultyid");
        String facultyid=request.getParameter("facultyid");
        FacultyDao udao=new FacultyDao();
        FacultyDto user=udao.getUserData(facultyid);
        %>
        <h1>Update Faculty</h1><hr>
      <form action="UpdateFaculty" method="post">
      <div class="imgcontainer">
        <img src="img_avatar2.png" alt="Avatar" class="avatar">
        <h2>Update Here</h2>
      </div>
    
      <div class="container">
        <label for="facultyid"><b>Faculty ID</b></label>
        <input type="text" placeholder="Enter Faculty ID" name="facultyid" value="<%=user.getFacultyid() %>" required>
        
        <label for="name"><b>Name</b></label>
        <input type="text" placeholder="Enter Name" name="name" value="<%=user.getName() %>" required>

        <label for="qualification"><b>Qualification</b></label>
        <input type="text" placeholder="Enter Qualification" name="qualification" value="<%=user.getQualification() %>" required>        

        <label for="password"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="password" value="<%=user.getPassword() %>" required>
        
         <label for="department"><b>Department</b></label>
        <input type="text" placeholder="Enter Department" name="department" value="<%=user.getDepartment() %>" required>
        
         <label for="bloodgroop"><b>Blood Group</b></label>
        <input type="text" placeholder="Enter BloodGroup" name="bloodgroup" value="<%=user.getBloodgroup() %>" required>
        
         <label for="adharnumber"><b>Adhar Number</b></label>
        <input type="text" placeholder="Enter Adhar Number" name="adharnumber" value="<%=user.getAdharnumber() %>" required>
        
         <label for="email"><b>Email</b></label>
        <input type="text" placeholder="Enter Email" name="email" value="<%=user.getEmail() %>" required>
        
         <label for="phonenumber"><b>Phonenumber</b></label>
        <input type="text" placeholder="Enter Phonenumber" name="phonenumber" value="<%=user.getPhonenumber() %>" required>
        
         <label for="joiningyear"><b>Joining Year</b></label>
        <input type="text" placeholder="Enter Joining Year" name="joiningyear" value="<%=user.getJoiningyear() %>" required>
        
         <label for="gender"><b>Gender</b></label>
        <input type="text" placeholder="Enter Gender" name="gender" value="<%=user.getGender() %>" required>
        
         <label for="dob"><b>DOB</b></label>
        <input type="text" placeholder="Enter Date Of Birth" name="dob" value="<%=user.getDob() %>" required>
        
        <label for="address"><b>Address</b></label>
        <input type="text" placeholder="Enter Address" name="address" value="<%=user.getAddress() %>" required>
        
        <label for="teachexperience"><b>Teaching Experience</b></label>
        <input type="text" placeholder="Enter Name" name="teachexperience" value="<%=user.getTeachexperience() %>" required>
        
        <label for="designation"><b>Designation</b></label>
        <input type="text" placeholder="Enter Designation" name="designation" value="<%=user.getDesignation() %>" required>
        
        <label for="category"><b>Category</b></label>
        <input type="text" placeholder="Enter Category" name="category" value="<%=user.getCategory() %>" required>
          
        <button type="submit">Submit</button>
       
      </div>
    
      
    </form>
    </body>
</html>
