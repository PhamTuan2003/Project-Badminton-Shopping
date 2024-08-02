/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author ASUS
 */
public class RacketSpecs {
    private int racket_id;
    private Brands brand;
    private RacketType racketType;
    private String racket_name;
    private float price;
    private String image_url;
    private int year_value;
    private String origin_country;
    private int quantity;

    public RacketSpecs() {
    }

    public RacketSpecs(int racket_id, Brands brand, RacketType racketType, String racket_name, float price, String image_url, int year_value, String origin_country, int quantity) {
        this.racket_id = racket_id;
        this.brand = brand;
        this.racketType = racketType;
        this.racket_name = racket_name;
        this.price = price;
        this.image_url = image_url;
        this.year_value = year_value;
        this.origin_country = origin_country;
        this.quantity = quantity;
    }

    public int getRacket_id() {
        return racket_id;
    }

    public void setRacket_id(int racket_id) {
        this.racket_id = racket_id;
    }

    public Brands getBrand() {
        return brand;
    }

    public void setBrand(Brands brand) {
        this.brand = brand;
    }

    public RacketType getRacketType() {
        return racketType;
    }

    public void setRacketType(RacketType racketType) {
        this.racketType = racketType;
    }

    public String getRacket_name() {
        return racket_name;
    }

    public void setRacket_name(String racket_name) {
        this.racket_name = racket_name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getImage_url() {
        return image_url;
    }

    public void setImage_url(String image_url) {
        this.image_url = image_url;
    }

    public int getYear_value() {
        return year_value;
    }

    public void setYear_value(int year_value) {
        this.year_value = year_value;
    }

    public String getOrigin_country() {
        return origin_country;
    }

    public void setOrigin_country(String origin_country) {
        this.origin_country = origin_country;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "RacketSpecs{" + "racket_id=" + racket_id + ", "
                + "brand=" + brand.getBrand_name() + ", racketType=" + racketType.getRackettype_name() + ", "
                + "racket_name=" + racket_name + ", price=" + price + ", "
                + "image_url=" + image_url + ", year_value=" + year_value + ", "
                + "origin_country=" + origin_country + ", quantity=" + quantity + '}';
    }

       
    
    
}
