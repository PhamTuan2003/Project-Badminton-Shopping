/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author ASUS
 */
public class Customer {
    private int customer_id;
    private String fullname;
    private int phone;
    private String email;
    private String address;

    public Customer() {
    }

    public Customer(int customer_id, String fullname, int phone, String email, String address) {
        this.customer_id = customer_id;
        this.fullname = fullname;
        this.phone = phone;
        this.email = email;
        this.address = address;
    }

    public int getCustomer_id() {
        return customer_id;
    }

    public void setCustomer_id(int customer_id) {
        this.customer_id = customer_id;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
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

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Customer{" + "customer_id=" + customer_id + ", fullname=" + fullname + ", phone=" + phone + ", email=" + email + ", address=" + address + '}';
    }

   
    
    
}
