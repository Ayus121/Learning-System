<%@page import="dto.ComplainDto"%>
<%@page import="dao.ComplainDao"%>
<%@page import="java.util.Iterator"%>
<%@page import="dto.StudentDto"%>
<%@page import="dao.StudentDao"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>

<html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/complainResponseByHod.css">
        <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    </head>

    <body>
        <%
        StudentDao udao = new StudentDao();
        List<StudentDto> listofusers = udao.getAllUserData();
        Iterator<StudentDto> itr = listofusers.iterator();
        
        ComplainDao complainudao = new ComplainDao();
        
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
				<li><a href="assignment.jsp" class="active"><span class='bx bx-user-plus'></span><span>Send Assignment</span></a></li>
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
                        <h4>Ayush Gaikwad</h4>
                        <a href="">HOD</a>
                    </div>
                </div>
            </header>
               <%
                    String idn = request.getParameter("idn");
                    ComplainDto user = complainudao.getUserData(idn);  
                     if(idn !=null)
                     {  
                         
                          
                %>
            <div class="main">


                <div class="recent-grid">
                    <div class="projects">
                        <div class="recent-card">
                            <div class="card-header">
                                <h3>Student's Queries</h3>
                            </div>
                            <div class="input">
                                <input type="name" disabled placeholder="Student's Name">
                                <input type="number" disabled placeholder="Enrollment No.">
                                <input type="number" disabled placeholder="Batch Year">
                            </div>
                            <div class="textarea">

                                <textarea name="Query" disabled  placeholder="Student's query" id="query" cols="70" rows="5" ><%=user.getComplain()%></textarea>
                                <form action="Complain" method="post">
                                <input type="text" name="idn" hidden="" value=idn >
                               
                                <textarea name="reply" placeholder="Reply to student's query" id="query" cols="70" rows="5"></textarea>
                                <div class="textarea-btn"><button>Send</button></div>
                                </form>
                            </div>



                        </div>
                    </div>
                    <div class="recent-Student">
                        <div class="recent-card">
                            <div class="card-header">
                                <h3>Recent Queries</h3>

                            </div>
                            
                            <div class="student-query">
                               <% 
                               List<ComplainDto> complainlistofusers = complainudao.getAllUserData("student");
                               Iterator<ComplainDto> complainitr = complainlistofusers.iterator();
                               while(complainitr.hasNext())
                               {
                                  ComplainDto user1 = complainitr.next();    
                                  
                               %>
                                <div class="customer">
                                    <div class="details">
                                        <img src="1.jpg" width="40px" height="40px" alt="">
                                        <div>
                                            <h4>Rohan Das<%=user1.getIdn()%></h4>
                                            <span>Student</span>
                                        </div>
                                    </div>
                                    <div class="icons">
                                        <a href="complainResponseByHod.jsp?idn=<%=user1.getIdn()%>">Query</a>
                                    </div>
                                </div>
                                <%
                                        }
                                %>
                                
                                
                                <div class="customer">
                                    <div class="details">
                                        <img src="1.jpg" width="40px" height="40px" alt="">
                                        <div>
                                            <h4>Rohan Das</h4>
                                            <span>Student</span>
                                        </div>
                                    </div>
                                    <div class="icons">
                                        <a href="">Query</a>
                                    </div>
                                </div>
                            </div>

                          
                        </div>
                    </div>
                </div>

            </div>
               <%
                     }
                   else{
                %>
                <div class="main">


                <div class="recent-grid">
                    <div class="projects">
                        <div class="recent-card">
                            <div class="card-header">
                                <h3>Student's Queries</h3>
                            </div>
                            <div class="input">
                                <input type="name" disabled placeholder="Student's Name">
                                <input type="number" disabled placeholder="Enrollment No.">
                                <input type="number" disabled placeholder="Batch Year">
                            </div>
                            <div class="textarea">

                                <textarea name="Query" disabled  placeholder="Student's query" id="query" cols="70" rows="5"></textarea>
                                <textarea name="Query" placeholder="Reply to student's query" id="query" cols="70" rows="5"></textarea>
                                <div class="textarea-btn"><button>Send</button></div>
                            </div>



                        </div>
                    </div>
                    <div class="recent-Student">
                        <div class="recent-card">
                            <div class="card-header">
                                <h3>Recent Queries</h3>

                            </div>
                            
                            <div class="student-query">
                               <% 
                                List<ComplainDto> complainlistofusers = complainudao.getAllUserData("student");
                               Iterator<ComplainDto> complainitr = complainlistofusers.iterator();
                               while(complainitr.hasNext())
                               {
                                  ComplainDto user2 = complainitr.next();    
                                  
                               %>
                                <div class="customer">
                                    <div class="details">
                                        <img src="1.jpg" width="40px" height="40px" alt="">
                                        <div>
                                            <h4>Rohan Das<%=user2.getIdn()%></h4>
                                            <span>Student</span>
                                        </div>
                                    </div>
                                    <div class="icons">
                                        <a href="complainResponseByHod.jsp?idn=<%=user2.getIdn()%>">Query</a>
                                    </div>
                                </div>
                                <%
                                        }
                                %>
                                
                                
                                <div class="customer">
                                    <div class="details">
                                        <img src="1.jpg" width="40px" height="40px" alt="">
                                        <div>
                                            <h4>Rohan Das</h4>
                                            <span>Student</span>
                                        </div>
                                    </div>
                                    <div class="icons">
                                        <a href="">Query</a>
                                    </div>
                                </div>
                            </div>

                          
                        </div>
                    </div>
                </div>

            </div>
            <%
             }
            %>
        </div>
    </div>


</body>

</html>