package com.dao;

import com.models.Account;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
    private Connection connection = ConnectionMySql.getConnection();

    public Account checkLogin(String username, String password){
        String sql = "select * from account where username =? and password =?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,username);
            preparedStatement.setString(2,password);
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.next();
            int id = resultSet.getInt("id");
            String name = resultSet.getString("name");
            String img = resultSet.getString("img");
            String role = resultSet.getString("role");

            return new Account(id,username,password,name,img,role);

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}