package controller;

import dto.FacultyDto;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.FacultyAuthenticator;



public class AddFaculty extends HttpServlet {
	
       
	
        @Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String facultyid=request.getParameter("facultyid");
		String name=request.getParameter("name");
		String qualification=request.getParameter("qualification");
                String password=request.getParameter("password");
                String department=request.getParameter("department");
                String bloodgroup=request.getParameter("bloodgroup");
                String adharnumber=request.getParameter("adharnumber");
                String email=request.getParameter("email");
		String phonenumber=request.getParameter("phonenumber");
                String joiningyear=request.getParameter("joiningyear");
                String gender=request.getParameter("gender");
                String dob=request.getParameter("dob");
		String address=request.getParameter("address");
                String teachexperience=request.getParameter("teachexperience");
                String designation=request.getParameter("designation");
                String category=request.getParameter("category");
		
        
        
        FacultyDto user = new FacultyDto();
        
         user.setFacultyid(facultyid);
        user.setName(name);
         user.setQualification(qualification);
          user.setPassword(password);
           user.setDepartment(department);
           user.setBloodgroup(bloodgroup);
            user.setAdharnumber(adharnumber);
        user.setEmail(email);
        user.setPhonenumber(phonenumber);
         user.setJoiningyear(joiningyear);
          user.setGender(gender);
           user.setDob(dob);
        user.setAddress(address);
        user.setTeachexperience(teachexperience);
        user.setDesignation(designation);
        user.setCategory(category);
       
        
        FacultyAuthenticator authenticator = new FacultyAuthenticator();
         authenticator.isRegister(user);
         
         HttpSession session = request.getSession(true);
         session.setAttribute("facultyid",facultyid);
         response.sendRedirect("admin.jsp");
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
