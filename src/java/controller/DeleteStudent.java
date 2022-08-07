package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;

import dto.StudentDto;
import model.StudentAuthenticator;



public class DeleteStudent extends HttpServlet {
	
       
	
        @Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String enrollment=request.getParameter("enrollment");
	
		
        
        
        StudentDto user = new StudentDto();
        
         user.setEnrollment(enrollment);
        
       
        
        StudentAuthenticator authenticator = new StudentAuthenticator();
         authenticator.isDelete(user);
         
//         HttpSession session = request.getSession(true);
//         session.setAttribute("enrollment",enrollment);
         response.sendRedirect("checkAllStudent.jsp");
      /*  if(login)
        {
        	 HttpSession session = request.getSession(true);
             session.setAttribute("name",name);
              response.sendRedirect("home.jsp");
        }
        else
        {
            response.sendRedirect("register.html");
        }*/
	}

}
