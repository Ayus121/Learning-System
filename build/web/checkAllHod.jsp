<%@page import="dto.HodDto"%>
<%@page import="dao.HodDao"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>

<html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Admin</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/admin.css">
        <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    </head>

    <body>
        <%

            HodDao udao = new HodDao();
            List<HodDto> listOfUsers = udao.getAllUserData();
            Iterator<HodDto> itr = listOfUsers.iterator();
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
                    </label>Faculty List</h2>
                <div class="user">
                    <img src="1.jpg" width="40px" height="40px" alt="">
                    <div>
                        <h4>Ram Sonwani</h4>
                        <a href="">Admin</a>
                    </div>
                </div>
            </header>



            <div class="recent-grid">
                <div class="projects">
                    <div class="recent-card">
                        <div class="card-header">
                            <h3>Faculty</h3>
                            <div class="search">
                                <form action="checkAllHod.jsp" method="post">
                                    <input type="text" placeholder="Enter Hod ID" name="hodid" required>
                                    <button type="submit">Submit</button>
                                </form>

                            </div>
                        </div>
                        <%
                            String hodid = request.getParameter("hodid");

                            HodDto user1 = udao.getUserData(hodid);
                            if (hodid != null) {
                        %>                           
                        <div class="table" style="">
                            <table>
                                <thead>
                                    <tr>
                                       
   <td>Id</td>
                                        <td>Name</td>
                                        <td>Qualification</td>
                                        <td>Password</td>
                                        <td>Department</td>
                                        <td>Blood group</td>
                                        <td>Aadhar no.</td>
                                        <td>Email</td>
                                        <td>Mobile No.</td>
                                        <td>Joining Year</td>
                                         <td>Gender</td>
                                        <td>Date of Birth</td>
                                        <td>Address</td>
                                       <td>Teaching Experience</td>
                                        
                                       <td>Designation</td>
                                        <td>Category</td>
                                        
                                        <td>More</td>
                                       
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><%=user1.getHodid()%></td>
                                        <td><%=user1.getName()%></td>
                                        <td><%=user1.getQualification()%></td>
                                        <td><%=user1.getPassword()%></td>
                                        <td><%=user1.getDepartment()%></td>
                                        <td><%=user1.getBloodgroup()%></td>
                                        <td><%=user1.getAdharnumber()%></td>
                                        <td><%=user1.getEmail()%></td>
                                        <td><%=user1.getPhonenumber()%></td>
                                        <td><%=user1.getJoiningyear()%></td>
                                        <td><%=user1.getGender()%></td>
                                        <td><%=user1.getDob()%></td>
                                        <td><%=user1.getAddress()%></td>
                                        <td><%=user1.getTeachexperience()%></td>
                                        <td><%=user1.getDesignation()%></td>
                                        <td><%=user1.getCategory()%></td>
                                        <td class="btn">
                                            <button class="update"><a style="color: white" href="profileHodByAdmin.jsp?hodid=<%=user1.getHodid()%>">View</a></button>
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
                                        <td>Id</td>
                                        <td>Name</td>
                                        <td>Qualification</td>
                                        <td>Password</td>
                                        <td>Department</td>
                                        <td>Blood group</td>
                                        <td>Aadhar no.</td>
                                        <td>Email</td>
                                        <td>Mobile No.</td>
                                        <td>Joining Year</td>
                                         <td>Gender</td>
                                        <td>Date of Birth</td>
                                        <td>Address</td>
                                       <td>Teaching Experience</td>
                                        
                                       <td>Designation</td>
                                        <td>Category</td>
                                        
                                        <td>More</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <%
                                            while (itr.hasNext()) {
                                                HodDto user = itr.next();
                                        %>
                                    <tr>
                                        <td><%=user.getHodid()%></td>
                                        <td><%=user.getName()%></td>
                                        <td><%=user.getQualification()%></td>
                                        <td><%=user.getPassword()%></td>
                                        <td><%=user.getDepartment()%></td>
                                        <td><%=user.getBloodgroup()%></td>
                                        <td><%=user.getAdharnumber()%></td>
                                        <td><%=user.getEmail()%></td>
                                        <td><%=user.getPhonenumber()%></td>
                                        <td><%=user.getJoiningyear()%></td>
                                        <td><%=user.getGender()%></td>
                                        <td><%=user.getDob()%></td>
                                        <td><%=user.getAddress()%></td>
                                        <td><%=user.getTeachexperience()%></td>
                                        <td><%=user.getDesignation()%></td>
                                        <td><%=user.getCategory()%></td>
                                        <td class="btn">
                                            <button class="update"><a style="color: white" href="profileHodByAdmin.jsp?hodid=<%=user.getHodid() %>">View</a></button>
                                        </td>
                                    </tr>
                                    <%
                                        }
                                    %>

                                </tbody>
                            </table>
                        </div>
                        <%
                            }
                        %>
                    </div>
                </div>

            </div>

        </div>
    </div>
</div>


</body>

</html>