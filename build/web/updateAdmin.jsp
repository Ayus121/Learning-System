<%-- 
    Document   : addStudent
    Created on : Feb 12, 2022, 9:57:47 PM
    Author     : vishu
--%>

<%@page import="dto.AdminDto"%>
<%@page import="dao.AdminDao"%>
<%-- 
    Document   : addStudent
    Created on : Feb 12, 2022, 9:57:47 PM
    Author     : vishu
--%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="css/updateAdmin.css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap" rel="stylesheet" >
  </head>
  <body>
    <%
          String adminid=request.getParameter("adminid");
          AdminDao udao=new AdminDao();
          AdminDto user=udao.getUserData();
        %>
    <img class="logo-image" src="img/iist-logo.png" alt="logo">
    <a href="C:\Users\DELL\OneDrive\Desktop\web development\Minor project\problems\Ayush\Bootstrap\new.html"> <img class="home-icon" src="img/home-icon.png"></a>

    <div class="login-content">
      <h1 class="form-head">Welcome To IIST</h1>

      <form action="UpdateAdmin" method="post">
          <label for="adminid"> ADMIN ID </label>
          <input  type="text" minlength="10"required maxlength="12"required name="adminid" value="<%=user.getAdminid() %>">
          
          <label for="name"> FULL NAME </label>
          <input class="capital" type="text" id="fname" onblur="capitalized" name="name" value="<%=user.getName() %>" required>
          
         
          
          <label for="adharnumber"> AADHAR NUMBER </label>
          <input type="text" name="adharnumber" maxlength="12" value="<%=user.getAdharnumber() %>" required>
          
           
          
          <label for="qualification"> QUALIFICATION </label>
          <input class="capital" type="text" id="fname" name="qualification" value="<%=user.getQualification() %>" required>
          
          <label for="password">Password</label>
          <input class="password" type="password" name="password"required value="<%=user.getPassword() %>"> 
          <img class="eye-icon" src="img/eye icon.png" alt="">
          <img class="slash-eye-icon" src="img/slash-eye icon.png" alt="">
          
          <label for="email">EMAIL</label>
          <input type="email" name="email" value="<%=user.getEmail() %>" required>
          
          <label for="phonenumber"> CONTACT NUMBER </label>
          <input type="text" name="phonenumber" maxlength="10" value="<%=user.getPhonenumber() %>" required>
          
          <label for="address">ADDRESS</label>
          <input type="text" name="address" value="<%=user.getAddress() %>" required>
          
          <label for="bloodgroup"> BLOOD GROUP </label>
          <input type="text"required name="bloodgroup" value="<%=user.getBloodgroup() %>" >

          <label for="dob">DOB</label>
          <input type="text" name="dob" value="<%=user.getDob() %>" required>

          <label for="gender"> GENDER</label>
          <select class ="select" name="gender">
            <option value="MALE"> MALE </option>
            <option value="FEMALE"> FEMALE </option>
            <option value="OTHER"> OTHER </option>
          </select>


          <label for="experience">EXPERIENCE</label>
          <input type="text" name="experience"  maxlength="7" value="<%=user.getExperience() %>" required>
          
          

          <button class="submit-button">Register</button>

      </form>

    </div>


    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script>
        $(document).ready(function(){
       const password = $(".password") ;

     $(".eye-icon").click(function(){
    if(password.prop('type') == 'password'){
      $(".slash-eye-icon").css('display','block');
      password.attr('type','text') ;
    }
    else{
      $(".slash-eye-icon").css('display','none');
      password.attr('type','password');
    }
  });
});

    </script>

  </body>
</html>






  



