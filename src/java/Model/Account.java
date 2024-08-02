/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author ASUS
 */
public class Account {
    private int account_id;
    private String username;
    private String password;
    private int role;
    Customer customer;

    public Account() {
    }
    
    public Account(String username,String password,int role){
        this.username = username;
        this.password = password;
        this.role = role;
    }
            
    public Account(int account_id, String username, String password, int role, Customer customer) {
        this.account_id = account_id;
        this.username = username;
        this.password = password;
        this.role = role;
        this.customer = customer;
    }

    public int getAccount_id() {
        return account_id;
    }

    public void setAccount_id(int account_id) {
        this.account_id = account_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }
    
    
    

    
}
