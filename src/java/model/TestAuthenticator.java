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
public class TestAuthenticator {
    public boolean isLogin(AdminDto user)
	{
		String tablePassword="";
		String id=user.getAdminid();
		String password=user.getPassword();
                String category=user.getCategory();
		if(category.equals("admin"))
                {
                try
		{
			Statement st = DbConnector.getStatement();
			
			String query = "Select password from admin where adminid = '"+id+"'";
			System.out.println(query);
			
			ResultSet rs = st.executeQuery(query);
			if(rs.next())
			{
				tablePassword=rs.getString(1);
			}
                        else return false;
		}
		catch(SQLException e)
		{
			System.out.println(e);
		}
	    	
		
                }
                if(category.equals("hod"))
                {
                try
		{
			Statement st = DbConnector.getStatement();
			
			String query = "Select password from hod where hodid = '"+id+"'";
			System.out.println(query);
			
			ResultSet rs = st.executeQuery(query);
			if(rs.next())
			{
				tablePassword=rs.getString(1);
			}
                        else return false;
		}
		catch(SQLException e)
		{
			System.out.println(e);
		}
	    	
		
                }
                
                if(category.equals("faculty"))
                {
                try
		{
			Statement st = DbConnector.getStatement();
			
			String query = "Select password from faculty where facultyid = '"+id+"'";
			System.out.println(query);
			
			ResultSet rs = st.executeQuery(query);
			if(rs.next())
			{
				tablePassword=rs.getString(1);
			}
                        else return false;
		}
		catch(SQLException e)
		{
			System.out.println(e);
		}
	    } 	
                if(category.equals("student"))
                {
                try
		{
			Statement st = DbConnector.getStatement();
			
			String query = "Select password from student where enrollment = '"+id+"'";
			System.out.println(query);
			
			ResultSet rs = st.executeQuery(query);
			if(rs.next())
			{
				tablePassword=rs.getString(1);
			}
                        else return false;
		}
		catch(SQLException e)
		{
			System.out.println(e);
		}
	    	
		
                }
		
               
	 return id!=null && password!=null && !id.trim().equals("")  && password.equals(tablePassword);
        }
}
