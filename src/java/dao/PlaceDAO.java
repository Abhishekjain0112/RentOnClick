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
import model.ForPlaceImage;
import model.Place;
import model.User;

/**
 *
 * @author Abhishek
 */
public class PlaceDAO {
    
  
    
    
public boolean addAvailable(Available a)throws Exception
    {
         Connection con;
        PreparedStatement ps;
        String sql;
        
        sql="insert into available(placeid,userid,date,srarttime,endtime,duration,cost) values(?,?,?,?,?,?,?)";
        con=MyConnection.getConnection();
        ps=con.prepareStatement(sql);
    ps.setInt(1,a.getP().getPlaceid());
    ps.setInt(2,a.getUserid());
    ps.setString(3,a.getDate());
    ps.setString(4,a.getStartTime());
    ps.setString(5,a.getEndTime());
    ps.setString(6,a.getDuration());
    ps.setString(7,a.getCost());
    
	if(0<ps.executeUpdate())
	{
	return true;
	}    
        else return false;
            
    }
  
    
    
    
    
    
    

public boolean addPlace(Place p)throws Exception
    {
         Connection con;
        PreparedStatement ps;
        String sql;
        
        sql="insert into place(userid,email,placename,placetype,address,city,state,landmark,description,"
            + "customertype1,customertype2,image1,image2,count) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        con=MyConnection.getConnection();
        ps=con.prepareStatement(sql);
    ps.setInt(1,p.getUser().getUserid());
    ps.setString(2,p.getEmailid());
    ps.setString(3,p.getPlacename());
    ps.setString(4,p.getPlacetype());
    ps.setString(5,p.getAddress());
    ps.setString(6,p.getCity());
    ps.setString(7,p.getState());
    ps.setString(8,p.getLandmark());
    ps.setString(9,p.getDescription());
    ps.setString(10,p.getCustomertype1());
    ps.setString(11,p.getCustomertype2());
    ps.setBlob(12,p.getImage1());
    ps.setBlob(13,p.getImage2());
    ps.setString(14,p.getCount());
  
    
	if(0<ps.executeUpdate())
	{
	return true;
	}    
        else return false;
            
    }
    
     public int countNumberOfPlaces(String userid)throws Exception
    {
        
        int count=4;
         Connection con;
        PreparedStatement ps;
        String sql;
        ResultSet rs=null;
        int ui=Integer.parseInt(userid);
        sql="SELECT COUNT(placeid) FROM PLACE WHERE USERID=?";
        con=MyConnection.getConnection();
        ps=con.prepareStatement(sql);
        ps.setInt(1,ui);
        
        rs=ps.executeQuery();
        
        if(rs.next())
        {
            count=rs.getInt(1);
            
        }
        
        
        return count;
    
    }
        
    
    
    
    
    
    public ForPlaceImage getPlaceImageFromDataBase(Place p) throws Exception
    {
    
          Connection con ;
        PreparedStatement ps;
        ResultSet rs;
        String sql;
   
        con=MyConnection.getConnection();
        
        sql="select * from place where userid=? and count=?";
        ps=con.prepareStatement(sql);
        ps.setInt(1,p.getUser().getUserid());
        ps.setString(2,p.getCount());
        
        rs=ps.executeQuery();
        
        ForPlaceImage fpi=null;       
        if(rs.next())
        {
            fpi=new ForPlaceImage();
            fpi.setPlaceid(rs.getInt(1));
            fpi.setUserid(rs.getInt(2));
            fpi.setEmail(rs.getString(3));
            fpi.setImagePlace1(rs.getBlob(13));
            fpi.setImagePlace2(rs.getBlob(14));
            fpi.setCount(rs.getString(16));
          
        
        }
        return fpi;
    }
    
    
    
    
    
     
    public List<Place> getAllPlaces() throws Exception
    {
    
        Connection con ;
        PreparedStatement ps;
        ResultSet rs;
        String sql;
   
        con=MyConnection.getConnection();
        
        sql="select * from place";
     
     ps=con.prepareStatement(sql);
     
      rs=ps.executeQuery();
      
      List<Place> mylist=new ArrayList<Place>();
    
      while(rs.next()){
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
         p.setApproved(rs.getString(15));
         p.setCount(rs.getString(16));
         
         mylist.add(p);
          p=null;
          
      }
    return mylist;
    
    }
      
    
     public List<Place> getAllPlacesAdmin() throws Exception
    {
    
        Connection con ;
        PreparedStatement ps;
        ResultSet rs;
        String sql;
   
        con=MyConnection.getConnection();
        
        sql="select * from place where approved=?";
     
     ps=con.prepareStatement(sql);
     ps.setString(1,"no");
      rs=ps.executeQuery();
      
      List<Place> mylist=new ArrayList<Place>();
    
      while(rs.next()){
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
         p.setApproved(rs.getString(15));
         p.setCount(rs.getString(16));
         
         mylist.add(p);
          p=null;
          
      }
    return mylist;
    
    }
    
    
    
    
    
    
    
    
     public Place getSinglePlaces(Place p1) throws Exception
    {
    
        Connection con ;
        PreparedStatement ps;
        ResultSet rs;
        String sql;
   
        con=MyConnection.getConnection();
        
        sql="select * from place where placeid=?";
     
     ps=con.prepareStatement(sql);
     ps.setInt(1,p1.getPlaceid());
      rs=ps.executeQuery();
      Place p=null;
      if(rs.next()){
          p=new Place();
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
         p.setApproved(rs.getString(15));
         p.setCount(rs.getString(16));
         
      }
      
      return p;
    }
         
    
    
