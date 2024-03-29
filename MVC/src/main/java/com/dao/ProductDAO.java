package com.dao;

import com.models.Product;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;

public class ProductDAO {

    static Connection connection = ConnectionMySql.getConnection();

    public static List<Product> getAll() {
        List<Product> products = new LinkedList<>();
        String sql = "Select * from product";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String img = resultSet.getString("img");
                int price = resultSet.getInt("price");
                products.add(new Product(id, name, img, price, true));
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return products;
    }

    public static boolean save(Product product) {
        String sql = "insert into product(name,img,price) value (?,?,?)";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, product.getName());
            preparedStatement.setString(2, product.getImg());
            preparedStatement.setInt(3, product.getPrice());
            return preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean edit(Product product) {
        String sql = "update product set name=?, img=?, price=? where id=?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(4, product.getId());
            preparedStatement.setString(1, product.getName());
            preparedStatement.setString(2, product.getImg());
            preparedStatement.setInt(3, product.getPrice());
            return preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static Product findById(int id) {
        String sql = "select * from product where id = " + id;
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            resultSet.next();
            String name = resultSet.getString("name");
            String img = resultSet.getString("img");
            int price = resultSet.getInt("price");
            return new Product(name, img, price, true);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void delete(int id) {
        String sql = "delete FROM product where id = " + id;
        try {
            Statement statement = connection.createStatement();
            statement.execute(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}