/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import model.Cart;
import model.HibernateUtil;
import model.Order;
import org.hibernate.Hibernate;
import org.hibernate.Session;

/**
 *
 * @author Kernel Dang
 */
public class CheckoutAction extends ActionSupport {
    
    Order order;

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }
    
    public CheckoutAction() {
    }
    
    public String execute() throws Exception {
        order.setCart((Cart)ActionContext.getContext().getSession().get("cart"));
//        Session ss = HibernateUtil.getSessionFactory().openSession();
//        ss.getTransaction().begin();
//        ss.saveOrUpdate(order);
//        ss.getTransaction().commit();
        ActionContext.getContext().getSession().remove("cart");
        return SUCCESS;
    }
}
