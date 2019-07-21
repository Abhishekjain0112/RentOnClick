/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import java.io.InputStream;
import java.sql.Date;
/**
 *
 * @author Abhishek
 */
public class User {
    
    
     private int userid,wallet;
     private String name,password,gender,phone,email,address;
     private Date date;
     private InputStream imageInputStream; 

     
     
    public InputStream getImageInputStream() {
        return imageInputStream;
    }

    public void setImageInputStream(InputStream imageInputStream) {
        this.imageInputStream = imageInputStream;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
  
    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    @Override
    public String toString() {
        return "User{" + "userid=" + userid + ", wallet=" + wallet + ", name=" + name + ", password=" + password + ", gender=" + gender + ", phone=" + phone + ", email=" + email + ", address=" + address + ", date=" + date + ", imageInputStream=" + imageInputStream + '}';
    }

    public void setAddress(String address) {
        this.address = address;
    }

    
        public int getWallet() {
        return wallet;
    }

    public void setWallet(int wallet) {
        this.wallet = wallet;
    }
    
    
    
    
    
}
