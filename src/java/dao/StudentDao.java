
package dao;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import db.DbConnector;
import dto.StudentDto;
/**
 *
 * @author vishu
 */
public class StudentDao {
    public StudentDto getUserData(String enrollment) {
    	StudentDto user = new StudentDto();
    	try {
    		Statement st=DbConnector.getStatement();
    		String query="select * from student where enrollment='"+enrollment+"'";
    		ResultSet rs = st.executeQuery(query);
    		if(rs.next())
    		{
    			 user.setEnrollment(rs.getString(1));
                        user.setName(rs.getString(2));
    			user.setFathername(rs.getString(3));
                        user.setPassword(rs.getString(4));
                        user.setBranch(rs.getString(5));
                        user.setBloodgroup(rs.getString(6));
                        user.setAdharnumber(rs.getString(7));
    			user.setEmail(rs.getString(8));
    			user.setPhonenumber(rs.getString(9));
                        user.setAdmissionyear(rs.getString(10));
                        user.setGender(rs.getString(11));
                        user.setDob(rs.getString(12));
    			user.setCity(rs.getString(13));
    		}
    	}
    	catch(Exception e)
    	{
    		System.out.println(e);
    	}
    	
    	return user;
    }
    
     public List<StudentDto> getAllUserData() {
    	List<StudentDto> listOfUsers=new ArrayList<StudentDto>();
    	
    	try {
    		Statement st=DbConnector.getStatement();
    		String query="select * from student";
    		ResultSet rs = st.executeQuery(query);
    		while(rs.next())
    		{
    			StudentDto user =new StudentDto();
                        user.setEnrollment(rs.getString(1));
                        user.setName(rs.getString(2));
    			user.setFathername(rs.getString(3));
                        user.setPassword(rs.getString(4));
                        user.setBranch(rs.getString(5));
                        user.setBloodgroup(rs.getString(6));
                        user.setAdharnumber(rs.getString(7));
    			user.setEmail(rs.getString(8));
    			user.setPhonenumber(rs.getString(9));
                        user.setAdmissionyear(rs.getString(10));
                        user.setGender(rs.getString(11));
                        user.setDob(rs.getString(12));
    			user.setCity(rs.getString(13));
    			
    			listOfUsers.add(user);
    		}
    	}
    	catch(Exception e)
    	{
    		System.out.println(e);
    	}
    	return listOfUsers;
    }
}
