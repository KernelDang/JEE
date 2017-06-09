package model;
// Generated Jun 2, 2017 8:56:08 PM by Hibernate Tools 4.3.1


import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

/**
 * Cart generated by hbm2java
 */
public class Cart  implements java.io.Serializable {


     private Integer cartId;
     private Account account;
     private Integer totalProduct;
     private BigDecimal totalPrice;
     private Set orders = new HashSet(0);
     private Set cartdetails = new HashSet(0);

    public Cart() {
    }

    public Cart(Account account, Integer totalProduct, BigDecimal totalPrice, Set orders, Set cartdetails) {
       this.account = account;
       this.totalProduct = totalProduct;
       this.totalPrice = totalPrice;
       this.orders = orders;
       this.cartdetails = cartdetails;
    }
   
    public Integer getCartId() {
        return this.cartId;
    }
    
    public void setCartId(Integer cartId) {
        this.cartId = cartId;
    }
    public Account getAccount() {
        return this.account;
    }
    
    public void setAccount(Account account) {
        this.account = account;
    }
    public Integer getTotalProduct() {
        return this.totalProduct;
    }
    
    public void setTotalProduct(Integer totalProduct) {
        this.totalProduct = totalProduct;
    }
    public BigDecimal getTotalPrice() {
        return this.totalPrice;
    }
    
    public void setTotalPrice(BigDecimal totalPrice) {
        this.totalPrice = totalPrice;
    }
    public Set getOrders() {
        return this.orders;
    }
    
    public void setOrders(Set orders) {
        this.orders = orders;
    }
    public Set getCartdetails() {
        return this.cartdetails;
    }
    
    public void setCartdetails(Set cartdetails) {
        this.cartdetails = cartdetails;
    }




}


