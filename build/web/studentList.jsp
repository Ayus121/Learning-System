<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="login.css" rel="stylesheet">
<title>Student List</title>
  <style>
      
#customers {
    font-family: Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
  }
  
  #customers td, #customers th {
    border: 1px solid #ddd;
    padding: 8px;
  }
  
  #customers tr:nth-child(even){background-color: #f2f2f2;}
  
  #customers tr:hover {background-color: #ddd;}
  
  #customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color:  rgb(102, 75, 75);
    color: white;
  }
    </style>
</head>
<body>
 <%@page import="dao.StudentDao"%>
   <%@page import="dto.StudentDto"%>
   <%@page import="java.util.List"%>
   <%@page import="java.util.Iterator"%>
   <%@page import="model.StudentAuthenticator"%>
<%

StudentDao udao=new StudentDao();
List<StudentDto> listOfUsers=udao.getAllUserData();
Iterator<StudentDto> itr = listOfUsers.iterator();
%>

    
      <div class="top-navbar">
        <nav id='menu'>
          <input type='checkbox' id='responsive-menu' onclick='updatemenu()'><label></label>
          <ul>
             <li><a href='index.html'>Home</a></li>
            <li><a class='dropdown-arrow' href='http://'>Our College</a>
              <ul class='sub-menus'>
                <li><a href='/index.html'>IIST</a></li>
                <li><a href='http://'>IIP</a></li>
                <li><a href='http://'>IIMR</a></li>
              </ul>
            </li>
            <li><a class='dropdown-arrow' href='http://'>Our Courses</a>
              <ul class='sub-menus'>
                  <li><a href='/cs'>COMPUTER SCIENCE</a></li>
                  <li><a href='/it'>INFORMATION TECHNOLOGY</a></li>
                  <li><a href='/ec'>ELECTRONICS & COMMUNICATION</a></li>
                  <li><a href='/civil'>CIVIL ENGINEERING</a></li>
                  <li><a href='/chemical'>CHEMICAL ENGINEERING</a></li>
                  <li><a href='/mechanical'>MECHANICAL ENGINEERING</a></li>
                  <li><a href='/ai'>ARTIFICIAL INTELLIGENCE</a></li>
              </ul>
          </li>
            <li><a class='dropdown-arrow' href='http://'>Facilities</a>
              <ul class='sub-menus'>
                <li><a href='/smartcampus'>SMART CAMPUS</a></li>
                <li><a href='http://'>LABORATORIES</a></li>
                <li><a href='/library'>LIBRARY & RESOURCE CENTER</a></li>
                <li><a href='/hostel'>HOSTEL</a></li>
                <li><a href='/sports'>SPORTS FACILITIES</a></li>
                <li><a href='/transportation'>TRANSPORTATION</a></li>
                <li><a href='/canteen'>CANTEEN</a></li>
                <li><a href='/auditorium'>AUDITORIUM & SEMINAR HALL</a></li>
                <li><a href='/computerLab'>COMPUTER LAB</a></li>
                <li><a href='/workshop'>WORKSHOP</a></li>
                <li><a href='http://'>GRIEVANCE</a></li>
              </ul>
            </li>
            <li><a class='dropdown-arrow' href='http://'>Gallery</a>
              <ul class='sub-menus'>
                <li><a href='http://'>IMAGE GALLERY</a></li>
                <li><a href='http://'>VIDEO GALLERY</a></li>
              </ul>
            </li>
            <li><a href='/admission'>Admission</a></li>
            <li><a href='/placement'>Placement</a></li>
            <li><a href='/about'>About</a></li>
            <li><a href='/contact'>Contact Us</a></li>
          </ul>
        </nav>
      </div>
<h1>Admin Dashboard</h1><hr>
<table id="customers">
  <tr>
    <th>Enrollment</th>
    <th>Name</th>
    <th>Father Name</th>
    <th>Password</th>
    <th>Branch</th>
    <th>Blood group</th>
    <th>Adhar Number</th>
    <th>Email</th>
    <th>Phone No</th>
    <th>Admission Year</th>
    <th>Gender</th>
    <th>Dob</th>
    <th>City</th>
    <th>Action</th>
    <th>Action</th>
  </tr>
   <%
   while(itr.hasNext())
   {
	   StudentDto user = itr.next();
	 %>
	   <tr>
     <td><%=user.getEnrollment() %></td>
     <td><%=user.getName() %></td>
     <td><%=user.getFathername() %></td>
     <td><%=user.getPassword() %></td>
     <td><%=user.getBranch() %></td>
     <td><%=user.getBloodgroup() %></td>
     <td><%=user.getAdharnumber() %></td>
     <td><%=user.getEmail() %></td>
     <td><%=user.getPhonenumber() %></td>
     <td><%=user.getAdmissionyear() %></td>
     <td><%=user.getGender() %></td>
     <td><%=user.getDob() %></td>
     <td><%=user.getCity()%></td>
     <td><a  href="DeleteStudent?enrollment=<%=user.getEnrollment() %>">Delete</a></td>
     <td><a  href="updateStudent.jsp?enrollment=<%=user.getEnrollment() %>">Update</a></td>
   </tr>
  <%
   }
  %>
</table>

</body>
</html>