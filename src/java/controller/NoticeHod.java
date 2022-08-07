package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;


import dto.NoticeDto;
import model.NoticeAuthenticator;



public class NoticeHod extends HttpServlet {
	
       
	
        @Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
                String sender=request.getParameter("sender");
                String receiver=request.getParameter("receiver");
		String notice=request.getParameter("notice");
                

        NoticeDto user = new NoticeDto();
         user.setSender(sender);
         user.setReceiver(receiver);
         user.setMessage(notice);
        
        
        NoticeAuthenticator authenticator = new NoticeAuthenticator();
         authenticator.isRegister(user);
         
//         HttpSession session = request.getSession(true);
//         session.setAttribute("enrollment",enrollment);
         if(sender.equals("hod"))
         response.sendRedirect("hod.jsp");
         
         else
         response.sendRedirect("faculty.jsp");
     
	}

}
