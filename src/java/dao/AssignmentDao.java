package dao;

import java.util.ArrayList;
import java.util.List;

import db.DbConnector;
import dto.AssignmentDto;
import java.sql.ResultSet;
import java.sql.Statement;


/**
 *
 * @author vishu
 */
public class AssignmentDao {
     public  List<AssignmentDto> getCourseData(String facultyid)
    {
       List<AssignmentDto> listOfUsers = new ArrayList<AssignmentDto>();
       try{
            
           Statement st =DbConnector.getStatement();
           String query = "SELECT f.name, c.course,c.branch FROM faculty f LEFT JOIN course c ON f.facultyid = c.facultyid WHERE f.facultyid='"+facultyid+"'";
             
           ResultSet rs = st.executeQuery(query);
           while(rs.next())
           {
                        AssignmentDto user = new AssignmentDto();
//                        
//                        user.setIdn(rs.getString(1));
//                        user.setSender(rs.getString(2));
//    			  user.setReceiver(rs.getString(3));
                          user.setName(rs.getString(1));
                        user.setCourse(rs.getString(2));
                        user.setBranch(rs.getString(3));
                        listOfUsers.add(user);
           }
       }
       catch(Exception e)
       {
           System.out.println(e);
       }
     return listOfUsers;
  }
    public  List<AssignmentDto> getCourseData1(String enrollment,String branch)
    {
       List<AssignmentDto> listOfUsers = new ArrayList<AssignmentDto>();
       try{
            
           Statement st =DbConnector.getStatement();
           String query = "SELECT s.name, c.course,c.branch FROM faculty s LEFT JOIN course c ON s.facultyid = c.facultyid WHERE c.enrollment='"+enrollment+"' && c.branch='"+branch+"'";
             
           ResultSet rs = st.executeQuery(query);
           while(rs.next())
           {
                        AssignmentDto user = new AssignmentDto();
//                        
//                        user.setIdn(rs.getString(1));
//                        user.setSender(rs.getString(2));
//    			  user.setReceiver(rs.getString(3));
                          user.setName(rs.getString(1));
                        user.setCourse(rs.getString(2));
                        user.setBranch(rs.getString(3));
                        listOfUsers.add(user);
           }
       }
       catch(Exception e)
       {
           System.out.println(e);
       }
     return listOfUsers;
  }
    public  List<AssignmentDto> getAllAssignment()
    {
       List<AssignmentDto> listOfUsers = new ArrayList<AssignmentDto>();
       try{
            
           Statement st =DbConnector.getStatement();
           String query = "select * from assignment order by idn desc";
             
           ResultSet rs = st.executeQuery(query);
           while(rs.next())
           {
                        AssignmentDto user = new AssignmentDto();
//                        
                        user.setIdn(rs.getInt(1));
                        user.setCourse(rs.getString(2));
    			  user.setTitle(rs.getString(3));
                          user.setFilename(rs.getString(4));
                         user.setFacultyid(rs.getString(5));
                        
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
