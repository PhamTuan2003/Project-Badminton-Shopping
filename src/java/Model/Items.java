/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author ASUS
 */
public class Items {
    private  RacketSpecs racketSpecs;
    private int quantity;
    private float price;

    public Items() {
    }

    public Items(RacketSpecs racketSpecs, int quantity, float price) {
        this.racketSpecs = racketSpecs;
        this.quantity = quantity;
        this.price = price;
    }

    public RacketSpecs getRacketSpecs() {
        return racketSpecs;
    }

    public void setRacketSpecs(RacketSpecs racketSpecs) {
        this.racketSpecs = racketSpecs;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }
    
    
}
