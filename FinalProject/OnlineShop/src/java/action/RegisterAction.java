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

/**
 *
 * @author Kernel Dang
 */
public class RegisterAction extends ActionSupport {

    Account account;

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public RegisterAction() {
    }

    String repassword;

    public String getRepassword() {
        return repassword;
    }

    public void setRepassword(String repassword) {
        this.repassword = repassword;
    }

    public String execute() throws Exception {
        account.setScore(0);
        account.setAccountType("member");
        account.setActived(true);
        
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        session.saveOrUpdate(account);
        session.getTransaction().commit();
        return SUCCESS;
    }

    @Override
    public void validate() {
        if (account.getUsername().isEmpty()) {
            addFieldError("account.username", "Không để trống tên tài khoản");
        } else if (account.getPassword().isEmpty()) {
            addFieldError("account.password", "Không để trống password");
        } else if (!account.getPassword().equals(repassword)) {
            addFieldError("repassword", "Xác nhận mật khẩu sai");
        } else {
            Session session = HibernateUtil.getSessionFactory().openSession();
            Query q = session.createQuery("from Account where username = :username");
            q.setParameter("username", account.getUsername());
            if (q.uniqueResult() != null) {
                addFieldError("account.username", "Tên đăng nhập đã tồn tại");
            }
        }
    }

}
