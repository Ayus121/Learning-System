
package dao;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import db.DbConnector;
import dto.HodDto;


/**
 *
 * @author vishu
 */
public class HodDao {
    public  HodDto getUserData(String hodid)
    {
        HodDto user = new HodDto();
       
       try{
           Statement st = DbConnector.getStatement();
           String query= "select * from hod where hodid='"+hodid+"'";
           ResultSet rs =st.executeQuery(query);
           if(rs.next())
           {
               
                        user.setHodid(rs.getString(1));
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
       catch(Exception e){
           System.out.println(e);
       }
      return user;
    }
    
   public List<HodDto> getAllUserData()
   {
       List<HodDto> listOfUsers = new ArrayList<HodDto>();
       try{
           Statement st =DbConnector.getStatement();
           String query = "select * from hod";
           ResultSet rs = st.executeQuery(query);
           while(rs.next())
           {
               HodDto user = new HodDto();
                        user.setHodid(rs.getString(1));
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

