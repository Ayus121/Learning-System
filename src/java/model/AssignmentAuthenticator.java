package model;
import db.DbConnector;
import dto.AssignmentDto;

import java.sql.SQLException;
import java.sql.Statement;


/**
 *
 * @author vishu
 */
public class AssignmentAuthenticator {
    public void isRegister(AssignmentDto user)
	{
	 
        int idn=0;
        String facultyid = user.getFacultyid();
        String course = user.getCourse();
	String title = user.getTitle();
        String filename = user.getFilename();
       	
		try
		{
			Statement st = DbConnector.getStatement();
			
			String query = "insert into assignment (idn,course,title,assignmentsent,facultyid) values ('"+idn+"','"+course+"','"+title+"','"+filename+"','"+facultyid+"')";
			System.out.println(query);
			
			 st.executeUpdate(query);
                        
                        
			
		
		}
		catch(SQLException e)
		{
			System.out.println(e);
		}
			 
		
	}
}