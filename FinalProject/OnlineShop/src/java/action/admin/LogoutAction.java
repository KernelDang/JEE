/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action.admin;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author Kernel Dang
 */
public class LogoutAction extends ActionSupport {
    
    public LogoutAction() {
    }
    
    public String execute() throws Exception {
        ActionContext.getContext().getSession().remove("account");
        return SUCCESS;
    }
    
}
