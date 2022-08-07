package controller;

import dto.AssignmentDto;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;


import java.io.FileOutputStream;
import java.io.InputStream;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;
import model.AssignmentAuthenticator;



@MultipartConfig
public class Assignment extends HttpServlet {
	
       
	
        @Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
                String facultyid=request.getParameter("facultyid");
                String course=request.getParameter("course");
                String title=request.getParameter("title");
		
                Part file = request.getPart("file");
                 
        String filename = file.getSubmittedFileName();
        System.out.println("submited file name is"+filename);
     
        String uploadpath="C:/Users/vishu/Documents/NetBeansProjects/InstituteWebsite/web/file/"+filename;
        System.out.println("upload path:"+uploadpath);
        
        try{
            
        FileOutputStream fos = new FileOutputStream(uploadpath);
        InputStream is = file.getInputStream();
        
        byte[] data = new byte[is.available()];
        is.read(data);
        fos.write(data);
        fos.close();
        }
        catch(Exception e)
        {
            System.out.println(e);
        }

        AssignmentDto user = new AssignmentDto();
        user.setFacultyid(facultyid);
//        
         user.setCourse(course);
         user.setTitle(title);
         user.setFilename(filename);
//         
//        
//        
        AssignmentAuthenticator authenticator = new AssignmentAuthenticator();
         authenticator.isRegister(user);  
//         
////         HttpSession session = request.getSession(true);
////         session.setAttribute("enrollment",enrollment);
//        request.setAttribute("course", course);
//         request.getRequestDispatcher("home.jsp").forward(request, response);
         
         response.sendRedirect("assignmentByFaculty.jsp");
         
         
     
	}

}
