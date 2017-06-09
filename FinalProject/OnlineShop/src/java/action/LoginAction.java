/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import static com.opensymphony.xwork2.Action.INPUT;
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
    
    Account account;

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }
    
    
    public LoginAction() {
    }
    
    public String execute() throws Exception {
        Session ss = HibernateUtil.getSessionFactory().openSession();
        Query query = ss.createQuery("from Account where Username = :username and Password = :password");
        query.setParameter("username", account.getUsername());
        query.setParameter("password", account.getPassword());
        account = (Account) query.uniqueResult();
        if(account == null){
            addActionError("Đăng nhập thất bại");
            return INPUT;
        }
        ActionContext.getContext().getSession().put("account", account);
        return SUCCESS;
    }

    @Override
    public void validate() {
        if(account.getUsername().isEmpty()){
            addActionError("Không để trống tên tài khoản");
        }
        if(account.getPassword().isEmpty()){
            addFieldError("account.password", "Không để trống mật khẩu");
        }
    }
    
    
}
