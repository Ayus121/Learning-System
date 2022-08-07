package model;
import db.DbConnector;
import dto.FacultyDto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author vishu
 */
public class FacultyAuthenticator {
    public void isRegister(FacultyDto user)
	{
	   	
	String facultyid = user.getFacultyid();
        String name = user.getName();
        String qualification = user.getQualification();
        String password =  user.getPassword();
        String department =   user.getDepartment();
        String bloodgroup =   user.getBloodgroup();
        String adharnumber =    user.getAdharnumber();
        String email =user.getEmail();
        String phonenumber =user.getPhonenumber();
        String joiningyear = user.getJoiningyear();
        String gender =  user.getGender();
        String dob =   user.getDob();
        String address =user.getAddress();
        String teachexperience =   user.getTeachexperience();
        String designation =   user.getDesignation();
        String category =   user.getCategory();
       
		
		try
		{
			Statement st = DbConnector.getStatement();
			
			String query = "insert into faculty values('"+facultyid+"','"+name+"','"+qualification+"','"+password+"','"+department+"','"+bloodgroup+"','"+adharnumber+"','"+email+"','"+phonenumber+"','"+joiningyear+"','"+gender+"','"+dob+"','"+address+"','"+teachexperience+"','"+designation+"','"+category+"')";
			System.out.println(query);
			
			 st.executeUpdate(query);
			
		}
		catch(SQLException e)
		{
			System.out.println(e);
		}
			 
		
	}
    public void isDelete(FacultyDto user)
	{
	   	
	String facultyid = user.getFacultyid();
       
       
		
		try
		{
			Statement st = DbConnector.getStatement();
			
			String query = "delete from faculty where facultyid='"+facultyid+"'";
			System.out.println(query);
			
			 st.executeUpdate(query);
			
		}
		catch(SQLException e)
		{
			System.out.println(e);
		}
			 
		
	}
    public void isUpdate(FacultyDto user)
	{
	   	
	String facultyid = user.getFacultyid();
        String name = user.getName();
        String qualification = user.getQualification();
        String password =  user.getPassword();
        String department =   user.getDepartment();
        String bloodgroup =   user.getBloodgroup();
        String adharnumber =    user.getAdharnumber();
        String email =user.getEmail();
        String phonenumber =user.getPhonenumber();
        String joiningyear = user.getJoiningyear();
        String gender =  user.getGender();
        String dob =   user.getDob();
        String address =user.getAddress();
        String teachexperience =   user.getTeachexperience();
        String designation =   user.getDesignation();
        String category =   user.getCategory();
       
		
		try
		{
			PreparedStatement pst = null;
			Connection con=DbConnector.getConnection();
//			String query = ;
//			System.out.println(query);
			pst=con.prepareStatement("update faculty set facultyid=?,name=?,qualification=?,password=?,department=?,bloodgroup=?,adharnumber=?,email=?,phonenumber=?,joiningyear=?,gender=?,dob=?,address=?,teachexperience=?,designation=?,category=? where facultyid=?");
                        pst.setString(1,facultyid);
                        pst.setString(2,name);
                        pst.setString(3,qualification);
                        pst.setString(4,password);
                        pst.setString(5,department);
                        pst.setString(6,bloodgroup);
                        pst.setString(7,adharnumber);
                        pst.setString(8,email);
                        pst.setString(9,phonenumber);
                        pst.setString(10,joiningyear);
                        pst.setString(11,gender);
                        pst.setString(12,dob);
                        pst.setString(13,address);
                        pst.setString(14,teachexperience);
                        pst.setString(15,designation);
                        pst.setString(16,category);
                         pst.setString(17,facultyid);
                        
			 pst.executeUpdate();
			
		}
		catch(SQLException e)
		{
			System.out.println(e);
		}
			 
		
	}
  
}
