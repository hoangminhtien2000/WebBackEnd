package dao;

import model.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

public class ProductDAO {

    static Connection connection = ConnectionMySql.getConnection();

    public List<InforProduct> getAll() {
        List<InforProduct> inforProducts = new LinkedList<>();
        String sql = "SELECT products.product_id, products.product_name, imgs.url_img, products.price, warehouses.quantity, products.status,sizes.size_name,colors.color_name,types.type_name  \n" +
                "FROM imgs\n" +
                "JOIN products USING(product_id) \n" +
                "JOIN sizes USING(size_id)\n" +
                "JOIN colors USING(color_id)\n" +
                "JOIN types USING(type_id)\n" +
                "JOIN warehouses USING(product_id)\n" +
                "ORDER BY product_id";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int product_id = resultSet.getInt("product_id");
                String product_name = resultSet.getString("product_name");
                String url_img = resultSet.getString("url_img");
                double price = resultSet.getInt("price");
                int quantity = resultSet.getInt("quantity");
                int status = resultSet.getInt("status");
                String size_name = resultSet.getString("size_name");
                String color_name = resultSet.getString("color_name");
                String type_name = resultSet.getString("type_name");
                inforProducts.add(new InforProduct(product_id, product_name, url_img, price, quantity, status, size_name, color_name, type_name));
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return inforProducts;
    }

    public List<Products> getProduct() {
        List<Products> products = new LinkedList<>();
        String sql = "Select * from products";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int product_id = resultSet.getInt("product_id");
                String product_name = resultSet.getString("product_name");
                double price = resultSet.getDouble("price");
                int status = resultSet.getInt("status");
                int size_id = resultSet.getInt("size_id");
                int color_id = resultSet.getInt("color_id");
                int type_id = resultSet.getInt("type_id");
                products.add(new Products(product_id, product_name, price, status, size_id, color_id, type_id));
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return products;
    }

    public boolean saveImg(Imgs imgs) {
        String sql = "insert into imgs (url_img,product_id) value (?,?)";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, imgs.getUrl_img());
            preparedStatement.setInt(2, imgs.getProduct_id());
            return preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean saveWarehouse(Warehouses warehouses) {
        String sql = "insert into warehouses(product_id,quantity) value (?,?)";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, warehouses.getProduct_id());
            preparedStatement.setInt(2, warehouses.getQuantity());
            return preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean saveProduct(Products product) {
        String sql = "insert into products(product_name,price,size_id,color_id,type_id) value (?,?,?,?,?)";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, product.getProduct_name());
            preparedStatement.setDouble(2, product.getPrice());
            preparedStatement.setInt(3, product.getSize_id());
            preparedStatement.setInt(4, product.getColor_id());
            preparedStatement.setInt(5, product.getType_id());
            return preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }


    public Imgs findByIdImg(String url_img, int product_id) {
        String sql = "select * from imgs where url_img ='" + url_img + "' and product_id =" + product_id;

        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            resultSet.next();
            int img_id = resultSet.getInt("img_id");
            return new Imgs(img_id, url_img, product_id);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public Warehouses findByIdWarehouse( int product_id) {
        String sql = "select * from warehouses where  product_id = " + product_id;
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            resultSet.next();
            int quantity = resultSet.getInt("quantity");
            int warehouse_id = resultSet.getInt("warehouse_id");
            return new Warehouses(warehouse_id, product_id, quantity);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public Products findByIdProduct(int product_id) {
        String sql = "select * from products where product_id =" + product_id;
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            resultSet.next();
            String product_name = resultSet.getString("product_name");
            double price = resultSet.getDouble("price");
            int status = resultSet.getInt("status");
            int size_id = resultSet.getInt("size_id");
            int color_id = resultSet.getInt("color_id");
            int type_id = resultSet.getInt("type_id");
            return new Products(product_id, product_name, price, status, size_id, color_id, type_id);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void deleteImg(String url_img, int product_id) {
        String sql = "delete from imgs where url_img ='" + url_img + "' and product_id =" + product_id;
        try {
            Statement statement = connection.createStatement();
            statement.execute(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteWarehouse(int quantity, int product_id) {
        String sql = "delete from warehouses where quantity = " + quantity + " and product_id = " + product_id;
        try {
            Statement statement = connection.createStatement();
            statement.execute(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteProduct(int product_id) {
        String sql = "delete from products where product_id = " + product_id;
        try {
            Statement statement = connection.createStatement();
            statement.execute(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean editProduct(Products product) {
        String sql = "update products set product_name=?, price=?,size_id=?,color_id=?,type_id=?  where product_id=?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(6, product.getProduct_id());
            preparedStatement.setString(1, product.getProduct_name());
            preparedStatement.setDouble(2, product.getPrice());
            preparedStatement.setInt(3, product.getSize_id());
            preparedStatement.setInt(4, product.getColor_id());
            preparedStatement.setInt(5, product.getType_id());
            return preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean editWarehouse(Warehouses warehouses) {
        String sql = "UPDATE warehouses SET quantity=?,product_id=? WHERE warehouse_id=?;";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(3, warehouses.getProduct_id());
            preparedStatement.setInt(1, warehouses.getQuantity());
            preparedStatement.setInt(2, warehouses.getWarehouses_id());
            return preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

}