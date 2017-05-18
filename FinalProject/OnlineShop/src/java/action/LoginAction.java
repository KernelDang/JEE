/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import com.opensymphony.xwork2.ActionSupport;
import model.Account;
import model.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author namlxuit
 */
public class LoginAction extends ActionSupport {
    
    Account account;

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }
    
    public LoginAction() {
    }
    
    @Override
    public String execute() throws Exception {
       Session ss = HibernateUtil.getSessionFactory().openSession();
       ss.beginTransaction();
       Query q = ss.createQuery("from Account where username = :username and password = :password");
       q.setParameter("username", account.getUsername());
       q.setParameter("password", account.getPassword());
       if(q.list().size() > 0){
           return SUCCESS;
       }
       return ERROR;
    }
    
}
