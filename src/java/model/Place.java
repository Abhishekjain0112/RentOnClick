/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.InputStream;

/**
 *
 * @author Abhishek
 */
public class Place {

   private int placeid;

   private User user;
   private String count,emailid="abhi1",placename,placetype,address,city,state,landmark,description,customertype1,customertype2,approved;

    public String getCount() {
        return count;
    }

    public void setCount(String count) {
        this.count = count;
    }
   private InputStream image1,image2;

   

   
   
   
   
    public int getPlaceid() {
        return placeid;
    }

    public void setPlaceid(int placeid) {
        this.placeid = placeid;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getEmailid() {
        return emailid;
    }

    public void setEmailid(String emailid) {
        this.emailid = emailid;
    }

    public String getPlacename() {
        return placename;
    }

    public void setPlacename(String placename) {
        this.placename = placename;
    }

    public String getPlacetype() {
        return placetype;
    }

    public void setPlacetype(String placetype) {
        this.placetype = placetype;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getLandmark() {
        return landmark;
    }

    public void setLandmark(String landmark) {
        this.landmark = landmark;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCustomertype1() {
        return customertype1;
    }

    public void setCustomertype1(String customertype1) {
        this.customertype1 = customertype1;
    }

    public String getCustomertype2() {
        return customertype2;
    }

    public void setCustomertype2(String customertype2) {
        this.customertype2 = customertype2;
    }

    public String getApproved() {
        return approved;
    }

    public void setApproved(String approved) {
        this.approved = approved;
    }

    public InputStream getImage1() {
        return image1;
    }

    public void setImage1(InputStream image1) {
        this.image1 = image1;
    }

    public InputStream getImage2() {
        return image2;
    }

    public void setImage2(InputStream image2) {
        this.image2 = image2;
    }

    @Override
    public String toString() {
        return "Place{" + "placeid=" + placeid + ", user=" + user + ", count=" + count + ", emailid=" + emailid + ", placename=" + placename + ", placetype=" + placetype + ", address=" + address + ", city=" + city + ", state=" + state + ", landmark=" + landmark + ", description=" + description + ", customertype1=" + customertype1 + ", customertype2=" + customertype2 + ", approved=" + approved + ", image1=" + image1 + ", image2=" + image2 + '}';
    }
   
   
   
  
   
    
    
    
    
}
