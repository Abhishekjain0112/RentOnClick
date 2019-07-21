/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import connection.MyConnection;
import model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.ForProfile;
import servlet.signin;
/**
 *
 * @author Abhishek
 */
public class UserDAO {
    
    
    
    public User login(User u)throws Exception
    {
       Connection con ;
        PreparedStatement ps;
        ResultSet rs;
        String sql;
   
        con=MyConnection.getConnection();
        
        sql="select * from user where email=? and password=?";
        

        
    ps=con.prepareStatement(sql);
    
    
      ps.setString(1,u.getEmail());
            ps.setString(2,u.getPassword());
    
    
    rs=ps.executeQuery();
      User us=null;
      
      if(rs.next())
      {
         us=new User();
         us.setUserid(rs.getInt(1));
         us.setName(rs.getString(2));
         us.setEmail(rs.getString(3));
         us.setPassword(rs.getString(4));
         us.setPhone(rs.getString(5));
         us.setAddress(rs.getString(6));
         us.setGender(rs.getString(7));
         us.setDate(rs.getDate(8));
         us.setWallet(rs.getInt(9));
        
        // us.setImageInputStream(rs.get);
         
      }
    return us;
    }
    
    
    
    
    
    public boolean signUp(User u) throws Exception
    {
     Connection con ;
        PreparedStatement ps;
        String sql;
   
     con=MyConnection.getConnection();
        
//PreparedStatement ps=con.prepareStatement("insert into user(name,password,gender,contact,email,address) values(?,?,?,?,?,?)");

	
     
     sql="insert into user(name,password,gender,phone,email,address,dob,profileImage) values(?,?,?,?,?,?,?,?)";
     
     ps=con.prepareStatement(sql);
     
    ps.setString(1,u.getName());
    ps.setString(2,u.getPassword());
    ps.setString(3,u.getGender());
    ps.setString(4,u.getPhone());
    ps.setString(5,u.getEmail());
    ps.setString(6,u.getAddress());
     ps.setDate(7,u.getDate());
     ps.setBlob(8,u.getImageInputStream());
    
    if(ps.executeUpdate()>0)
         return true;
    
    
    return false;
    
    }
    
   
    
    public ForProfile getImageFromDataBase(String email) throws Exception
    {
    
          Connection con ;
        PreparedStatement ps;
        ResultSet rs;
        String sql;
   
        con=MyConnection.getConnection();
        
        sql="select * from user where email=?";
        ps=con.prepareStatement(sql);
        ps.setString(1,email);
        
        rs=ps.executeQuery();
        
        ForProfile fp=new ForProfile();
        
        while(rs.next())
        {
            
           fp.setName(rs.getString(2));
            fp.setEmail(rs.getString(3));
            fp.setBolbImage(rs.getBlob(10));
        
        }
        return fp;
    }
    
    
  public User viewProfile(User u)throws Exception
    {
       Connection con ;
        PreparedStatement ps;
        ResultSet rs;
        String sql;
   
        con=MyConnection.getConnection();
        
        sql="select * from user where userid=?";
        

        
    ps=con.prepareStatement(sql);
    
    
      ps.setInt(1,u.getUserid());
    
    
    rs=ps.executeQuery();
      User us=null;
      
      if(rs.next())
      {
         us=new User();
         us.setUserid(rs.getInt(1));
         us.setName(rs.getString(2));
         us.setEmail(rs.getString(3));
         us.setPassword(rs.getString(4));
         us.setPhone(rs.getString(5));
         us.setAddress(rs.getString(6));
         us.setGender(rs.getString(7));
         us.setDate(rs.getDate(8));
         us.setWallet(rs.getInt(9));
        
        // us.setImageInputStream(rs.get);
         
      }
    return us;
    }    
    
    
    
    
    
    
    
    
    
    
}
