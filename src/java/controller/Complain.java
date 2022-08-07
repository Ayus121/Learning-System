package controller;

import dto.ComplainDto;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.ComplainAuthenticator;
//import javax.servlet.http.HttpSession;





public class Complain extends HttpServlet {
	
       
	
        @Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
                String sender=request.getParameter("sender");
                String receiver=request.getParameter("receiver");
		String complain=request.getParameter("complain");
                String reply=request.getParameter("reply");
                String idn=request.getParameter("idn");
                

        ComplainDto user = new ComplainDto();
         user.setSender(sender);
         user.setReceiver(receiver);
         user.setComplain(complain);
         user.setReply(reply);
         user.setIdn(idn);
        
        ComplainAuthenticator authenticator = new ComplainAuthenticator();
        if(receiver.equals("hod"))
        {
          authenticator.isReply(user);
          response.sendRedirect("hod.jsp");
        }
        else
        {
         authenticator.isRegister(user);
         if(sender.equals("student.jsp"))
         response.sendRedirect("student.jsp");
//         
         else if(sender.equals("faculty.jsp"))
         response.sendRedirect("faculty.jsp");
        }
     
    }

}
