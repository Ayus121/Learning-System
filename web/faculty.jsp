<%@page import="dto.FacultyDto"%>
<%@page import="dao.FacultyDao"%>
<%@page import="java.util.Iterator"%>
<%@page import="dto.StudentDto"%>
<%@page import="java.util.List"%>
<%@page import="dao.StudentDao"%>
<!DOCTYPE html>

<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/faculty.css">
	<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
</head>

<body>
     <%
         String notice = request.getParameter("notice");
         String facultyid = (String)session.getAttribute("id");
         if(facultyid==null || facultyid.trim().equals(""))
         {
	  response.sendRedirect("login.html");
         }
         FacultyDao udao = new FacultyDao();
         FacultyDto user=udao.getUserData(facultyid);
         
            StudentDao studentudao = new StudentDao();
            List<StudentDto> studentlistOfUsers = studentudao.getAllUserData();
            Iterator<StudentDto> itr = studentlistOfUsers.iterator();
     %>
	<input type="checkbox" id="nav-toggle">

	<div class="sidebar">
		<div class="brand">
			<h1><span class='bx bxs-bank'></span><span>Shail Group</span></h1>
		</div>
		<div class="sidebar-menu">
			<ul>
				<li><a href="faculty.jsp" class="active"><span class='bx bxs-dashboard'></span><span>Dashboard</span></a></li>
				<li><a href="index.html" class="active"><span class='bx bx-home-circle'></span><span>Home</span></a></li>
				<li><a href="profileFaculty.jsp" class="active"><span class='bx bx-user-circle'></span><span>Profile</span></a></li>
				<li><a href="checkAllstudent.jsp" class="active"><span class='bx bx-user-plus'></span><span>Students</span></a></li>
				<li><a href="assignmentByFacultyHome.jsp?facultyid=<%=user.getFacultyid() %>" class="active"><span class='bx bx-pencil'></span><span>Assignments</span></a></li>
                                <li><a href="noticeByFaculty.jsp?facultyid=<%=user.getFacultyid() %>" class="active"><span class='bx bxs-log-out'></span><span>Send Notice</span></a></li>
                                <li><a href="noticeReceivedByFaculty.jsp?receiver=<%=user.getCategory() %>" class="active"><span class='bx bxs-log-out'></span><span>View Notice</span></a></li>
				<li><a href="" class="active"><span class='bx bx-calendar-plus'></span><span>Events</span></a></li>
				<li><a href="out.jsp" class="active"><span class='bx bxs-log-out'></span><span>Logout</span></a></li>
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
					<h4><%=user.getName() %></h4>
					<a href="">Faculty</a>
				</div>
			</div>
		</header>

		<div class="main">
			<div class="card">
				<div class="card-single">
					<h2>10</h2>
					<span class="bx bx-spreadsheet"></span>
					<span>Assignments</span>
				</div>
				<div class="card-single">
					<h2>100</h2>
					<span class="bx bx-bus"></span>
					<span>Buses</span>
				</div>
				<div class="card-single">
					<h2>70</h2>
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
							<h3>Students</h3>
							<a href="checkAllStudent.jsp">See all <span class="bx bx-arrow-from-left"></span></a>
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
										<td>More</td>
									</tr>
								</thead>
								<tbody>
                                                                    <%
                                                    while (itr.hasNext()) {
                                                StudentDto user2 = itr.next();
                                               %>
									<tr>
										<td><%=user2.getEnrollment()%></td>
                                        <td><%=user2.getName()%></td>
                                        <td><%=user2.getFathername()%></td>
                                        <td><%=user2.getPassword()%></td>
                                        <td><%=user2.getBranch()%></td>
                                        <td><%=user2.getBloodgroup()%></td>
                                        <td><%=user2.getAdharnumber()%></td>
                                        <td><%=user2.getEmail()%></td>
                                        <td><%=user2.getPhonenumber()%></td>
                                        <td><%=user2.getAdmissionyear()%></td>
                                        <td><%=user2.getGender()%></td>
                                        <td><%=user2.getDob()%></td>
                                        <td><%=user2.getCity()%></td>
                                        <td><%=user2.getDob()%></td>

                                        <td class="btn">
                                            <button class="update"><a style="color: white" href="profileStudent.jsp?enrollment=<%=user2.getEnrollment() %>">View<a/></button>
                                        </td> 
									</tr>
                                                                        <%
                                                                         }
                                                                        %>
									

								</tbody>
							</table>
						</div>



					</div>
				</div>
			
			</div>

		</div>
	</div>
	</div>


</body>

</html>

