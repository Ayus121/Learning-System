<%@page import="dto.AdminDto"%>
<%@page import="dao.AdminDao"%>
<!DOCTYPE html>

<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Admin</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/profile.css">
         <link rel="stylesheet" href="css/admin.css">
	<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />

</head>

<body>
        <%
         AdminDao udao = new AdminDao();
         AdminDto user = udao.getUserData();
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
			
		</header>

		<div class="main">
			<div class="container">
				<div class="cover-photo">
					<img src="img/rohit.png" alt="" style="height: 120px; width:120px" class=" profile ">
					<div class="buttons">
						<!-- <button class="msg-btn">Message</button> -->
                                                <button class="follow-btn"><a href="updateAdmin.jsp">Update Profile</a></button>
                                                
					</div>
				</div>
				<div class="profile-name"><%=user.getName() %>
				</div>
				<div class="skills">
					<a href=""><span class="fa fa-location-dot"></span> Indore, Madhya Pradesh, India</a>
					<div>
						<p class="about"><span class="fa fa-pencil"></span> <%=user.getDesignation() %> </p>
					</div>
				</div>
		
				<div class="icons">
					<i class="fab fa-facebook"></i>
					<i class="fab fa-instagram"></i>
					<i class="fab fa-linkedin"></i>
					<i class="fab fa-twitter"></i>
				</div>
				<section class="info">
					<div class="main-heading">
						<div class="line"></div>
						<h1 class="heading">More Info</h1>
						<div class="line1"></div>
					</div>
		
					<div class="details">
						<div class="details-box">
							<h3>Name : </h3>
							<div><%=user.getName() %></div>
						</div>
						<div class="details-box">
							<h3>Faculty Id : </h3>
							<div><%=user.getAdminid() %></div>
						</div>
						<div class="details-box">
							<h3>Qualification : </h3>
							<div>B.tech, M.tech</div>
						</div>
						<div class="details-box">
							<h3>Blood Group : </h3>
							<div><%=user.getBloodgroup()%></div>
						</div>
						<div class="details-box">
							<h3>Aadhar Number : </h3>
							<div><%=user.getAdharnumber()%></div>
						</div>
						<div class="details-box">
							<h3>Email : </h3>
							<div><%=user.getEmail()%></div>
						</div>
						<div class="details-box">
							<h3>Mobile no : </h3>
							<div><%=user.getPhonenumber() %></div>
						</div>
						<div class="details-box">
							<h3>Gender : </h3>
							<div><%=user.getGender()%></div>
						</div>
						<div class="details-box">
							<h3>Date of Birth : </h3>
							<div><%=user.getDob()%></div>
						</div>
						<div class="details-box">
							<h3>Address : </h3>
							<div><%=user.getAddress()%></div>
						</div>
						<div class="details-box">
							<h3>Experience : </h3>
							<div><%=user.getExperience()%></div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
	</div>


</body>

</html>
