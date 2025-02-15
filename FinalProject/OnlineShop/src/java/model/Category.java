package model;
// Generated Jun 2, 2017 8:56:08 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Category generated by hbm2java
 */
public class Category  implements java.io.Serializable {


     private Integer categoryId;
     private Category category;
     private String categoryName;
     private String icon;
     private Set products = new HashSet(0);
     private Set categories = new HashSet(0);

    public Category() {
    }

	
    public Category(String categoryName) {
        this.categoryName = categoryName;
    }
    public Category(Category category, String categoryName, String icon, Set products, Set categories) {
       this.category = category;
       this.categoryName = categoryName;
       this.icon = icon;
       this.products = products;
       this.categories = categories;
    }
   
    public Integer getCategoryId() {
        return this.categoryId;
    }
    
    public void setCategoryId(Integer categoryId) {
        this.categoryId = categoryId;
    }
    public Category getCategory() {
        return this.category;
    }
    
    public void setCategory(Category category) {
        this.category = category;
    }
    public String getCategoryName() {
        return this.categoryName;
    }
    
    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }
    public String getIcon() {
        return this.icon;
    }
    
    public void setIcon(String icon) {
        this.icon = icon;
    }
    public Set getProducts() {
        return this.products;
    }
    
    public void setProducts(Set products) {
        this.products = products;
    }
    public Set getCategories() {
        return this.categories;
    }
    
    public void setCategories(Set categories) {
        this.categories = categories;
    }




}


