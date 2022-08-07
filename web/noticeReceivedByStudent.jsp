<%-- 
    Document   : SendNoticeHod
    Created on : Feb 17, 2022, 10:55:10 PM
    Author     : vishu
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="dto.NoticeDto"%>
<%@page import="dao.NoticeDao"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>JSP Page</title>
    </head>
    <body>
       <%
           
           NoticeDao udao = new NoticeDao();
           
        %>
       
      
            <div class="tab">
                <button class="tablinks" onclick="openCity(event, 'London')" id="defaultOpen">By Hod</button>
            <button class="tablinks" onclick="openCity(event, 'Paris')">By Faculty</button>
            
        </div>

        <!-- Tabs for Overview -->

        <section>
            <div id="London" class="tabcontent">
                <h1><strong>By Hod</strong></h1>
                <%
//                String sender = request.getParameter("sender"); 
                List<NoticeDto> listOfUsers=udao.getAllStudentData("hod");
                Iterator<NoticeDto> itr = listOfUsers.iterator();
                
             while(itr.hasNext())
             {
	      NoticeDto user = itr.next();
	     %>
	  
            <p><%=user.getMessage() %></p>
           
           <%
             }
           %>
            </div>
        </section>
         <section>
            <div id="Paris" class="tabcontent">
                <h1><strong>By Faculty</strong></h1>
                 <%
                 listOfUsers=udao.getAllStudentData("faculty");
                 itr = listOfUsers.iterator();
                
             while(itr.hasNext())
             {
	      NoticeDto user = itr.next();
	     %>
	  
            <p><%=user.getMessage() %></p>

           <%
             }
           %>
                
            </div>
        </section>
         <script>
            function openCity(evt, cityName) {
                var i, tabcontent, tablinks;
                tabcontent = document.getElementsByClassName("tabcontent");
                for (i = 0; i < tabcontent.length; i++) {
                    tabcontent[i].style.display = "none";
                }
                tablinks = document.getElementsByClassName("tablinks");
                for (i = 0; i < tablinks.length; i++) {
                    tablinks[i].className = tablinks[i].className.replace(" active", "");
                }
                document.getElementById(cityName).style.display = "block";
                evt.currentTarget.className += " active";
            }

            // Get the element with id="defaultOpen" and click on it
            document.getElementById("defaultOpen").click();
        </script>
    </body>
</html>
