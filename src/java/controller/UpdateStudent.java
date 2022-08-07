package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.StudentDto;
import model.StudentAuthenticator;



public class UpdateStudent extends HttpServlet {
	
       
	
        @Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String enrollment=request.getParameter("enrollment");
		String name=request.getParameter("name");
		String fathername=request.getParameter("fathername");
                String password=request.getParameter("password");
                String branch=request.getParameter("branch");
                String bloodgroup=request.getParameter("bloodgroup");
                String adharnumber=request.getParameter("adharnumber");
                String email=request.getParameter("email");
		String phonenumber=request.getParameter("phonenumber");
                String admissionyear=request.getParameter("admissionyear");
                String gender=request.getParameter("gender");
                String dob=request.getParameter("dob");
		String city=request.getParameter("city");
		
        
        
        StudentDto user = new StudentDto();
        
         user.setEnrollment(enrollment);
        user.setName(name);
         user.setFathername(fathername);
          user.setPassword(password);
           user.setBranch(branch);
           user.setBloodgroup(bloodgroup);
            user.setAdharnumber(adharnumber);
        user.setEmail(email);
        user.setPhonenumber(phonenumber);
         user.setAdmissionyear(admissionyear);
          user.setGender(gender);
           user.setDob(dob);
        user.setCity(city);
       
        
        StudentAuthenticator authenticator = new StudentAuthenticator();
         authenticator.isUpdate(user);
         
          request.setAttribute("enrollment", enrollment);
         request.getRequestDispatcher("profileStudent.jsp").forward(request, response);
         
//         HttpSession session = request.getSession(true);
//         session.setAttribute("enrollment",enrollment);
//         response.sendRedirect("studentList.jsp");
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
