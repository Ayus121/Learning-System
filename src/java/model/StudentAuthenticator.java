
package model;

import db.DbConnector;
import dto.StudentDto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;


public class StudentAuthenticator {
    public void isRegister(StudentDto user)
	{
	   	
	String enrollment = user.getEnrollment();
        String name = user.getName();
        String fathername = user.getFathername();
        String password =  user.getPassword();
        String branch =   user.getBranch();
        String bloodgroup =   user.getBloodgroup();
        String adharnumber =    user.getAdharnumber();
        String email =user.getEmail();
        String phonenumber =user.getPhonenumber();
        String admissionyear = user.getAdmissionyear();
        String gender =  user.getGender();
        String dob =   user.getDob();
        String city =user.getCity();
       
		
		try
		{
			Statement st = DbConnector.getStatement();
			
			String query = "insert into student values('"+enrollment+"','"+name+"','"+fathername+"','"+password+"','"+branch+"','"+bloodgroup+"','"+adharnumber+"','"+email+"','"+phonenumber+"','"+admissionyear+"','"+gender+"','"+dob+"','"+city+"')";
			System.out.println(query);
			
			 st.executeUpdate(query);
			
		}
		catch(SQLException e)
		{
			System.out.println(e);
		}
			 
		
	}
     public void isDelete(StudentDto user)
	{
	   	
	String enrollment = user.getEnrollment();
       
       
		
		try
		{
			Statement st = DbConnector.getStatement();
			
			String query = "delete from student where enrollment='"+enrollment+"'";
			System.out.println(query);
			
			 st.executeUpdate(query);
			
		}
		catch(SQLException e)
		{
			System.out.println(e);
		}
			 
		
	}
      public void isUpdate(StudentDto user)
	{
	   	
	String enrollment = user.getEnrollment();
        String name = user.getName();
        String fathername = user.getFathername();
        String password =  user.getPassword();
        String branch =   user.getBranch();
        String bloodgroup =   user.getBloodgroup();
        String adharnumber =    user.getAdharnumber();
        String email =user.getEmail();
        String phonenumber =user.getPhonenumber();
        String admissionyear = user.getAdmissionyear();
        String gender =  user.getGender();
        String dob =   user.getDob();
        String city =user.getCity();
       
		
		try
		{
			PreparedStatement pst = null;
			Connection con=DbConnector.getConnection();
//			String query = ;
//			System.out.println(query);
			pst=con.prepareStatement("update student set enrollment=?,name=?,fathername=?,password=?,branch=?,bloodgroup=?,adharnumber=?,email=?,phonenumber=?,admissionyear=?,gender=?,dob=?,city=? where enrollment=?");
                        pst.setString(1,enrollment);
                        pst.setString(2,name);
                        pst.setString(3,fathername);
                        pst.setString(4,password);
                        pst.setString(5,branch);
                        pst.setString(6,bloodgroup);
                        pst.setString(7,adharnumber);
                        pst.setString(8,email);
                        pst.setString(9,phonenumber);
                        pst.setString(10,admissionyear);
                        pst.setString(11,gender);
                        pst.setString(12,dob);
                        pst.setString(13,city);
                        pst.setString(14,enrollment);
                        
			 pst.executeUpdate();
			
		}
		catch(SQLException e)
		{
			System.out.println(e);
		}
			 
		
	}
  
}
