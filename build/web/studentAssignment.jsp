<!DOCTYPE html>

<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Assignment</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/studentAssignment.css">
	<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />

</head>

<body>
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
				<li><a href="Profile/index.html" class="active"><span class='bx bx-user-circle'></span><span>Profile</span></a></li>
				<li><a href="" class="active"><span class='bx bx-user-plus'></span><span>Add Faculty</span></a></li>
				<li><a href="" class="active"><span class='bx bx-user-pin'></span><span>Add Students</span></a></li>
				<li><a href="Events/index.html" class="active"><span class='bx bx-calendar-plus'></span><span>Events</span></a></li>
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
					<a href="">Admin</a>
				</div>
			</div>
		</header>

		<div class="main">
			<div class="assignment">
				<div class="heading">
					<span class="fas fa-file-alt"></span>
					<a>EXP1 Software Engineering</a>
					<div>
						<a>Amit Goud</a>
						<span>April 15</span>
						<p>10 Points</p>
					</div>
					<div class="line"></div>
					<div class="docs">
						<iframe src="Ad_Java_Lab_Manual.pdf" height="100" width="150" frameborder="0"></iframe>
					<div>
						<a>EXP1 Software Engineering</a>
						<p>PDF</p>
					</div>
					</div>
				</div>


			<div class="uploader">
				<form action="">
					<input type="file" class="file-upload" name="upload" value="file" required>
				<input type="button" class="submit" value="Submit">
				<input type="button" class="reset" value="Reset">
				</form>
			</div>
		</div>
			<div class="recent-grid">
				<div class="projects">
					
					

					</div>
				</div>
				<div class="recent-Student">
					
				</div>
			</div>

		</div>
	</div>
	</div>


</body>

</html>