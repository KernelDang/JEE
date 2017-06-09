/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action.admin;

import com.opensymphony.xwork2.ActionSupport;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import model.CartDetail;
import model.HibernateUtil;
import model.Image;
import model.Order;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Kernel Dang
 */
public class OrderAction extends ActionSupport {

    List<Order> orders;

    public List<Order> getOrders() {
        return orders;
    }

    public void setOrders(List<Order> orders) {
        this.orders = orders;
    }

    public OrderAction() {
    }

    @Override
    public String execute() throws Exception {
        Session ss = HibernateUtil.getSessionFactory().openSession();
        orders = ss.createCriteria(Order.class).list();
        return SUCCESS;
    }

    // orderId will be sent from client to get information about order detail
    // will be intercep by struts interception automatically
    int orderId;

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    // this is object will be serialized to JSON object to return client when get order detail
    List<OrderDetail> orderDetailsResult;

    public List<OrderDetail> getOrderDetailsResult() {
        return orderDetailsResult;
    }

    public void setOrderDetailsResult(List<OrderDetail> orderDetailsResult) {
        this.orderDetailsResult = orderDetailsResult;
    }

    public String getOrderDetails() {
        Session ss = HibernateUtil.getSessionFactory().openSession();
        Query q = ss.createQuery("from Order where orderId = :orderId");
        q.setParameter("orderId", orderId);
        Order order = (Order) q.uniqueResult();
        if (order != null) {
            orderDetailsResult = new ArrayList<>();
            for (Iterator<Object> iterator = order.getCart().getCartdetails().iterator(); iterator.hasNext();) {
                CartDetail cartDetail = (CartDetail) iterator.next();
                Image image = (Image) cartDetail.getProduct().getImages().iterator().next();
                OrderDetail od = new OrderDetail();
                od.setImageUrl(image.getUrl());
                od.setProductName(cartDetail.getProduct().getProductName());
                od.setPriceUnit(cartDetail.getProduct().getPriceUnit().toString());
                od.setQuantity(cartDetail.getQuantity().toString());
                orderDetailsResult.add(od);
            }
        }
        return SUCCESS;
    }

    public class OrderDetail {

        private String imageUrl;
        private String productName;
        private String priceUnit;
        private String quantity;

        public OrderDetail() {
        }

        public String getImageUrl() {
            return imageUrl;
        }

        public void setImageUrl(String imageUrl) {
            this.imageUrl = imageUrl;
        }

        public String getProductName() {
            return productName;
        }

        public void setProductName(String productName) {
            this.productName = productName;
        }

        public String getPriceUnit() {
            return priceUnit;
        }

        public void setPriceUnit(String priceUnit) {
            this.priceUnit = priceUnit;
        }

        public String getQuantity() {
            return quantity;
        }

        public void setQuantity(String quantity) {
            this.quantity = quantity;
        }
    }

}
