
package dao;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import db.DbConnector;
import dto.NoticeDto;


/**
 *
 * @author vishu
 */
public class NoticeDao {
    public  List<NoticeDto> getAllStudentData(String sender)
    {
       List<NoticeDto> listOfUsers = new ArrayList<NoticeDto>();
       try{
            
           Statement st =DbConnector.getStatement();
           String query = "SELECT message FROM notice where sender='"+sender+"' && receiver='student' order by idn desc";
             
           ResultSet rs = st.executeQuery(query);
           while(rs.next())
           {
                        NoticeDto user = new NoticeDto();
//                        
//                        user.setIdn(rs.getString(1));
//                        user.setSender(rs.getString(2));
//    			  user.setReceiver(rs.getString(3));
                          user.setMessage(rs.getString(1));
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
 
   public List<NoticeDto> getAllUserData(String receiver)
   {
      
       List<NoticeDto> listOfUsers = new ArrayList<NoticeDto>();
       try{
            
           Statement st =DbConnector.getStatement();
           String query = "SELECT message FROM notice where receiver='"+receiver+"' order by idn desc";
             
           ResultSet rs = st.executeQuery(query);
           while(rs.next())
           {
                        NoticeDto user = new NoticeDto();
//                        
//                        user.setIdn(rs.getString(1));
//                        user.setSender(rs.getString(2));
//    			  user.setReceiver(rs.getString(3));
                          user.setMessage(rs.getString(1));
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

