/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action.admin;

import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import model.HibernateUtil;
import model.Product;
import model.Supplier;
import org.hibernate.Session;

/**
 *
 * @author Kernel Dang
 */
public class ProductAction extends ActionSupport {

    List<Product> products;
    List<Supplier> suppliers;
    Product product;

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }

    public List<Supplier> getSuppliers() {
        return suppliers;
    }

    public void setSuppliers(List<Supplier> suppliers) {
        this.suppliers = suppliers;
    }

    public ProductAction() {
    }

    @Override
    public String execute() throws Exception {
        Session ss = HibernateUtil.getSessionFactory().openSession();
        products = ss.createCriteria(Product.class).list();
        suppliers = ss.createCriteria(Supplier.class).list();
        return SUCCESS;
    }

    public String add() throws Exception {
        HibernateUtil.getSessionFactory().openSession().saveOrUpdate(product);
        return SUCCESS;
    }

    @Override
    public void validate() {
        if (product != null) {
            if (product.getProductName().isEmpty()) {
                addFieldError("product.productName", "Don't leave empty product name");
            }
            if (product.getPriceUnit() == null) {
                addFieldError("product.priceUnit", "Don't leave empty price unit");
            }
            if(product.getDescription().isEmpty()){
                addFieldError("product.priceUnit", "Don't leave empty description");
            }
            if(product.getRemainQuantity() == null){
                addFieldError("product.remainQuantity", "Don't leave empty quantity");
            }
            if(product.getImages() == null || product.getImages().size() == 0){
                addFieldError("product.images", "Please choose at least one image file for this product");
            }
        }
    }
}
