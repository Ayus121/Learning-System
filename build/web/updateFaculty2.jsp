<%@page import="dto.FacultyDto"%>
<%@page import="dao.FacultyDao"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Faculty</title>
    <link rel="stylesheet" href="css/updateFaculty.css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap" rel="stylesheet" >
  </head>
  <body>
       <%
        String facultyid=request.getParameter("facultyid");
        FacultyDao udao=new FacultyDao();
        FacultyDto user=udao.getUserData(facultyid);
        %>
    <img class="logo-image" src="img/iist-logo.png" alt="logo">
    <a href="C:\Users\DELL\OneDrive\Desktop\web development\Minor project\problems\Ayush\Bootstrap\new.html"> <img class="home-icon" src="img/home-icon.png"></a>

    <div class="Register-content">
      <h1 class="form-head">Welcome To IIST</h1>

      <form action="UpdateFaculty" method="post">
          <label> FACULTY ID </label>
          <input type="text" minlength="10" maxlength="12" name="facultyid" value="<%=user.getFacultyid() %>"  required>
          <label for="name"> FULL NAME </label>
          <input class="capital" type="text" id="fname" name="name" value="<%=user.getName() %>" required>
           <label for="dob">DOB</label>
          <input type="text" name="dob" value="<%=user.getDob() %>" required>
          <label for="phonenumber"> CONTACT NUMBER </label>
          <input type="text" name="phonenumber" maxlength="10" value="<%=user.getPhonenumber() %>" required>
          <label>Password</label>
          <input class="password" type="password" name="password" value="<%=user.getPassword() %>" required>
          <img class="eye-icon" src="img/eye icon.png" alt="">
          <img class="slash-eye-icon" src="img/slash-eye icon.png" alt="">
          
          <label for="adharnumber"> AADHAR NUMBER </label>
          <input type="text" name="adharnumber" value="<%=user.getAdharnumber() %>" maxlength="12"required>
          <label for="email">EMAIL</label>
          <input type="text" name="email" value="<%=user.getEmail() %>" required>
          <label> QUALIFICATIONS </label>
          <input type="text" name="qualification" value="<%=user.getQualification() %>" required>
          <label> TEACHING EXPERIENCE </label>
          <input type="text" name="teachexperience" value="<%=user.getTeachexperience() %>" required>
          <label> JOINING YEAR </label>
          <input type="text" name="joiningyear" value="<%=user.getJoiningyear() %>" required>
          <label> ADDRESS </label>
          <input class="capital" type="text" name="address" value="<%=user.getAddress() %>" required>
          <label> BLOOD GROUP </label>
          <input type="text" name="bloodgroup" value="<%=user.getBloodgroup() %>" required>

         

          <label for="Select" > GENDER </label>
          <select class ="select" name="gender" >
            <option value="MALE"> MALE </option>
            <option value="FEMALE"> FEMALE </option>
            <option value="OTHER"> OTHER </option>
          </select>

          <label for="Select"  > DEPARTMENT </label>
          <select class ="select" name="department" >
            <option value="CS"> COMPUTER SCIENCE </option>
            <option value="IT"> INFORMATION TECHNOLOGY </option>
            <option value="CE"> CIVIL ENGINEERING </option>
            <option value="ME"> MECHANICAL ENGINEERING </option>
            <option value="EC"> ELECTRONIC & COMMUNICATION </option>
          </select>

          <label for="Select" name="category"> CATEGORY </label>
          <select class ="select" name="category" >
            <option value="HOD"> HOD </option>
            <option value="FACULTY"> FACULTY </option>
          </select>
          <label for="designation">DESIGNATION</label>
          <input type="text" name="designation" value="<%=user.getDesignation() %>" required>
          
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





