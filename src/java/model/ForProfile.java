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
public class ForProfile {
    
    private String name,email;
    private Blob bolbImage;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Blob getBolbImage() {
        return bolbImage;
    }

    public void setBolbImage(Blob bolbImage) {
        this.bolbImage = bolbImage;
    }
    
    
    
}
