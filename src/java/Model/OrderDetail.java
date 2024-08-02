/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author ASUS
 */
public class OrderDetail {
    private int orderdetail_id;
    private Order order;
    private RacketSpecs racketSpecs;
    private int quantity;
    private float price;

    public OrderDetail() {
    }

    public OrderDetail(int orderdetail_id, Order order, RacketSpecs racketSpecs, int quantity, float price) {
        this.orderdetail_id = orderdetail_id;
        this.order = order;
        this.racketSpecs = racketSpecs;
        this.quantity = quantity;
        this.price = price;
    }

    public int getOrderdetail_id() {
        return orderdetail_id;
    }

    public void setOrderdetail_id(int orderdetail_id) {
        this.orderdetail_id = orderdetail_id;
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
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

    @Override
    public String toString() {
        return "OrderDetail{" + "orderdetail_id=" + orderdetail_id + ", order=" + order + ", racketSpecs=" + racketSpecs + ", quantity=" + quantity + ", price=" + price + '}';
    }

    
    
    
}
