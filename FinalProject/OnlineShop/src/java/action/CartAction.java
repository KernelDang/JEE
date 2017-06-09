/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import model.Cart;
import model.CartDetail;
import model.HibernateUtil;
import model.Product;
import org.hibernate.Session;

/**
 *
 * @author Kernel Dang
 */
public class CartAction extends ActionSupport {

    Cart cart;

    public Cart getCart() {
        return cart;
    }

    public void setCart(Cart cart) {
        this.cart = cart;
    }

    public CartAction() {
    }

    @Override
    public String execute() throws Exception {
        cart = (Cart) ActionContext.getContext().getSession().get("cart");
        if (cart != null) {
            BigDecimal totalPrice = new BigDecimal(0);
            for (Iterator iterator = cart.getCartdetails().iterator(); iterator.hasNext();) {
                CartDetail cd = (CartDetail) iterator.next();
                totalPrice = totalPrice.add(cd.getProduct().getPriceUnit().multiply(new BigDecimal(cd.getQuantity())));
            }
            cart.setTotalPrice(totalPrice);
        }

        return SUCCESS;
    }

}
