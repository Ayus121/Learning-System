<%-- 
    Document   : receiveNoticeStudent
    Created on : Feb 26, 2022, 8:57:06 PM
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
           String receiver = request.getParameter("receiver");
           NoticeDao udao = new NoticeDao();
           List<NoticeDto> listOfUsers=udao.getAllUserData(receiver);
           Iterator<NoticeDto> itr = listOfUsers.iterator();
        %>
        
    <h1>Hello World!</h1>
        <%
      while(itr.hasNext())
       {
	   NoticeDto user = itr.next();
	 %>
	  
     <p><%=user.getMessage() %></p>

  <%
        }
  %>

    </body>
</html>
