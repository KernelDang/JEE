/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action.admin;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import model.Account;
import model.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Kernel Dang
 */
public class LoginAction extends ActionSupport {

    private Account account;

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
        Query query = ss.createQuery("from Account where Username = :username and Password = :password and AccountType = 'admin'");
        query.setParameter("username", account.getUsername());
        query.setParameter("password", account.getPassword());
        account = (Account) query.uniqueResult();
        if(account == null){
            addActionError("Username or password is wrong");
            return INPUT;
        }
        ActionContext.getContext().getSession().put("account", account);
        return SUCCESS;
    }

    @Override
    public void validate() {
        if(account.getUsername().isEmpty()){
            addFieldError("account.username", "Don't leave empty username");
        }
        if(account.getPassword().isEmpty()){
            addFieldError("account.password", "Don't leave empty password");
        }
    }
}
