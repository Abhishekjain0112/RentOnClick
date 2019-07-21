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
public class MyAvailablePlace {

    private Place place;
    private Available available;


    
    
    
    
    public Place getPlace() {
        return place;
    }

    public void setPlace(Place place) {
        this.place = place;
    }

    public Available getAvailable() {
        return available;
    }

    public void setAvailable(Available available) {
        this.available = available;
    }

    @Override
    public String toString() {
        return "MyAvailablePlace{" + "place=" + place + ", available=" + available + '}';
    }
    
    
    
    
    
    
    
    
    
    
}
