/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import connection.MyConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Cart;
import model.Feedback;
import model.Place;
import model.Query;
import model.User;

/**
 *
 * @author Abhishek
 */
public class QueryDAO {
    
    
    
    
     public boolean addQuery(Query q)throws Exception
    {
         Connection con;
        PreparedStatement ps;
        String sql;
        
        sql="insert into query(userid,query) values(?,?)";
        con=MyConnection.getConnection();
        ps=con.prepareStatement(sql);
    ps.setInt(1,q.getUser().getUserid());
    ps.setString(2,q.getQuery());
	if(0<ps.executeUpdate())
	{
	return true;
	}    
        else return false;
            
    }
  
    
     
     
         public boolean addFeedbak(Feedback f)throws Exception
    {
         Connection con;
        PreparedStatement ps;
        String sql;
        
        sql="insert into feedback(userid,feedback,star) values(?,?,?)";
        con=MyConnection.getConnection();
        ps=con.prepareStatement(sql);
    ps.setInt(1,f.getUserid());
    ps.setString(2,f.getFeedback());
    ps.setString(3,f.getStar());
    
	if(0<ps.executeUpdate())
	{
	return true;
	}    
        else return false;
            
    }
  
    
    
         
         
       public List<Feedback> getAllFeedbacks() throws Exception
    {
    
        Connection con ;
        PreparedStatement ps;
        ResultSet rs;
        String sql;
   
        con=MyConnection.getConnection();
        
        sql="select * from feedback";
     
     ps=con.prepareStatement(sql);
     
      rs=ps.executeQuery();
      
      List<Feedback> mylist=new ArrayList<Feedback>();
    
      while(rs.next()){
          Feedback p=new Feedback();
          p.setFeedbackid(rs.getInt(1));
          p.setUserid(rs.getInt(2));
          p.setFeedback(rs.getString(3));
          p.setStar(rs.getString(6));
          
         
         mylist.add(p);
          p=null;
          
      }
    return mylist;
    
    }   
       
              
         
       public List<Query> getAllQuerys() throws Exception
    {
    
        Connection con ;
        PreparedStatement ps;
        ResultSet rs;
        String sql;
   
        con=MyConnection.getConnection();
        
        sql="select * from query";
     
     ps=con.prepareStatement(sql);
     
      rs=ps.executeQuery();
      
      List<Query> mylist=new ArrayList<Query>();
    
      while(rs.next()){
          Query p=new Query();
          p.setQueryid(rs.getInt(1));
          p.setUserid(rs.getInt(2));
          p.setQuery(rs.getString(3));
          
         
         mylist.add(p);
          p=null;
          
      }
    return mylist;
    
    }  
       
       
         
         
         
         
         
     public boolean UpdateFeedback(int feedid,String str)throws Exception
    {
         Connection con;
        PreparedStatement ps;
        String sql;
        
        sql="update feedback set feedback=? where feedbackid=?";
        con=MyConnection.getConnection();
        ps=con.prepareStatement(sql);
   
        ps.setString(1,str);
    ps.setInt(2,feedid);
  
	if(0<ps.executeUpdate())
	{
	return true;
	}    
        else return false;
            
    } 
     
     
     
     
     
     
     
     
     
     
     
 public boolean UpdateQuery(int feedid,String str)throws Exception
    {
         Connection con;
        PreparedStatement ps;
        String sql;
        
        sql="update query set answer=? where queryid=?";
        con=MyConnection.getConnection();
        ps=con.prepareStatement(sql);
   
        ps.setString(1,str);
    ps.setInt(2,feedid);
  
	if(0<ps.executeUpdate())
	{
	return true;
	}    
        else return false;
            
    }     
     
     
     
     
     
     
     
     
     
     
     
     
     
        
         
         
         
         
    
}
