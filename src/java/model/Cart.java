/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Abhishek
 */
public class Cart {
    
    private int cartid,availableid,buyerid,sellerid,userid;
    private Available available;
    private User buyer,seller;
    private String cost,paid,date;

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    
    
    
    public int getCartid() {
        return cartid;
    }

    public void setCartid(int cartid) {
        this.cartid = cartid;
    }

    public Available getAvailable() {
        return available;
    }

    public void setAvailable(Available available) {
        this.available = available;
    }

    public User getBuyer() {
        return buyer;
    }

    public void setBuyer(User buyer) {
        this.buyer = buyer;
    }

    public User getSeller() {
        return seller;
    }

    public void setSeller(User seller) {
        this.seller = seller;
    }

    public String getCost() {
        return cost;
    }

    public void setCost(String cost) {
        this.cost = cost;
    }

    public String getPaid() {
        return paid;
    }

    public void setPaid(String paid) {
        this.paid = paid;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getAvailableid() {
        return availableid;
    }

    public void setAvailableid(int availableid) {
        this.availableid = availableid;
    }

    public int getBuyerid() {
        return buyerid;
    }

    public void setBuyerid(int buyerid) {
        this.buyerid = buyerid;
    }

    public int getSellerid() {
        return sellerid;
    }

    public void setSellerid(int sellerid) {
        this.sellerid = sellerid;
    }
            
    
    
    
    
    
    
}
