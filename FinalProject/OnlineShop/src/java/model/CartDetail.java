package model;
// Generated Jun 2, 2017 8:56:08 PM by Hibernate Tools 4.3.1



/**
 * CartDetail generated by hbm2java
 */
public class CartDetail  implements java.io.Serializable {


     private Integer cartDetailId;
     private Cart cart;
     private Product product;
     private Integer quantity;

    public CartDetail() {
    }

    public CartDetail(Cart cart, Product product, Integer quantity) {
       this.cart = cart;
       this.product = product;
       this.quantity = quantity;
    }
   
    public Integer getCartDetailId() {
        return this.cartDetailId;
    }
    
    public void setCartDetailId(Integer cartDetailId) {
        this.cartDetailId = cartDetailId;
    }
    public Cart getCart() {
        return this.cart;
    }
    
    public void setCart(Cart cart) {
        this.cart = cart;
    }
    public Product getProduct() {
        return this.product;
    }
    
    public void setProduct(Product product) {
        this.product = product;
    }
    public Integer getQuantity() {
        return this.quantity;
    }
    
    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }




}


