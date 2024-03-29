package com.service;

import com.dao.ProductDAO;
import com.models.Product;

import java.util.List;

public class ProductService {

    public static List<Product> getAll(){
        return ProductDAO.getAll();
    }

    public static Product findById(int id){
        return ProductDAO.findById(id);
    }

    public static boolean save(Product product){
        return ProductDAO.save(product);
    }

    public static void edit(Product product){
        ProductDAO.edit(product);
    }

    public static void delete(int id){
        ProductDAO.delete(id);
    }
}
