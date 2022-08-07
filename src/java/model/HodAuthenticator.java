package model;
import db.DbConnector;
import dto.HodDto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author vishu
 */
public class HodAuthenticator {
    public void isRegister(HodDto user)
	{
	   	
	String hodid = user.getHodid();
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
			
			String query = "insert into hod values('"+hodid+"','"+name+"','"+qualification+"','"+password+"','"+department+"','"+bloodgroup+"','"+adharnumber+"','"+email+"','"+phonenumber+"','"+joiningyear+"','"+gender+"','"+dob+"','"+address+"','"+teachexperience+"','"+designation+"','"+category+"')";
			System.out.println(query);
			
			 st.executeUpdate(query);
			
		}
		catch(SQLException e)
		{
			System.out.println(e);
		}
			 
		
	}
    public void isDelete(HodDto user)
	{
	   	
	String hodid = user.getHodid();
       
       
		
		try
		{
			Statement st = DbConnector.getStatement();
			
			String query = "delete from hod where hodid='"+hodid+"'";
			System.out.println(query);
			
			 st.executeUpdate(query);
			
		}
		catch(SQLException e)
		{
			System.out.println(e);
		}
			 
		
	}
    public void isUpdate(HodDto user)
	{
	   	
	String hodid = user.getHodid();
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
			pst=con.prepareStatement("update hod set hodid=?,name=?,qualification=?,password=?,department=?,bloodgroup=?,adharnumber=?,email=?,phonenumber=?,joiningyear=?,gender=?,dob=?,address=?,teachexperience=?,designation=?,category=? where hodid=?");
                        pst.setString(1,hodid);
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
                         pst.setString(17,hodid);
                        
			 pst.executeUpdate();
			
		}
		catch(SQLException e)
		{
			System.out.println(e);
		}
			 
		
	}
  
}
