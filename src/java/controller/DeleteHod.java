package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;

import dto.HodDto;
import model.HodAuthenticator;



public class DeleteHod extends HttpServlet {
	
       
	
        @Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String hodid=request.getParameter("hodid");
	
		
        
        
        HodDto user = new HodDto();
        
         user.setHodid(hodid);
        
       
        
        HodAuthenticator authenticator = new HodAuthenticator();
         authenticator.isDelete(user);
         
//         HttpSession session = request.getSession(true);
//         session.setAttribute("enrollment",enrollment);
           response.sendRedirect("checkAllHod.jsp");
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
