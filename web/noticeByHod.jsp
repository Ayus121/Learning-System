<%-- 
    Document   : SendNoticeHod
    Created on : Feb 17, 2022, 10:55:10 PM
    Author     : vishu
--%>

<%@page import="dto.HodDto"%>
<%@page import="dao.HodDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>JSP Page</title>
    </head>
    <body>
        <%
           String hodid=request.getParameter("hodid");
           HodDao udao = new HodDao();
           HodDto user=udao.getUserData(hodid);
        
        %>
       <h1>Hello World!  <%=hodid %></h1>
      
            <div class="tab">
            <button class="tablinks" onclick="openCity(event, 'London')" id="defaultOpen">Overview</button>
            <button class="tablinks" onclick="openCity(event, 'Paris')">Vision and Mission </button>
            
        </div>

        <!-- Tabs for Overview -->

        <section>
            <div id="London" class="tabcontent">
                <h3><strong>Faculty</strong></h3>
                 <form action="NoticeHod" method="post">
          
           <input type="text" hidden="" name="sender" value="<%=user.getCategory() %>">
           <input type="text" hidden="" name="receiver" value="faculty">
          <label for="notice">Review of W3Schools:</label>
          <textarea id="w3review" name="notice" rows="4" cols="50">
            you are At w3schools.com you will learn how to make a website. They offer free tutorials in all web development technologies.
          </textarea>
          <br><br>
          <input type="submit" value="Submit">
       </form>
            </div>
        </section>
         <section>
            <div id="Paris" class="tabcontent">
                <h3><strong>Student</strong></h3>
                <form action="NoticeHod" method="post">
          
           <input type="text" hidden="" name="sender" value="<%=user.getCategory() %>">
           <input type="text" hidden="" name="receiver" value="student">
          <label for="notice">Review of W3Schools:</label>
          <textarea id="w3review" name="notice" rows="4" cols="50">
            At w3schools.com you will learn how to make a website. They offer free tutorials in all web development technologies.
          </textarea>
          <br><br>
          <input type="submit" value="Submit">
       </form>
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
