<%@page import="dao.AssignmentDao"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="dto.NoticeDto"%>

<!DOCTYPE html>

<html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/assignment.css">
        <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    </head>

    <body>
        <%
            AssignmentDao udao = new AssignmentDao();
            List<NoticeDto> listOfUsers = udao.getAllUserData("hod"); 
            Iterator<NoticeDto> itr = listOfUsers.iterator();
        %>
        <input type="checkbox" id="nav-toggle">

        <div class="sidebar">
            <div class="brand">
                <h1><span class='bx bxs-bank'></span><span>Shail Group</span></h1>
            </div>
            <div class="sidebar-menu">
                <ul>
                    <li><a href="../index.html" class="active"><span class='bx bxs-dashboard'></span><span>Dashboard</span></a></li>
                    <li><a href="" class="active"><span class='bx bx-home-circle'></span><span>Home</span></a></li>
                    <li><a href="../Student search/index.html" class="active"><span class='bx bx-user-circle'></span><span>Students</span></a></li>
                    <li><a href="../Assignment/index.html" class="active"><span class='bx bx-pencil'></span><span>Assignments</span></a></li>
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
                        <h4>Ayush Gaikwad</h4>
                        <a href="">Admin</a>
                    </div>
                </div>
            </header>

            <div class="main">


                <div class="recent-grid">
                    <div class="projects">
                        <div class="recent-card">
                            <div class="card-header">
                                <h3>Assignment</h3>
                            </div>

                            <div class="textarea">
                                <form action="Assignment" method="post">
                                    <input type='text' name='heading' placeholder='Enter Heading here'><br><br>
                                    <textarea name="assignment" placeholder="Write your assignments questions here..." id="query" cols="70" rows="5"></textarea>
                                    <input type='text' name='sender' hidden='' value='hod'>
                                    <input type='text' name='receiver' hidden='' value='student'>
                                    <div class="textarea-btn" ><button type="submit">Send</button></div>
                                </form>
                            </div>



                        </div>
                    </div>
          
                    <div class="recent-Student">
                        <div class="recent-card">
                            <div class="card-header">
                                <h3>Assignments Given</h3>

                            </div>
                            <%
                             int idn = 0;
                             if(idn!=0){
                                 out.println("honey");
                             }
                             else{
                            %>
                             
                            <div class="student-query">
                               
                                 <%
                                     
                                            while (itr.hasNext()) {
                                            NoticeDto user = itr.next();
                                            
                                           
                                 %>
                                 
                                 
                                  
                                <div class="customer">
                                    <div class="details">
                                        <img src="1.jpg" width="40px" height="40px" alt="">
                                        <div>
                                            
                                            <h4><%=user.getHeading() %></h4>
                                            <span>DBMS</span>
                                        </div>
                                    </div>
                                    <div class="icons">
                                        <a href="assignmentByHod.jsp?idn=<%=user.getIdn() %>">View</a>
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
    </div>


</body>

</html>