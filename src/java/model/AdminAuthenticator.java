/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.DbConnector;
import dto.AdminDto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author vishu
 */
public class AdminAuthenticator {
    public void isUpdate(AdminDto user)
	{
	   	
	String adminid = user.getAdminid();
        String name = user.getName();
        String qualification = user.getQualification();
        String password =  user.getPassword();
       
        String bloodgroup =   user.getBloodgroup();
        String adharnumber =    user.getAdharnumber();
        String email =user.getEmail();
        String phonenumber =user.getPhonenumber();
        
        String gender =  user.getGender();
        String dob =   user.getDob();
        String address =user.getAddress();
        String experience =   user.getExperience();
        String designation =   user.getDesignation();
       
       
		
		try
		{
			PreparedStatement pst = null;
			Connection con=DbConnector.getConnection();
//			String query = ;
//			System.out.println(query);
			pst=con.prepareStatement("update admin set adminid=?,name=?,password=?,qualification=?,adharnumber=?,email=?,phonenumber=?,gender=?,dob=?,address=?,experience=?,designation=?,bloodgroup=? where adminid=?");
                        pst.setString(1,adminid);
                        pst.setString(2,name);
                        pst.setString(3,password);
                        pst.setString(4,qualification);
                        
                        
                       
                        pst.setString(5,adharnumber);
                        pst.setString(6,email);
                        pst.setString(7,phonenumber);
                        pst.setString(8,gender);
                        
                        pst.setString(9,dob);
                        pst.setString(10,address);
                        pst.setString(11,experience);
                        pst.setString(12,designation);
                        
                         pst.setString(13,bloodgroup);
                         pst.setString(14,adminid);
                        
			 pst.executeUpdate();
			
		}
		catch(SQLException e)
		{
			System.out.println(e);
		}
			 
		
	}
  
}
