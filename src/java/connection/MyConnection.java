/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Abhishek
 */
public class MyConnection {
    
   static Connection con=null;
   
   public static Connection getConnection()
   {
       try {
           Class.forName("com.mysql.jdbc.Driver");
         System.out.println("Driver load Succesfully");
   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/demorentonclick","root","root");
            System.out.println("DataBase connected");

       } 
       
       catch (Exception ex) {
           ex.printStackTrace();    
       }
       return con;
   }
    
}
