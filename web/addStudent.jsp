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
        <h1>Add Student</h1><hr>
      <form action="AddStudent" method="post">
      <div class="imgcontainer">
        <img src="img_avatar2.png" alt="Avatar" class="avatar">
        <h2>Add Here</h2>
      </div>
    
      <div class="container">
        <label for="enrollment"><b>Enrollment</b></label>
        <input type="text" placeholder="Enter Enrollment" name="enrollment" required>
        
        <label for="name"><b>Name</b></label>
        <input type="text" placeholder="Enter Name" name="name" required>
    
        <label for="fathername"><b>Father Name</b></label>
        <input type="text" placeholder="Enter Father Name" name="fathername" required>

        <label for="password"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="password" required>
        
         <label for="branch"><b>Branch</b></label>
        <input type="text" placeholder="Enter Branch" name="branch" required>
        
         <label for="bloodgroop"><b>Username</b></label>
        <input type="text" placeholder="Enter BloodGroup" name="bloodgroup" required>
        
         <label for="adharnumber"><b>Adhar Number</b></label>
        <input type="text" placeholder="Enter Adhar Number" name="adharnumber" required>
        
         <label for="email"><b>Email</b></label>
        <input type="text" placeholder="Enter Email" name="email" required>
        
         <label for="phonenumber"><b>Phonenumber</b></label>
        <input type="text" placeholder="Enter Phonenumber" name="phonenumber" required>
        
         <label for="admissionyear"><b>Admission Year</b></label>
        <input type="text" placeholder="Enter admissionyear" name="admissionyear" required>
        
         <label for="gender"><b>Gender</b></label>
        <input type="text" placeholder="Enter Gender" name="gender" required>
        
         <label for="dob"><b>DOB</b></label>
        <input type="text" placeholder="Enter Date Of Birth" name="dob" required>
        
        <label for="city"><b>City</b></label>
        <input type="text" placeholder="Enter City" name="city" required>
          
        <button type="submit">Submit</button>
       
      </div>
    
      
    </form>
    </body>
</html>
