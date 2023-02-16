package com.service;

import com.dao.UserDAO;
import com.models.Account;

public class UserService {
    UserDAO userDAO = new UserDAO();

    public Account checkLogin(String username, String password){
        return userDAO.checkLogin(username,password);
    }
}
