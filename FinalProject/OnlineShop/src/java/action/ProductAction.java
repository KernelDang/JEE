/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import com.opensymphony.xwork2.ActionSupport;
import model.HibernateUtil;
import model.Product;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Kernel Dang
 */
public class ProductAction extends ActionSupport{
    
    int productId;
    Product product;
    int ratingScore;
    
    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getRatingScore() {
        return ratingScore;
    }

    public void setRatingScore(int ratingScore) {
        this.ratingScore = ratingScore;
    }
    
    
    
    public ProductAction() {
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
    
    
    
    @Override
    public String execute() throws Exception {
        Session ss = HibernateUtil.getSessionFactory().openSession();
        Query q = ss.createQuery("from Product where productId = :productId");
        q.setParameter("productId", productId);
        product = (Product)q.uniqueResult();
        
        Query q1 = ss.createQuery("select avg(R.score) from Rating R join R.product P where P.productId = :productId");
        q1.setParameter("productId", productId);
        Object avg = q1.uniqueResult();
        if(avg != null)
            ratingScore = Integer.parseInt(avg.toString());
        else
            ratingScore = 0;
        return SUCCESS;
    }
}
