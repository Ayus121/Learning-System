<%@page import="dto.StudentDto"%>
<%@page import="dao.StudentDao"%>
<!DOCTYPE html>

<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/student.css">
	<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
</head>

<body>
      <%
         String enrollment = (String)session.getAttribute("id");
         if(enrollment==null || enrollment.trim().equals(""))
        {
	response.sendRedirect("login.html");
        }

       StudentDao udao = new StudentDao();
       StudentDto user = udao.getUserData(enrollment);
     %>
	<input type="checkbox" id="nav-toggle">

	<div class="sidebar">
		<div class="brand">
			<h1><span class='bx bxs-bank'></span><span>Shail Group</span></h1>
		</div>
		<div class="sidebar-menu">
			<ul>
				<li><a href="student.jsp" class="active"><span class='bx bxs-dashboard'></span><span>Dashboard</span></a></li>
				<li><a href="index.html" class="active"><span class='bx bx-home-circle'></span><span>Home</span></a></li>
				<li><a href="studentProfile.jsp" class="active"><span class='bx bx-user-circle'></span><span>Profile</span></a></li>
				<li><a href="studentAssignmentHome.jsp?branch=<%=user.getBranch()%>&enrollment=<%=enrollment%>" class="active"><span class='bx bx-pencil'></span><span>Assignments</span></a></li>
				<li><a href="" class="active"><span class='bx bx-calendar-plus'></span><span>Events</span></a></li>
				<li><a href="complainByStudent.jsp" class="active"><span class='bx bx-question-mark'></span><span>Queries</span></a></li>
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
					<h4><%=user.getName()%></h4>
					<a href="">Student</a>
				</div>
			</div>
		</header>

		<div class="main">
			<div class="card">
				<div class="card-single">
				
						<h3>Time table</h3>
						<span class="bx bxs-spreadsheet"></span>
						<span>IT</span>
					
				
					
				</div>
				<div class="card-single">
				
						<h3>MST Time Table</h3>
						<span class="bx bx-book-bookmark"></span>
						<span>MST-1</span>
					
				
					
				</div>
				<div class="card-single">
				
						<h2>85%</h2>
						<span class="bx bx-user-plus"></span>
						<span>Attendance</span>
					
				
					
				</div>
				<div class="card-single">
				
						<h2>30,000</h2>
						<span class="bx bx-rupee"></span>
						<span>Fee Remaining</span>
					
				
					
				</div>
			</div>

			<div class="recent-grid">
				<div class="projects">
					<div class="recent-card">
						<div class="card-header">
							<h3>Notice</h3>
                                                        <button><a href="noticeReceivedByStudent.jsp?receiver=student">See all </a><span class="bx bx-arrow-from-left"></span></button>
						</div>
						<div class="notice">
							<h3>NOTICE</h3>
							<div class="notice-content">
							<div>06,March 2022</div>
							<div>Dear Students,</div>
							<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatibus aspernatur rem excepturi, in, at aut culpa impedit ipsa dolorem incidunt hic est. Possimus id veritatis inventore libero tempore consectetur et maxime perspiciatis quibusdam odio.</p>
						</div>
							<div>Class Coordinator</div>
							<h4>Alpana Meena</h4>
						</div>




					</div>
				</div>
				<div class="recent-Student">
					<div class="recent-card">
						<div class="card-header">
							<h3>Upcoming Events</h3>
							<button>See all <span class="bx bx-arrow-from-left"></span></button>
						</div>


						<div class="customer">
							<div class="details">
								
								<div>
									<h4>Radiomirchi FM</h4>
									<span>KTM show</span>
								</div>
							</div>
							<div class="icons">
								<span>10/08/2022</span>
							</div>
						</div>
						<div class="customer">
							<div class="details">
								
								<div>
									<h4>Janmashtami</h4>
									<span>Mahotsav</span>
								</div>
							</div>
							<div class="icons">
								<span>20/08/2022</span>
							</div>
						</div>
						<div class="customer">
							<div class="details">
								
								<div>
									<h4>Ganesh Chaturthi</h4>
									<span>Ganpati Pujan</span>
								</div>
							</div>
							<div class="icons">
								<span>01/09/2022</span>
							</div>
						</div>
						<div class="customer">
							<div class="details">
								
								<div>
									<h4>Ganpati Visarjan</h4>
									<span>Visarjan</span>
								</div>
							</div>
							<div class="icons">
								<span>11/09/2022</span>
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


