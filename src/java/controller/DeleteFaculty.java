package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;

import dto.FacultyDto;
import model.FacultyAuthenticator;



public class DeleteFaculty extends HttpServlet {
	
       
	
        @Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String facultyid=request.getParameter("facultyid");
	
		
        
        
        FacultyDto user = new FacultyDto();
        
         user.setFacultyid(facultyid);
        
       
        
        FacultyAuthenticator authenticator = new FacultyAuthenticator();
         authenticator.isDelete(user);
         
//         HttpSession session = request.getSession(true);
//         session.setAttribute("enrollment",enrollment);
           response.sendRedirect("checkAllFaculty.jsp");
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
