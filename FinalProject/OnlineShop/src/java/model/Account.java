package model;
// Generated Jun 2, 2017 8:56:08 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Account generated by hbm2java
 */
public class Account  implements java.io.Serializable {


     private Integer accountId;
     private String username;
     private String firstName;
     private String lastName;
     private String password;
     private String email;
     private Date birthday;
     private String address;
     private Integer score;
     private String accountType;
     private boolean actived;
     private Set comments = new HashSet(0);
     private Set carts = new HashSet(0);
     private Set ratings = new HashSet(0);

    public Account() {
    }

	
    public Account(String username, String firstName, String lastName, String password, String email, boolean actived) {
        this.username = username;
        this.firstName = firstName;
        this.lastName = lastName;
        this.password = password;
        this.email = email;
        this.actived = actived;
    }
    public Account(String username, String firstName, String lastName, String password, String email, Date birthday, String address, Integer score, String accountType, boolean actived, Set comments, Set carts, Set ratings) {
       this.username = username;
       this.firstName = firstName;
       this.lastName = lastName;
       this.password = password;
       this.email = email;
       this.birthday = birthday;
       this.address = address;
       this.score = score;
       this.accountType = accountType;
       this.actived = actived;
       this.comments = comments;
       this.carts = carts;
       this.ratings = ratings;
    }
   
    public Integer getAccountId() {
        return this.accountId;
    }
    
    public void setAccountId(Integer accountId) {
        this.accountId = accountId;
    }
    public String getUsername() {
        return this.username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }
    public String getFirstName() {
        return this.firstName;
    }
    
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
    public String getLastName() {
        return this.lastName;
    }
    
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public Date getBirthday() {
        return this.birthday;
    }
    
    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }
    public String getAddress() {
        return this.address;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }
    public Integer getScore() {
        return this.score;
    }
    
    public void setScore(Integer score) {
        this.score = score;
    }
    public String getAccountType() {
        return this.accountType;
    }
    
    public void setAccountType(String accountType) {
        this.accountType = accountType;
    }
    public boolean isActived() {
        return this.actived;
    }
    
    public void setActived(boolean actived) {
        this.actived = actived;
    }
    public Set getComments() {
        return this.comments;
    }
    
    public void setComments(Set comments) {
        this.comments = comments;
    }
    public Set getCarts() {
        return this.carts;
    }
    
    public void setCarts(Set carts) {
        this.carts = carts;
    }
    public Set getRatings() {
        return this.ratings;
    }
    
    public void setRatings(Set ratings) {
        this.ratings = ratings;
    }




}


