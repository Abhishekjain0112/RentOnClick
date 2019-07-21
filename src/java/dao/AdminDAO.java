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
import model.Admin;
import model.User;

/**
 *
 * @author Abhishek
 */
public class AdminDAO {
 
     public boolean login(Admin u)throws Exception
    {
       Connection con ;
        PreparedStatement ps;
        ResultSet rs;
        String sql;
   
        con=MyConnection.getConnection();
        
        sql="select * from admin where email=? and password=?";
       
    ps=con.prepareStatement(sql);
    
    
      ps.setString(1,u.getEmail());
            ps.setString(2,u.getPasssword());
    
    
    rs=ps.executeQuery();
     
      if(rs.next())
      {return true;  }
    return false;
    }
    
    
    
    
}
