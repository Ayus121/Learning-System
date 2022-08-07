package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;


public class DbConnector {
 
	static Connection con = null;
	static Statement st = null;
        static PreparedStatement pst=null;
	
	static 
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");  
            System.out.println("Driver Loaded");
			
			
		    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/collegemgmt","root","root");
                    System.out.println("Connected");
            
            st = con.createStatement();
        
		}
		catch(ClassNotFoundException | SQLException e)
        {
            System.out.println(e);
        }
		
		
	}
	public static PreparedStatement getPreparedStatement()
	{
		return pst;
	}
        public static Statement getStatement()
	{
		return st;
	}
	public static Connection getConnection()
	{
		return con;
	}
}
