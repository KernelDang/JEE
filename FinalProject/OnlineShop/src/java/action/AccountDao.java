/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;
import java.util.List;
import model.Account;
import model.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;
/**
 *
 * @author namlxuit
 */
public class AccountDao {
    public boolean find(String name, String password) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        //session.beginTransaction();
        String sql = " from Users u where u.uname=:name and u.pwd=:pass";
        Query query = session.createQuery(sql);
        query.setParameter("name", name);
        query.setParameter("pass", password);
        List<Account> list = query.list();
        if (list.size() > 0) {
            session.close();
            return true;
        }
        session.close();
        return false;
    }
}
