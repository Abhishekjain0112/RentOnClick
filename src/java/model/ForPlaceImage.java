/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Blob;

/**
 *
 * @author Abhishek
 */
public class ForPlaceImage {
    
   private int placeid,userid;
   private String email,count;
   private Blob imagePlace1,imagePlace2;


   
   
   
   
   
    public int getPlaceid() {
        return placeid;
    }

    public void setPlaceid(int placeid) {
        this.placeid = placeid;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCount() {
        return count;
    }

    public void setCount(String count) {
        this.count = count;
    }

    public Blob getImagePlace1() {
        return imagePlace1;
    }

    public void setImagePlace1(Blob imagePlace1) {
        this.imagePlace1 = imagePlace1;
    }

    public Blob getImagePlace2() {
        return imagePlace2;
    }

    public void setImagePlace2(Blob imagePlace2) {
        this.imagePlace2 = imagePlace2;
    }
   
   
   
  
    @Override
    public String toString() {
        return "ForPlaceImage{" + "placeid=" + placeid + ", userid=" + userid + ", email=" + email + ", count=" + count + ", imagePlace1=" + imagePlace1 + ", imagePlace2=" + imagePlace2 + '}';
    } 
   
    
    
}
