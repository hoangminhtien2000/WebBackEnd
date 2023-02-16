package dao;

import model.Products;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
    static Connection connection = ConnectionMySql.getConnection();

    public List<Products> getAll() {
        List<Products> products = new ArrayList<>();
        String sql = "Select * from products";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int product_id = resultSet.getInt("product_id");
                String product_name = resultSet.getString("product_name");
                String img = resultSet.getString("img");
                double price = resultSet.getDouble("price");
                int status = resultSet.getInt("status");
                String size = resultSet.getString("size");
                String color = resultSet.getString("color");
                String type = resultSet.getString("type");
                products.add(new Products(product_id, product_name, img, price, status, size, color, type));
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return products;
    }

    public boolean save(Products product) {
        String sql = "insert into products(product_name,img,price,status,size,color,type) value (?,?,?,?,?,?,?)";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, product.getProduct_name());
            preparedStatement.setString(2, product.getImg());
            preparedStatement.setDouble(3, product.getPrice());
            preparedStatement.setInt(4, product.getStatus());
            preparedStatement.setString(5, product.getSize());
            preparedStatement.setString(6, product.getColor());
            preparedStatement.setString(7, product.getType());
            return preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public Products findById(int product_id) {
        String sql = "select * from products where product_id = " + product_id;
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            resultSet.next();
            String product_name = resultSet.getString("product_name");
            String img = resultSet.getString("img");
            double price = resultSet.getDouble("price");
            int status = resultSet.getInt("status");
            String size = resultSet.getString("size");
            String color = resultSet.getString("color");
            String type = resultSet.getString("type");
            return new Products(product_id, product_name, img, price, status, size, color, type);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void delete(int id) {
        String sql = "delete FROM products where product_id = " + id;
        try {
            Statement statement = connection.createStatement();
            statement.execute(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean edit(Products product) {
        String sql = "update products set product_name=?,img=?, price=?,status=?,size=?,color=?,type=?  where product_id=?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(8, product.getProduct_id());
            preparedStatement.setString(1, product.getProduct_name());
            preparedStatement.setString(2, product.getImg());
            preparedStatement.setDouble(3, product.getPrice());
            preparedStatement.setInt(4, product.getStatus());
            preparedStatement.setString(5, product.getSize());
            preparedStatement.setString(6, product.getColor());
            preparedStatement.setString(7, product.getType());
            return preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

}
