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
import model.Cart;

/**
 *
 * @author Abhishek
 */
public class CartDAO {
    
    
    public boolean addToCard(Cart c)throws Exception
    {
         Connection con;
        PreparedStatement ps;
        String sql;
        
        sql="insert into cart(availableid,buyerid,sallerid,cost,date,userid) values(?,?,?,?,?,?)";
        con=MyConnection.getConnection();
        ps=con.prepareStatement(sql);
    ps.setInt(1,c.getAvailableid());
    ps.setInt(2,c.getBuyerid());
    ps.setInt(3,c.getSellerid());
    ps.setString(4,c.getCost());
    ps.setString(5,c.getDate());
    ps.setInt(6,c.getUserid());
	if(0<ps.executeUpdate())
	{
	return true;
	}    
        else return false;
            
    }
  
    
          
public boolean UpdateAvailableStatus(int availableid)throws Exception
    {
         Connection con;
        PreparedStatement ps;
        String sql;
        
        sql="update available set status=? where availableid=?";
        con=MyConnection.getConnection();
        ps=con.prepareStatement(sql);
   
        ps.setString(1,"Booked");
    ps.setInt(2,availableid);
  
	if(0<ps.executeUpdate())
	{
	return true;
	}    
        else return false;
            
    } 
    
public List<Cart> ShowAllMyCart(int userid)throws Exception
{
 Connection con;
        PreparedStatement ps;
        String sql;
        ResultSet rs;
        
        sql="select * from cart where buyerid=?";
        
        con=MyConnection.getConnection();
        ps=con.prepareStatement(sql);
        ps.setInt(1,userid);
      List<Cart> mylist=new ArrayList<Cart>();
       
      rs=ps.executeQuery();
      
      
      while(rs.next()){
      
          Cart c=new Cart();
          c.setCartid(rs.getInt(1));
          c.setAvailableid(rs.getInt(2));
          c.setBuyerid(rs.getInt(3));
          c.setSellerid(rs.getInt(4));
          c.setCost(rs.getString(5));
          c.setPaid(rs.getString(6));
          c.setDate(rs.getString(7));
          c.setUserid(rs.getInt(8));
          mylist.add(c);
        
      }
      
      
      
      
      
      
      return mylist;
}
   
public Cart ShowCartDetails(int cartid)throws Exception
{
 Connection con;
        PreparedStatement ps;
        String sql;
        ResultSet rs;
        
        sql="select * from cart where cartid=?";
        
        con=MyConnection.getConnection();
        ps=con.prepareStatement(sql);
        ps.setInt(1,cartid);
      Cart c=null;
       
      rs=ps.executeQuery();
      
      
      if(rs.next()){
      
         c=new Cart();
          c.setCartid(rs.getInt(1));
          c.setAvailableid(rs.getInt(2));
          c.setBuyerid(rs.getInt(3));
          c.setSellerid(rs.getInt(4));
          c.setCost(rs.getString(5));
          c.setPaid(rs.getString(6));
          c.setDate(rs.getString(7));
          c.setUserid(rs.getInt(8));
                  
      }
      
      return c;
}





    
}
