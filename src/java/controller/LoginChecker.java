package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dto.AdminDto;
import javax.servlet.http.HttpSession;
import model.TestAuthenticator;
/**
 *
 * @author vishu
 */
public class LoginChecker extends HttpServlet {

   @Override
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	String id=request.getParameter("id");
        String password=request.getParameter("password");
        String category=request.getParameter("category");
        
        AdminDto users = new AdminDto();
        
        users.setAdminid(id);
        users.setPassword(password);
        users.setCategory(category);
        
        TestAuthenticator authenticator = new TestAuthenticator();
        boolean login = authenticator.isLogin(users);
        
        if(login)
        {
             HttpSession session = request.getSession(true);
             session.setAttribute("id",id);
             
             if(category.equals("admin"))
             response.sendRedirect("admin.jsp");
             
             else if(category.equals("hod"))
              response.sendRedirect("hod.jsp");
             
             else if(category.equals("faculty"))
              response.sendRedirect("faculty.jsp");
             
             else if(category.equals("student"))
                 response.sendRedirect("student.jsp");
        }
        else
        {
            response.sendRedirect("login.html");
        }
	}
}
