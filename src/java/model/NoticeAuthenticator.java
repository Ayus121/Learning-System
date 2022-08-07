package model;
import db.DbConnector;
import dto.NoticeDto;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author vishu
 */
public class NoticeAuthenticator {
    public void isRegister(NoticeDto user)
	{
	 
        int idn=0;
        String sender = user.getSender();
        String receiver = user.getReceiver();
	String message = user.getMessage();
       	
		try
		{
			Statement st = DbConnector.getStatement();
			
			String query = "insert into notice values('"+idn+"','"+sender+"','"+receiver+"','"+message+"','"+message+"')";
			System.out.println(query);
			
			 st.executeUpdate(query);
			
		}
		catch(SQLException e)
		{
			System.out.println(e);
		}
			 
		
	}
}