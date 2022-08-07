
package dao;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import db.DbConnector;
import dto.ComplainDto;



/**
 *
 * @author vishu
 */
public class ComplainDao {
    public ComplainDto getUserData(String idn) {
    	ComplainDto user = new ComplainDto();
    	try {
    		Statement st=DbConnector.getStatement();
    		String query="select * from complain where idn='"+idn+"'";
    		ResultSet rs = st.executeQuery(query);
    		if(rs.next())
    		{
    			 user.setIdn(rs.getString(1));
                        user.setComplain(rs.getString(4));
    			
    		}
    	}
    	catch(Exception e)
    	{
    		System.out.println(e);
    	}
    	
    	return user;
    }
    
    public  List<ComplainDto> getAllUserData(String sender)
    {
       List<ComplainDto> listOfUsers = new ArrayList<ComplainDto>();
       try{
            
           Statement st =DbConnector.getStatement();
           String query = "SELECT complain,idn FROM complain where sender='"+sender+"' && receiver='hod' order by idn desc";
             
           ResultSet rs = st.executeQuery(query);
           while(rs.next())
           {
                        ComplainDto user = new ComplainDto();
//                        
                         user.setIdn(rs.getString(2));
//                        user.setSender(rs.getString(2));
//    			  user.setReceiver(rs.getString(3));
                          user.setComplain(rs.getString(1));
//                        user.setReply(rs.getString(3));
                        
                        listOfUsers.add(user);
           }
       }
       catch(Exception e)
       {
           System.out.println(e);
       }
     return listOfUsers;
  }
 
   public List<ComplainDto> getResponse(int idn)
   {
      
       List<ComplainDto> listOfUsers = new ArrayList<ComplainDto>();
       try{
            
           Statement st =DbConnector.getStatement();
           String query = "SELECT reply FROM notice where receiver='"+idn+"' order by idn desc";
             
           ResultSet rs = st.executeQuery(query);
           while(rs.next())
           {
                        ComplainDto user = new ComplainDto();
//                        
                        user.setIdn(rs.getString(2));
//                        user.setSender(rs.getString(2));
//    			  user.setReceiver(rs.getString(3));
                          user.setReply(rs.getString(1));
//                        user.setResponse(rs.getString(5));
                        
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

