<%-- 
    Document   : addStudent
    Created on : Feb 12, 2022, 9:57:47 PM
    Author     : vishu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="login.css">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Add HOD</h1><hr>
      <form action="AddHOD" method="post">
      <div class="imgcontainer">
        <img src="img_avatar2.png" alt="Avatar" class="avatar">
        <h2>Add Here</h2>
      </div>
    
      <div class="container">
        <label for="facultyid"><b>Faculty ID</b></label>
        <input type="text" placeholder="Enter Faculty ID" name="facultyid" required>
        
        <label for="name"><b>Name</b></label>
        <input type="text" placeholder="Enter Name" name="name" required>

        <label for="qualification"><b>Qualification</b></label>
        <input type="text" placeholder="Enter Qualification" name="qualification" required>        

        <label for="password"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="password" required>
        
         <label for="department"><b>Department</b></label>
        <input type="text" placeholder="Enter Department" name="department" required>
        
         <label for="bloodgroop"><b>Blood Group</b></label>
        <input type="text" placeholder="Enter BloodGroup" name="bloodgroup" required>
        
         <label for="adharnumber"><b>Adhar Number</b></label>
        <input type="text" placeholder="Enter Adhar Number" name="adharnumber" required>
        
         <label for="email"><b>Email</b></label>
        <input type="text" placeholder="Enter Email" name="email" required>
        
         <label for="phonenumber"><b>Phonenumber</b></label>
        <input type="text" placeholder="Enter Phonenumber" name="phonenumber" required>
        
         <label for="joiningyear"><b>Joining Year</b></label>
        <input type="text" placeholder="Enter Joining Year" name="joiningyear" required>
        
         <label for="gender"><b>Gender</b></label>
        <input type="text" placeholder="Enter Gender" name="gender" required>
        
         <label for="dob"><b>DOB</b></label>
        <input type="text" placeholder="Enter Date Of Birth" name="dob" required>
        
        <label for="address"><b>Address</b></label>
        <input type="text" placeholder="Enter Address" name="address" required>
        
        <label for="teachexperience"><b>Teaching Experience</b></label>
        <input type="text" placeholder="Enter Name" name="teachexperience" required>
        
        <label for="designation"><b>Designation</b></label>
        <input type="text" placeholder="Enter Designation" name="designation" required>
        
        <label for="category"><b>Category</b></label>
        <input type="text" placeholder="Enter Category" name="category" required>
          
        <button type="submit">Submit</button>
       
      </div>
    
      
    </form>
    </body>
</html>
