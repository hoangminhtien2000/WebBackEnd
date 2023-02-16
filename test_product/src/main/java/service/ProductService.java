package service;

import dao.ProductDAO;
import model.Products;

import java.util.List;

public class ProductService {
    ProductDAO productDAO = new ProductDAO();

    public List<Products> getAll() {
        return productDAO.getAll();
    }

    public  boolean save(Products product){
        return productDAO.save(product);
    }

    public  Products findById(int id){
        return productDAO.findById(id);
    }

    public void delete(int id){
        productDAO.delete(id);
    }

    public void edit(Products product){
        productDAO.edit(product);
    }

}