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
import model.Available;
import model.Place;
import model.User;

/**
 *
 * @author Abhishek
 */
public class AvailableDAO {
    
 /*
    importent point some methods is already present in the PlaceDao
    Class 
    
    
    */
    
    
    
    
    
    
    
    
    
    
    
   
        public Available getAvailableDetails(int availableid) throws Exception
    {
    
        Connection con ;
        PreparedStatement ps;
        ResultSet rs;
        String sql;
   
        con=MyConnection.getConnection();
        
       // sql="select * from place where userid=?";
     
        //       1          2       3       4           5           6           7       8
        //        9     10   
        //       11     12      13      
        //       14      15     16     17      18      19      20      
    sql="select p.placeid,p.userid,p.email,p.placename,p.placetype,p.address,p.city,p.state,"
            + "p.landmark,p.description,"
            + "p.customertype1,p.customertype2,p.count"
            + ",a.availableid,a.date,a.srarttime,a.endtime,a.duration,a.cost,a.status "
            + "from available a "
            + "INNER JOIN place p ON p.placeid=a.placeid where a.availableid=?";    
        
     ps=con.prepareStatement(sql);
     ps.setInt(1,availableid);
      rs=ps.executeQuery();
      
      Available av=null;
    
      if(rs.next()){
          
                
           av=new Available();
          
          Place p=new Place();
          
         p.setPlaceid(rs.getInt(1));
            User u=new User();
              u.setUserid(rs.getInt(2));
         p.setUser(u);        
         p.setEmailid(rs.getString(3));       
         p.setPlacename(rs.getString(4));      
         p.setPlacetype(rs.getString(5));      
         p.setAddress(rs.getString(6));       
         p.setCity(rs.getString(7));         
         p.setState(rs.getString(8));        
         p.setLandmark(rs.getString(9));        
         p.setDescription(rs.getString(10));
         p.setCustomertype1(rs.getString(11));       
         p.setCustomertype2(rs.getString(12));
         p.setCount(rs.getString(13));
         
        av.setP(p);
        av.setAvailableid(rs.getInt(14));
        av.setDate(rs.getString(15));
        av.setStartTime(rs.getString(16));
        av.setEndTime(rs.getString(17));
        av.setDuration(rs.getString(18));
        av.setCost(rs.getString(19));
        av.setStatus(rs.getString(20));
        av.setUserid(u.getUserid());
           }
    return av;
    
    }    
       
    
}
