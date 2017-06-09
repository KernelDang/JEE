/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interceptor.admin;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import java.util.Map;

/**
 *
 * @author Kernel Dang
 * check user have login or not
 */
public class SecurityInterceptor extends AbstractInterceptor{

    @Override
    public String intercept(ActionInvocation ai) throws Exception {
        
        //get session
        Map<String, Object> session = ai.getInvocationContext().getSession();
        String actionName = ai.getInvocationContext().getName();
        
        // read accont sesion
        if (session.get("account") == null) {
            if(actionName.equals("login"))
                return ai.invoke();
            // if user have not logged in, return login page
            return Action.LOGIN;
        } else {
            // if action is login, don't need to login again
            if(actionName.equals("login"))
                return Action.SUCCESS;
            return ai.invoke();
        }
    }
    
}
