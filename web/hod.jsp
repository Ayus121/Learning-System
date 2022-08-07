<%@page import="dto.HodDto"%>
<%@page import="dao.HodDao"%>
<%@page import="dao.StudentDao"%>
<%@page import="dto.StudentDto"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="dto.FacultyDto"%>
<%@page import="dao.FacultyDao"%>
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
            String hodid = (String) session.getAttribute("id");
            if (hodid == null || hodid.trim().equals("")) {
                response.sendRedirect("login.html");
            }
            HodDao hodudao = new HodDao();
            HodDto hoduser = hodudao.getUserData(hodid);
            
            FacultyDao udao = new FacultyDao();
            List<FacultyDto> listOfUsers = udao.getAllUserData();
            Iterator<FacultyDto> itr = listOfUsers.iterator();

            StudentDao udao1 = new StudentDao();
            List<StudentDto> listOfUsers1 = udao1.getAllUserData();
            Iterator<StudentDto> itr1 = listOfUsers1.iterator();
        %>
        <input type="checkbox" id="nav-toggle">

        <div class="sidebar">
            <div class="brand">
                <h1><span class='bx bxs-bank'></span><span>Shail Group</span></h1>
            </div>
            <div class="sidebar-menu">
                <ul>
                   <li><a href="index.html" class="active"><span class='bx bxs-dashboard'></span><span>Dashboard</span></a></li>
				<li><a href="" class="active"><span class='bx bx-home-circle'></span><span>Home</span></a></li>
				<li><a href="faculty search/index.html" class="active"><span class='bx bx-user'></span><span>Profile</span></a></li>
				<li><a href="noticeByHod.jsp" class="active"><span class='bx bx-user-x'></span><span>Send Notice</span></a></li>
				<li><a href="assignmentByHod.jsp" class="active"><span class='bx bx-user-plus'></span><span>Send Assignment</span></a></li>
				<li><a href="complainResponseByHod.jsp" class="active"><span class='bx bx-question-mark'></span><span>Response Complaint</span></a></li>
				<li><a href="" class="active"><span class='bx bx-calendar-plus'></span><span>Events</span></a></li>
				<li><a href="" class="active"><span class='bx bxs-log-out'></span><span>Logout</span></a></li>
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
                        <h4><%=hoduser.getName()%></h4>
                        <a href="">HOD</a>
                    </div>
                </div>
            </header>

            <div class="main">
                <div class="card">
                    <div class="card-single">
                        <h2>200</h2>
                        <span class="bx bx-user"></span>
                        <span>Staff</span>
                    </div>
                    <div class="card-single">
                        <h2>100</h2>
                        <span class="bx bx-bus"></span>
                        <span>Buses</span>
                    </div>
                    <div class="card-single">
                        <h2>10,000</h2>
                        <span class="bx bx-user-plus"></span>
                        <span>Students</span>
                    </div>
                    <div class="card-single">
                        <h2>1,00,000</h2>
                        <span class="bx bx-rupee"></span>
                        <span>Revenue</span>
                    </div>
                </div>

                <div class="recent-grid">
                    <div class="projects">
                        <div class="recent-card">
                            <div class="card-header">
                                <h3>Faculty</h3>
                                <a href="checkAllFacultyByHod.jsp?hodid=<%=hoduser.getHodid()%>" >See all <span class="bx bx-arrow-from-left"></span></a>
                            </div>

                            <div class="table" style="overflow-x: auto; overflow-y: auto;">
                                <table>
                                    <thead>
                                        <tr>
                                            <td>Id</td>
                                            <td>Name</td>
                                            <td>Qualification</td>
                                            <td>Password</td>
                                            <td>Department</td>
                                            <td>Aadhar no.</td>
                                            <td>Email</td>
                                            <td>Mobile No.</td>
                                            <td>Address</td>
                                            <td>Designation</td>
                                            <td>Gender</td>
                                            <td>Blood group</td>
                                            <td>Joining Year</td>
                                            <td>Date of Birth</td>
                                            <td>Category</td>
                                            <td>Teaching Experience</td>
                                            <td>More</td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <%
                                                while (itr.hasNext()) {
                                                    FacultyDto user = itr.next();
                                                    if(user.getDepartment().equals(hoduser.getDepartment())){
                                            %>
                                        <tr>
                                            <td><%=user.getFacultyid()%></td>
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
                                                <button class="update">View</button>
                                            </td>
                                        </tr>
                                        <%
                                            }
                                            }
                                        %>






                                    </tbody>
                                </table>
                            </div>



                        </div>
                    </div>
                    <div class="recent-Student">
                        <div class="recent-card">
                            <div class="card-header">
                                <h3>Our Students</h3>
                                <a href="checkAllStudent.jsp">See all <span
                                        class="bx bx-arrow-from-left"></span></a>
                            </div>
                            <%
                                while (itr1.hasNext()) {
                                    StudentDto user1 = itr1.next();
                                    if(user1.getBranch().equals(hoduser.getDepartment())){
                            %>

                            <div class="customer">
                                <div class="details">
                                    <img src="1.jpg" width="40px" height="40px" alt="">
                                    <div>
                                        <h4><%=user1.getName()%></h4>
                                        <span>Student</span>
                                    </div>
                                </div>
                                <div class="icons">
                                    <span class="bx bx-user-circle"></span>
                                    <span class="bx bx-phone"></span>
                                    <span class="bx bx-message"></span>
                                </div>
                            </div>
                            <%
                                }
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