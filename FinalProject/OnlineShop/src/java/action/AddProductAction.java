/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Iterator;
import model.Cart;
import model.CartDetail;
import model.HibernateUtil;
import model.Product;
import org.hibernate.Session;

/**
 *
 * @author Kernel Dang
 */
public class AddProductAction extends ActionSupport {

    int productId;
    int quantity;
    int totalProducts;

    public int getTotalProducts() {
        return totalProducts;
    }

    public void setTotalProducts(int totalProducts) {
        this.totalProducts = totalProducts;
    }
    
    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public AddProductAction() {
    }

    public String execute() throws Exception {
        Cart cart = (Cart) ActionContext.getContext().getSession().get("cart");
        if (cart == null) {
            cart = new Cart();
            ActionContext.getContext().getSession().put("cart", cart);
        }
        // kiem tra product da them vao gio hang truoc do hay chua
        // neu da them roi thi khong tao them cartdetail nua
        // mà chỉ cần tăng số lượng product lên
        CartDetail cartDetail = null;
        for (Iterator iterator = cart.getCartdetails().iterator(); iterator.hasNext();) {
            CartDetail cd = (CartDetail) iterator.next();
            if (productId == cd.getProduct().getProductId()) {
                cartDetail = cd;
                break;
            }
        }
        if (cartDetail == null) {
            cartDetail = new CartDetail();
            cartDetail.setQuantity(quantity);
            Product product = (Product) HibernateUtil.getSessionFactory().openSession().get(Product.class, productId);
            cartDetail.setProduct(product);
            cart.getCartdetails().add(cartDetail);
        }
        else{
            cartDetail.setQuantity(cartDetail.getQuantity() + quantity);
        }
        
//        Session ss = HibernateUtil.getSessionFactory().openSession();
//        ss.beginTransaction();
//        ss.saveOrUpdate(cartDetail);
//        ss.getTransaction().commit();
        
        totalProducts = 0;
        for (Iterator iterator = cart.getCartdetails().iterator(); iterator.hasNext();) {
            CartDetail cd = (CartDetail)iterator.next();
            totalProducts += cd.getQuantity();
        }
        return SUCCESS;
    }

}
