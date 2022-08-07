package model;
import java.sql.ResultSet;
import java.sql.Statement;
import dto.AdminDto;
import db.DbConnector;
import java.sql.SQLException;
/**
 *
 * @author vishu
 */
public class LoginAuthenticator {
    public boolean isLogin(AdminDto user)
	{
		String tablePassword="";
		String adminid=user.getAdminid();
		String password=user.getPassword();
		
		try
		{
			Statement st = DbConnector.getStatement();
			
			String query = "Select password from admin where adminid = '"+adminid+"'";
			System.out.println(query);
			
			ResultSet rs = st.executeQuery(query);
			if(rs.next())
			{
				tablePassword=rs.getString(1);
			}
		}
		catch(SQLException e)
		{
			System.out.println(e);
		}
	    	
		 return adminid!=null && password!=null && !adminid.trim().equals("")  && password.equals(tablePassword);
	}
}
