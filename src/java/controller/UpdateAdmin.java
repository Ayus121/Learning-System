package controller;

import dto.AdminDto;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.AdminAuthenticator;




public class UpdateAdmin extends HttpServlet {
	
       
	
        @Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String adminid=request.getParameter("adminid");
		String name=request.getParameter("name");
		String qualification=request.getParameter("qualification");
                String password=request.getParameter("password");
                
                String bloodgroup=request.getParameter("bloodgroup");
                String adharnumber=request.getParameter("adharnumber");
                String email=request.getParameter("email");
		String phonenumber=request.getParameter("phonenumber");
               
                String gender=request.getParameter("gender");
                String dob=request.getParameter("dob");
		String address=request.getParameter("address");
                String experience=request.getParameter("experience");
                String designation=request.getParameter("designation");
                
		
        
        
        AdminDto user = new AdminDto();
        
         user.setAdminid(adminid);
        user.setName(name);
         user.setQualification(qualification);
          user.setPassword(password);
           
           user.setBloodgroup(bloodgroup);
            user.setAdharnumber(adharnumber);
        user.setEmail(email);
        user.setPhonenumber(phonenumber);
         
          user.setGender(gender);
           user.setDob(dob);
        user.setAddress(address);
        user.setExperience(experience);
        user.setDesignation(designation);
       
       
        
        AdminAuthenticator authenticator = new AdminAuthenticator();
         authenticator.isUpdate(user);
         
        request.setAttribute("adminid", adminid);
         request.getRequestDispatcher("profileAdmin.jsp").forward(request, response);
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
