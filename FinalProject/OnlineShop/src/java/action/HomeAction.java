/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;
import model.HibernateUtil;
import model.Product;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Kernel Dang
 */
public class HomeAction extends ActionSupport {
    
    List<Product> newProducts;
    List<Integer> newProductRows = new ArrayList<>();
    List<Product> hostestProducts;
    List<Integer> hostestProductRows = new ArrayList<>();

    public List<Product> getNewProducts() {
        return newProducts;
    }

    public void setNewProducts(List<Product> newProducts) {
        this.newProducts = newProducts;
    }

    public List<Product> getHostestProducts() {
        return hostestProducts;
    }

    public void setHostestProducts(List<Product> hostestProducts) {
        this.hostestProducts = hostestProducts;
    }

    public List<Integer> getNewProductRows() {
        return newProductRows;
    }

    public void setNewProductRows(List<Integer> newProductRows) {
        this.newProductRows = newProductRows;
    }

    public List<Integer> getHostestProductRows() {
        return hostestProductRows;
    }

    public void setHostestProductRows(List<Integer> hostestProductRows) {
        this.hostestProductRows = hostestProductRows;
    }
    
    
    
    public HomeAction() {
    }
    
    public String execute() throws Exception {
        Session session = HibernateUtil.getSessionFactory().openSession();
        newProducts =  session.createCriteria(Product.class).add(Restrictions.eq("isNew", true)).list();
        newProductRows.clear();
        for(int i = 0; i < newProducts.size()/3; ++i){
            newProductRows.add(i);
        }
        hostestProducts = session.createCriteria(Product.class).add(Restrictions.eq("isHostest", true)).list();
        hostestProductRows.clear();
        for(int i = 0; i < hostestProducts.size()/3; ++i){
            hostestProductRows.add(i);
        }
        return SUCCESS;
    }
    
}
