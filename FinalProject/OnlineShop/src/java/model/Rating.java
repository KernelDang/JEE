package model;
// Generated May 17, 2017 3:24:19 PM by Hibernate Tools 4.3.1



/**
 * Rating generated by hbm2java
 */
public class Rating  implements java.io.Serializable {


     private Integer ratingId;
     private Account account;
     private Product product;
     private Integer score;

    public Rating() {
    }

    public Rating(Account account, Product product, Integer score) {
       this.account = account;
       this.product = product;
       this.score = score;
    }
   
    public Integer getRatingId() {
        return this.ratingId;
    }
    
    public void setRatingId(Integer ratingId) {
        this.ratingId = ratingId;
    }
    public Account getAccount() {
        return this.account;
    }
    
    public void setAccount(Account account) {
        this.account = account;
    }
    public Product getProduct() {
        return this.product;
    }
    
    public void setProduct(Product product) {
        this.product = product;
    }
    public Integer getScore() {
        return this.score;
    }
    
    public void setScore(Integer score) {
        this.score = score;
    }




}


