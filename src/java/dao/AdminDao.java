
package dao;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import db.DbConnector;
import dto.AdminDto;



/**
 *
 * @author vishu
 */
public class AdminDao {
    public AdminDto getUserData() {
    	AdminDto user = new AdminDto();
    	try {
    		Statement st=DbConnector.getStatement();
    		String query="select * from admin ";
    		ResultSet rs = st.executeQuery(query);
    		if(rs.next())
    		{
    			
                        user.setAdminid(rs.getString(1));
                        user.setName(rs.getString(2));
                        user.setPassword(rs.getString(3));
                        user.setQualification(rs.getString(4));
                        user.setAdharnumber(rs.getString(5));
    			user.setEmail(rs.getString(6));
    			user.setPhonenumber(rs.getString(7));
                        user.setGender(rs.getString(8));
                        user.setDob(rs.getString(9));
    			user.setAddress(rs.getString(10));
                        user.setExperience(rs.getString(11));
    			user.setDesignation(rs.getString(12));
                        user.setBloodgroup(rs.getString(13));
    			
    		}
    	}
    	catch(Exception e)
    	{
    		System.out.println(e);
    	}
    	
    	return user;
    }
}