<%-- 
    Document   : complainByStudent
    Created on : Mar 1, 2022, 2:46:08 PM
    Author     : vishu
--%>

<%@page import="java.util.Iterator"%>
<%@page import="dto.ComplainDto"%>
<%@page import="java.util.List"%>
<%@page import="dao.ComplainDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           ComplainDao udao = new ComplainDao();
           List<ComplainDto> listOfUsers=udao.getAllUserData("student");
           Iterator<ComplainDto> itr = listOfUsers.iterator();
           listOfUsers=udao.getResponse(1);
            itr = listOfUsers.iterator();
        %>
         <form action="Complain" method="post">
          
           <input type="text" hidden="" name="sender" value="student">
           <input type="text" hidden="" name="receiver" value="hod">
          <label for="complain">Review of W3Schools:</label>
          <textarea id="w3review" name="complain" rows="4" cols="50">
            you are At w3schools.com you will learn how to make a website. They offer free tutorials in all web development technologies.
          </textarea>
           <br><br>
          <input type="submit" value="Submit">
       </form>
         <h2>Responses</h2>
           <%
      while(itr.hasNext())
       {
	   ComplainDto user = itr.next();
	 %>
	  
         <p><%=user.getReply() %>
         
         </p>
         

  <%
        }
  %>

         
    </body>
</html>
