/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action.admin;

import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import model.HibernateUtil;
import model.Supplier;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Kernel Dang
 */
public class SupplierAction extends ActionSupport {

    List<Supplier> suppliers;

    public List<Supplier> getSuppliers() {
        return suppliers;
    }

    public void setSuppliers(List<Supplier> suppliers) {
        this.suppliers = suppliers;
    }

    public SupplierAction() {
    }

    public String execute() throws Exception {
        Session ss = HibernateUtil.getSessionFactory().openSession();
        suppliers = ss.createCriteria(Supplier.class).list();
        return SUCCESS;
    }

    Supplier supplier;

    public Supplier getSupplier() {
        return supplier;
    }

    public void setSupplier(Supplier supplier) {
        this.supplier = supplier;
    }

    public String create(){
        Transaction t = null;
        try {
            Session ss = HibernateUtil.getSessionFactory().openSession();
            t = ss.beginTransaction();
            ss.saveOrUpdate(supplier);
            t.commit();
            return SUCCESS;
        }
        catch(HibernateException ex){
            t.rollback();
            return ERROR;
        }
    }
    
    public String update(){
        Transaction t = null;
        try {
            Session ss = HibernateUtil.getSessionFactory().openSession();
            t = ss.beginTransaction();
            ss.update(supplier);
            t.commit();
            return SUCCESS;
        }
        catch(HibernateException ex){
            t.rollback();
            return ERROR;
        }
    }
    
    public String delete() {
        Transaction t = null;
        try {
            Session ss = HibernateUtil.getSessionFactory().openSession();
            t = ss.beginTransaction();
            ss.delete(supplier);
            t.commit();
            return SUCCESS;
        }
        catch(HibernateException ex){
            t.rollback();
            return ERROR;
        }
    }
}
