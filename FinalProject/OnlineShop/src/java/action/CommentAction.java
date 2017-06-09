/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import model.Account;
import model.Comment;
import model.HibernateUtil;
import org.hibernate.Hibernate;
import org.hibernate.Session;

/**
 *
 * @author Kernel Dang
 */
public class CommentAction extends ActionSupport {
    
    Comment comment;

    public Comment getComment() {
        return comment;
    }

    public void setComment(Comment comment) {
        this.comment = comment;
    }
    
    
    public CommentAction() {
    }
    
    public String execute() throws Exception {
        Account a = (Account)ActionContext.getContext().getSession().get("account");
        if(a == null){
            return ERROR;
        }
        comment.setAccount(a);
        Session ss = HibernateUtil.getSessionFactory().openSession();
        ss.beginTransaction();
        ss.saveOrUpdate(comment);
        ss.getTransaction().commit();
        return SUCCESS;
    }
    
}