       public List<Place> getMyPlaces(int userid) throws Exception
    {
    
        Connection con ;
        PreparedStatement ps;
        ResultSet rs;
        String sql;
   
        con=MyConnection.getConnection();
        
        sql="select * from place where userid=?";
     
     ps=con.prepareStatement(sql);
     ps.setInt(1, userid);
      rs=ps.executeQuery();
      
      List<Place> mylist=new ArrayList<Place>();
    
      while(rs.next()){
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
         p.setApproved(rs.getString(15));
         p.setCount(rs.getString(16));
         
         mylist.add(p);
          p=null;
          
      }
    return mylist;
    
    }
       
       
      public List<Place> getMyPlacesApproved(int userid) throws Exception
    {
    
        Connection con ;
        PreparedStatement ps;
        ResultSet rs;
        String sql;
   
        con=MyConnection.getConnection();
        
        sql="select * from place where userid=? and approved=?";
     
     ps=con.prepareStatement(sql);
     ps.setInt(1, userid);
     ps.setString(2,"yes");
     
      rs=ps.executeQuery();
      
      List<Place> mylist=new ArrayList<Place>();
    
      while(rs.next()){
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
         p.setApproved(rs.getString(15));
         p.setCount(rs.getString(16));
         
         mylist.add(p);
          p=null;
          
      }
    return mylist;
    
    }   
       
       
       
       
       
       
       
       
       
       
       
       
       
       
     
       
   
       public List<Available> getMyAvailablePlaces(int userid) throws Exception
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
            + "INNER JOIN place p ON p.placeid=a.placeid "
            + "where a.userid=?";    
        
     ps=con.prepareStatement(sql);
     ps.setInt(1,userid);
      rs=ps.executeQuery();
      
      List<Available> mylist=new ArrayList<Available>();
    
      while(rs.next()){
          
          Available av=new Available();
          
          
          
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
        
        av.setUserid(userid);
         mylist.add(av);
          p=null;
          av=null;
      }
    return mylist;
    
    }    
       
       
     
     // this method is for the admin everyy place he can see and approved 
       public List<Available> getAllAvailablePlacesAdmin() throws Exception
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
            + "INNER JOIN place p ON p.placeid=a.placeid";    
        
     ps=con.prepareStatement(sql);
      rs=ps.executeQuery();
      
      List<Available> mylist=new ArrayList<Available>();
    
      while(rs.next()){
          
          Available av=new Available();
          
          
          
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
         mylist.add(av);
          p=null;
          av=null;
      }
    return mylist;
    
    }    
       
     
     //this metho is for user 
   public List<Available> getAllAvailablePlaces(User u1) throws Exception
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
            + "INNER JOIN place p ON p.placeid=a.placeid where a.userid !=? AND a.status=?";    
        
     ps=con.prepareStatement(sql);
       ps.setInt(1,u1.getUserid());
      ps.setString(2,"not booked");
       
      rs=ps.executeQuery();
      
      List<Available> mylist=new ArrayList<Available>();
    
      while(rs.next()){
          
          Available av=new Available();
          
          
          
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
         mylist.add(av);
          p=null;
          av=null;
      }
    return mylist;
    
    }      
     
     
    public boolean UpdatePlaceStatus(int placeid)throws Exception
    {
         Connection con;
        PreparedStatement ps;
        String sql;
        
        sql="update place set approved=? where placeid=?";
        con=MyConnection.getConnection();
        ps=con.prepareStatement(sql);
   
        ps.setString(1,"yes");
    ps.setInt(2,placeid);
  
	if(0<ps.executeUpdate())
	{
	return true;
	}    
        else return false;
            
    } 
    
     
   
 public List<Available> searchBycity(String search) throws Exception
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
            + "INNER JOIN place p ON p.placeid=a.placeid where p.city=?";    
        
     ps=con.prepareStatement(sql);
       
      ps.setString(1,search);
       
      rs=ps.executeQuery();
      
      List<Available> mylist=new ArrayList<Available>();
    
      while(rs.next()){
          
          Available av=new Available();
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
         mylist.add(av);
          p=null;
          av=null;
      }
    return mylist;
    
    }      
     
 
 public List<Available> searchByLocation(String search) throws Exception
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
            + "INNER JOIN place p ON p.placeid=a.placeid where p.landmark=?";    
        
     ps=con.prepareStatement(sql);
      ps.setString(1,search);
      rs=ps.executeQuery();
      
      List<Available> mylist=new ArrayList<Available>();
    
      while(rs.next()){
          
          Available av=new Available();
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
         mylist.add(av);
          p=null;
          av=null;
      }
    return mylist;
    
    }      
 
  public List<Available> searchByPlaceType(String search) throws Exception
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
            + "INNER JOIN place p ON p.placeid=a.placeid where p.placetype=?";    
        
     ps=con.prepareStatement(sql);
       
      ps.setString(1,search);
       
      rs=ps.executeQuery();
      
      List<Available> mylist=new ArrayList<Available>();
    
      while(rs.next()){
          
          Available av=new Available();
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
         mylist.add(av);
          p=null;
          av=null;
      }
    return mylist;
    
    }      
    
    
   
   
   
    
}
