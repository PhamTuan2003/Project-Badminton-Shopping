/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.Date;

/**
 *
 * @author ASUS
 */
public class Order {
    private int order_id;
    private Date orderDate;
    private Customer customer;
    private float total_money;
    private boolean status;

    public Order() {
    }

    public Order(int order_id, Date orderDate, Customer customer, float total_money, boolean status) {
        this.order_id = order_id;
        this.orderDate = orderDate;
        this.customer = customer;
        this.total_money = total_money;
        this.status = status;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public float getTotal_money() {
        return total_money;
    }

    public void setTotal_money(float total_money) {
        this.total_money = total_money;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

   
    
}
