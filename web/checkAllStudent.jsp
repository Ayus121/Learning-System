<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="dao.StudentDao"%>
<%@page import="dto.StudentDto"%>
<!DOCTYPE html>

<html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/admin.css">
        <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    </head>

    <body>
        <%
            StudentDao udao = new StudentDao();
            List<StudentDto> listOfUsers = udao.getAllUserData();
            Iterator<StudentDto> itr = listOfUsers.iterator();
        %>
        <input type="checkbox" id="nav-toggle">

        <div class="sidebar">
            <div class="brand">
                <h1><span class='bx bxs-bank'></span><span>Shail Group</span></h1>
            </div>
            <div class="sidebar-menu">
                <ul>
                    <li><a href="admin.jsp" class="active"><span class='bx bxs-dashboard'></span><span>Dashboard</span></a>
                    </li>
                    <li><a href="index.html" class="active"><span class='bx bx-home-circle'></span><span>Home</span></a></li>
                    <li><a href="profileAdmin.jsp" class="active"><span class='bx bx-user-circle'></span><span>Profile</span></a></li>
                    <li><a href="addHOD.jsp" class="active"><span class='bx bx-user-plus'></span><span>Add Hod</span></a></li>
                    <li><a href="addFaculty.jsp" class="active"><span class='bx bx-user-plus'></span><span>Add Faculty</span></a></li>
                    <li><a href="addStudent.jsp" class="active"><span class='bx bx-user-pin'></span><span>Add Students</span></a></li>
                    <li><a href="" class="active"><span class='bx bx-calendar-plus'></span><span>Events</span></a></li>
                    <li><a href="" class="active"><span class='bx bx-group'></span><span>Departments</span></a></li>
                    <li><a href="logout.jsp" class="active"><span class='bx bxs-log-out'></span><span>Logout</span></a></li>
                </ul>
            </div>
        </div>

        <div class="main-content">
            <header>
                <h2><label for="nav-toggle">
                        <span class='bx bx-menu'></span>
                    </label>Dashboard</h2>
                <div class="user">
                    <img src="1.jpg" width="40px" height="40px" alt="">
                    <div>
<!--                        <h4>Ayush Gaikwad</h4>
                        <a href="">Admin</a>-->
                    </div>
                </div>
            </header>



            <div class="recent-grid">
                <div class="projects">
                    <div class="recent-card">
                        <div class="card-header">
                            <h3>Students</h3>
                            <div class="search">
                                <form action="checkAllStudent.jsp" method="post">
                                    <input type="text" placeholder="Enter Enrollment" name="enrollment" required>
                                    <button type="submit">Submit</button>
                                </form>
                            </div>
                        </div>
                        <%
                            String enrollment = request.getParameter("enrollment");
                            StudentDto user1 = udao.getUserData(enrollment);
                            if (enrollment != null) {
                        %>
                        <div class="table" style="">
                            <table>
                                <thead>
                                    <tr>
                                        <td>Enrollment</td>
                                        <td>Name</td>
                                        <td>Father Name</td>
                                        <td>Password</td>
                                        <td>Department</td>
                                         <td>Blood group</td>
                                        <td>Aadhar no.</td>
                                        <td>Email</td>
                                        <td>Mobile No.</td>
                                        
                                        <td>Admission Year</td>
                                        <td>Gender</td>
                                        <td>Date of Birth</td>
                                        <td>Address</td>
                                        <td>Category</td>
                                        <td>More</td>
                                        
                                    </tr>
                                </thead>
                                <tbody>
                                   
                                    <tr>
                                        <td><%=user1.getEnrollment()%></td>
                                        <td><%=user1.getName()%></td>
                                        <td><%=user1.getFathername()%></td>
                                        <td><%=user1.getPassword()%></td>
                                        <td><%=user1.getBranch()%></td>
                                        <td><%=user1.getBloodgroup()%></td>
                                        <td><%=user1.getAdharnumber()%></td>
                                        <td><%=user1.getEmail()%></td>
                                        <td><%=user1.getPhonenumber()%></td>
                                        <td><%=user1.getAdmissionyear()%></td>
                                        <td><%=user1.getGender()%></td>
                                        <td><%=user1.getDob()%></td>
                                        <td><%=user1.getCity()%></td>
                                        <td><%=user1.getDob()%></td>
                                        
                                        <td class="btn">
                                            <button class="update"><a style="color: white" href="profileStudent.jsp?enrollment=<%=user1.getEnrollment() %>">View<a/></button>
                                        </td> 

                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <%
                        } else {
                        %>

                        <div class="table" style="">
                            <table>
                                <thead>
                                    <tr>
                                        <td>Enrollment</td>
                                        <td>Name</td>
                                        <td>Father Name</td>
                                        <td>Password</td>
                                        <td>Department</td>
                                         <td>Blood group</td>
                                        <td>Aadhar no.</td>
                                        <td>Email</td>
                                        <td>Mobile No.</td>
                                        
                                        <td>Admission Year</td>
                                        <td>Gender</td>
                                        <td>Date of Birth</td>
                                        <td>Address</td>
                                        <td>Category</td>
                                        <td>More</td>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <%
                                            while (itr.hasNext()) {
                                                StudentDto user = itr.next();
                                        %>
                                    <tr>
                                        <td><%=user.getEnrollment()%></td>
                                        <td><%=user.getName()%></td>
                                        <td><%=user.getFathername()%></td>
                                        <td><%=user.getPassword()%></td>
                                        <td><%=user.getBranch()%></td>
                                        <td><%=user.getBloodgroup()%></td>
                                        <td><%=user.getAdharnumber()%></td>
                                        <td><%=user.getEmail()%></td>
                                        <td><%=user.getPhonenumber()%></td>
                                        <td><%=user.getAdmissionyear()%></td>
                                        <td><%=user.getGender()%></td>
                                        <td><%=user.getDob()%></td>
                                        <td><%=user.getCity()%></td>
                                        <td><%=user.getDob()%></td>

                                        <td class="btn">
                                            <button class="update"><a style="color: white" href="profileStudent.jsp?enrollment=<%=user.getEnrollment() %>">View<a/></button>
                                        </td> 
                                        <%
                                            }
                                        %>
                                    </tr>
                                    




                                </tbody>
                            </table>
                        </div>
                        <%  }%>


                    </div>
                </div>

            </div>

        </div>
    </div>
</div>


</body>

</html>