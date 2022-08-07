package model;
import db.DbConnector;
import dto.ComplainDto;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author vishu
 */
public class ComplainAuthenticator {
    public void isRegister(ComplainDto user)
	{
	 
        int idn=0;
        String sender = user.getSender();
        String receiver = user.getReceiver();
	String complain = user.getComplain();
       	
		try
		{
			Statement st = DbConnector.getStatement();
			
			String query = "insert into complain (idn,sender,receiver,complain) values('"+idn+"','"+sender+"','"+receiver+"','"+complain+"')";
			System.out.println(query);
			
			 st.executeUpdate(query);
			
		}
		catch(SQLException e)
		{
			System.out.println(e);
		}
			 
		
	}
     public void isReply(ComplainDto user)
	{
	 
        String idn = user.getIdn();
        String reply = user.getReply();

       	
		try
		{
			Statement st = DbConnector.getStatement();
			
			String query = "update complain set reply = '"+reply+"' where idn='"+idn+"' ";
			System.out.println(query);
			
			 st.executeUpdate(query);
			
		}
		catch(SQLException e)
		{
			System.out.println(e);
		}
			 
		
	}
}