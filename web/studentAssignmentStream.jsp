<%@page import="java.util.Iterator"%>
<%@page import="dto.AssignmentDto"%>
<%@page import="java.util.List"%>
<%@page import="dao.AssignmentDao"%>
<!DOCTYPE html>

<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Stream</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/studentAssignmentStream.css">
	<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
</head>

<body>
      <%
        String enrollment = request.getParameter("enrollment");
        String facultyid = request.getParameter("facultyid");
        AssignmentDao udao = new AssignmentDao();
        List<AssignmentDto> listofusers = udao.getAllAssignment();
        Iterator<AssignmentDto> itr = listofusers.iterator();
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
				</label>Software Engineering</h2>
			<div class="options">
				<li><a href="">Stream</a></li>
			</div>
			<div class="user">
				<img src="1.jpg" width="40px" height="40px" alt="">
				<div>
					<h4>Nilesh Bagdare</h4>
					<a href="">Admin</a>
				</div>
			</div>
		</header>

		<div class="main">
			<div class="banner">
				<img src="banner.jpg" class="banner-img" height="250" width="950" alt="">
			</div>
			<div class="banner-content">
				<h2>Software Engineering</h2>
				<a>IT</a>
			</div>
			<div class="recent-grid">
				<div class="projects">
					<div class="recent-card">
						<div class="card-header">
							<h3>Assignments</h3>
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
										<h4></h4>
										<span><%=user.getCourse()%></span>
									</div>
								</div>
								<div class="icons">
                                                                     <object data="/file/<%=user.getFilename() %>" type="application/pdf" width="500px" height="600px">
                                                                        <p>
                                                                        <a href="file/<%=user.getFilename() %>">View</a></p>
                                                                        
									<button>Submit</button>
								</div>
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
	</div>


</body>

</html>