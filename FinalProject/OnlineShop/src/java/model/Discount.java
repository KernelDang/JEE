package model;
// Generated May 17, 2017 3:24:19 PM by Hibernate Tools 4.3.1

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Discount generated by hbm2java
 */
public class Discount implements java.io.Serializable {

    private Integer discountId;
    private Double percent;
    private Date startDate;
    private Date endDate;
    private Set products = new HashSet(0);

    public Discount() {
    }

    public Discount(Double percent, Date startDate, Date endDate, Set products) {
        this.percent = percent;
        this.startDate = startDate;
        this.endDate = endDate;
        this.products = products;
    }

    public Integer getDiscountId() {
        return this.discountId;
    }

    public void setDiscountId(Integer discountId) {
        this.discountId = discountId;
    }

    public Double getPercent() {
        return this.percent;
    }

    public void setPercent(Double percent) {
        this.percent = percent;
    }

    public Date getStartDate() {
        return this.startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return this.endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public Set getProducts() {
        return this.products;
    }

    public void setProducts(Set products) {
        this.products = products;
    }

}
