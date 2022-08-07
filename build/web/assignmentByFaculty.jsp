<%@page import="java.util.Iterator"%>
<%@page import="dto.AssignmentDto"%>
<%@page import="java.util.List"%>
<%@page import="dao.AssignmentDao"%>
<!DOCTYPE html>

<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Admin</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/assignmentByFaculty1.css">
	<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
</head>

<body>
     <%
       String facultyid = request.getParameter("facultyid");
       String course = request.getParameter("course");
       
     %>
	<input type="checkbox" id="nav-toggle">

	<div class="sidebar">
		<div class="brand">
			<h1><span class='bx bxs-bank'></span><span>Shail Group</span></h1>
		</div>
		<div class="sidebar-menu">
			<ul>
				<li><a href="index.html" class="active"><span class='bx bxs-dashboard'></span><span>Dashboard</span></a>
				</li>
				<li><a href="" class="active"><span class='bx bx-home-circle'></span><span>Home</span></a></li>
				<li><a href="Profile/index.html" class="active"><span
							class='bx bx-user-circle'></span><span>Profile</span></a></li>
				<li><a href="" class="active"><span class='bx bx-user-plus'></span><span>Add Faculty</span></a></li>
				<li><a href="" class="active"><span class='bx bx-user-pin'></span><span>Add Students</span></a></li>
				<li><a href="Events/index.html" class="active"><span
							class='bx bx-calendar-plus'></span><span>Events</span></a></li>
				<li><a href="" class="active"><span class='bx bx-group'></span><span>Departments</span></a></li>
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
					<h4>Nilesh Bagdare</h4>
					<a href="">Admin</a><%=course%>
				</div>
			</div>
		</header>

		<div class="main">
			<div class="assignment">
				<div class="uploader">
                                    <form action="Assignment" method="post" enctype="multipart/form-data">
                                            <input type="text"  name="facultyid" hidden="" value="<%=facultyid %>"> <%=facultyid %>
                                            <input type="text"  name="course" hidden="" value="<%=course%>"><%=course%><br>
                                               title:<input type="text" class="file-upload" name="title"  required placeholder="Enter title">
						<input type="file" class="file-upload" name="file"  required>
                                                
						<input type="submit" class="submit" value="Assign"> 
<!--						<input type="button" class="reset" value="Reset">-->
					</form>
				</div>
			</div>

                   <%
                      AssignmentDao udao = new AssignmentDao();
                      List<AssignmentDto> listofusers = udao.getAllAssignment();
                      Iterator<AssignmentDto> itr = listofusers.iterator();
                   %>
			<div class="recent-grid">
				<div class="projects">
					<div class="recent-card">
						<div class="card-header">
							<h3>Assignments Given</h3>
							<!-- <a href="faculty search/index.html">See all <span class="bx bx-arrow-from-left"></span></a> -->
						</div>

						<div class="student-query">
                                                     <%
                                            while (itr.hasNext()) {
                                                AssignmentDto user = itr.next();
                                        %>
							<div class="customer">
								<div class="details">
									<img src="1.jpg" width="40px" height="40px" alt="">
									<div>
										<h4><%=user.getTitle()%></h4>
										<span><%=user.getCourse()%></span>
									</div>
								</div>
								<div class="icons">
                                                                        <object data="/file/<%=user.getFilename() %>" type="application/pdf" width="500px" height="600px">
                                                                        <p>
                                                                        <a href="file/<%=user.getFilename() %>">View</a></p>
</object>
									<a href=""></a>
								</div>
							</div>
                                                       <%
                                                        }
                                                       %>
							
							
							
						</div>


					</div>
				</div>
				<div class="recent-Student">
					<div class="recent-card">
						<div class="card-header">
							<h3>Assignments Received </h3>
							<!-- <a href="./Student search/index.html">See all <span
									class="bx bx-arrow-from-left"></span></a> -->
						</div>

						<div class="customer-detail">
							<div class="customer">
								<div class="details">
									<img src="1.jpg" width="40px" height="40px" alt="">
									<div>
										<h4>Rohan Das</h4>
										<span>Student</span>
									</div>
								</div>
								<div class="icons">
									<a href="">View</a>
								</div>
							</div>
							<div class="customer">
								<div class="details">
									<img src="1.jpg" width="40px" height="40px" alt="">
									<div>
										<h4>Rohan Das</h4>
										<span>Student</span>
									</div>
								</div>
								<div class="icons">
									<a href="">View</a>
								</div>
							</div>
							<div class="customer">
								<div class="details">
									<img src="1.jpg" width="40px" height="40px" alt="">
									<div>
										<h4>Rohan Das</h4>
										<span>Student</span>
									</div>
								</div>
								<div class="icons">
									<a href="">View</a>
								</div>
							</div>
							<div class="customer">
								<div class="details">
									<img src="1.jpg" width="40px" height="40px" alt="">
									<div>
										<h4>Rohan Das</h4>
										<span>Student</span>
									</div>
								</div>
								<div class="icons">
									<a href="">View</a>
								</div>
							</div>
							<div class="customer">
								<div class="details">
									<img src="1.jpg" width="40px" height="40px" alt="">
									<div>
										<h4>Rohan Das</h4>
										<span>Student</span>
									</div>
								</div>
								<div class="icons">
									<a href="">View</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	</div>


</body>

</html>