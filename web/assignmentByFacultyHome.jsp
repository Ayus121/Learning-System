<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="dto.AssignmentDto"%>
<%@page import="dao.AssignmentDao"%>
<!DOCTYPE html>

<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Admin</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/assignmentByFaculty.css">
	<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
</head>

<body>
     <%
        String facultyid = request.getParameter("facultyid");
        AssignmentDao udao = new AssignmentDao();
        List<AssignmentDto> listofusers = udao.getCourseData(facultyid);
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
				</label>Assignment</h2>
			<div class="user">
				<img src="1.jpg" width="40px" height="40px" alt="">
				<div>
					<h4><%=facultyid%></h4>
					<a href="">Faculty</a>
				</div>
			</div>
		</header>

		<div class="main">
			<div class="card">
                                        <%
                                            while (itr.hasNext()) {
                                            AssignmentDto user = itr.next();
                                        %>
			<div class="container">
				<div class="cover-photo">
					<img src="img/rohit.png" alt="" style="height: 100px; width:100px" class=" profile ">
				</div>
				<div class="card-content">
                                    <a href="assignmentByFaculty.jsp?course=<%=user.getCourse()%>&&facultyid=<%=facultyid%>"><%=user.getCourse()%></a>
					<div><%=user.getBranch()%></div>
					<p><%=user.getName() %></p>
				</div>
				<div class="bottom">
				<div class="line"></div>
				<div class="card-icons">
					<i class="fas fa-user-circle"></i>
					<i class="fas fa-folder"></i>
				</div>
			</div>
			</div>
                                <%
                                    }    
                                %>
			
			
			
		</div>
		</div>
	</div>


</body>

</html>