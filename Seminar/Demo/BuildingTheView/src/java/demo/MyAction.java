/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package demo;

import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.Collection;

/**
 *
 * @author Kernel Dang
 */
public class MyAction extends ActionSupport {

    @Override
    public String execute() throws Exception {
        user = new User("Nguyễn Văn A", "12345678");
        users = new ArrayList<>();
        users.add(user);
        users.add(user);
        users.add(user);
        if (selectedIndex == 1) {
            return "GENERAL_TAGS";
        }
        if (selectedIndex == 2) {
            return "UI_COMPONENT_TAGS";
        }
        return "RESULT_IN_DETAIL";
    }

    private int selectedIndex;

    public int getSelectedIndex() {
        return selectedIndex;
    }

    public void setSelectedIndex(int selectedIndex) {
        this.selectedIndex = selectedIndex;
    }

    private User user;

    public User getUser() {
        return user;
    }
    
    private ArrayList<User> users;

    public ArrayList<User> getUsers() {
        return users;
    }

    public void setUsers(ArrayList<User> users) {
        this.users = users;
    }
    
}
