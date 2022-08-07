
package dao;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import db.DbConnector;
import dto.FacultyDto;


/**
 *
 * @author vishu
 */
public class FacultyDao {
    public FacultyDto getUserData(String facultyid) {
    	FacultyDto user = new FacultyDto();
    	try {
    		Statement st=DbConnector.getStatement();
    		String query="select * from faculty where facultyid='"+facultyid+"'";
    		ResultSet rs = st.executeQuery(query);
    		if(rs.next())
    		{
    			
                        user.setFacultyid(rs.getString(1));
                        user.setName(rs.getString(2));
    			user.setQualification(rs.getString(3));
                        user.setPassword(rs.getString(4));
                        user.setDepartment(rs.getString(5));
                        user.setBloodgroup(rs.getString(6));
                        user.setAdharnumber(rs.getString(7));
    			user.setEmail(rs.getString(8));
    			user.setPhonenumber(rs.getString(9));
                        user.setJoiningyear(rs.getString(10));
                        user.setGender(rs.getString(11));
                        user.setDob(rs.getString(12));
    			user.setAddress(rs.getString(13));
                        user.setTeachexperience(rs.getString(14));
    			user.setDesignation(rs.getString(15));
                        user.setCategory(rs.getString(16));
    			
    		}
    	}
    	catch(Exception e)
    	{
    		System.out.println(e);
    	}
    	
    	return user;
    }
    
    public List<FacultyDto> getAllUserData(){
        List<FacultyDto> listOfUsers=new ArrayList<FacultyDto>();
    	
    	try {
    		Statement st=DbConnector.getStatement();
    		String query="select * from faculty";
    		ResultSet rs = st.executeQuery(query);
    		while(rs.next())
    		{
    			FacultyDto user =new FacultyDto();
                        user.setFacultyid(rs.getString(1));
                        user.setName(rs.getString(2));
    			user.setQualification(rs.getString(3));
                        user.setPassword(rs.getString(4));
                        user.setDepartment(rs.getString(5));
                        user.setBloodgroup(rs.getString(6));
                        user.setAdharnumber(rs.getString(7));
    			user.setEmail(rs.getString(8));
    			user.setPhonenumber(rs.getString(9));
                        user.setJoiningyear(rs.getString(10));
                        user.setGender(rs.getString(11));
                        user.setDob(rs.getString(12));
    			user.setAddress(rs.getString(13));
                        user.setTeachexperience(rs.getString(14));
    			user.setDesignation(rs.getString(15));
                        user.setCategory(rs.getString(16));
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

