/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action.admin;

import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import model.Account;
import model.HibernateUtil;
import org.hibernate.Session;

/**
 *
 * @author Kernel Dang
 */
public class AccountAction extends ActionSupport{
    
    List<Account> accounts;

    public List<Account> getAccounts() {
        return accounts;
    }

    public void setAccounts(List<Account> accounts) {
        this.accounts = accounts;
    }
    
    
    public AccountAction() {
    }
    
    @Override
    public String execute() throws Exception {
        Session ss = HibernateUtil.getSessionFactory().openSession();
        accounts = ss.createCriteria(Account.class).list();
        return SUCCESS;
    }
    
}
