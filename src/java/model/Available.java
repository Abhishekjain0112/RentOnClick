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
public class Available {
    
    private  int  availableid,userid;
    private  User user;
    private Place p;
    private String startTime,endTime,duration,cost,status,date;

    
    
    
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
    
    
    
    
    
    public int getAvailableid() {
        return availableid;
    }

    public void setAvailableid(int availableid) {
        this.availableid = availableid;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public Place getP() {
        return p;
    }

    public void setP(Place p) {
        this.p = p;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public String getCost() {
        return cost;
    }

    public void setCost(String cost) {
        this.cost = cost;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "Available{" + "availableid=" + availableid + ", userid=" + userid + ", user=" + user + ", p=" + p + ", startTime=" + startTime + ", endTime=" + endTime + ", duration=" + duration + ", cost=" + cost + ", status=" + status + ", date=" + date + '}';
    }
    
    
    
    
    
}
