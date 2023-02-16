package service;

import dao.ProductDAO;
import model.*;

import java.util.List;

public class ProductService {
    ProductDAO productDAO = new ProductDAO();

    public List<InforProduct> getAll() {
        return productDAO.getAll();
    }

    public boolean saveImg(Imgs imgs) {
        return productDAO.saveImg(imgs);
    }

    public boolean saveWarehouse(Warehouses warehouses) {
        return productDAO.saveWarehouse(warehouses);
    }

    public boolean saveProduct(Products product) {
        return productDAO.saveProduct(product);
    }

    public List<Products> getProduct() {
        return productDAO.getProduct();
    }

    public Imgs findByIdImg(String url_img, int product_id) {
        return productDAO.findByIdImg(url_img, product_id);
    }

    public Warehouses findByIdWarehouse( int product_id) {
        return productDAO.findByIdWarehouse(product_id);
    }

    public Products findByIdProduct(int product_id) {
        return productDAO.findByIdProduct(product_id);
    }

    public void deleteImg(String url_img, int product_id) {
        productDAO.deleteImg(url_img, product_id);
    }

    public void deleteWarehouse(int warehouse_id, int product_id) {
        productDAO.deleteWarehouse(warehouse_id, product_id);
    }

    public void deleteProduct(int product_id) {
        productDAO.deleteProduct(product_id);
    }

    public void editProduct(Products product){
        productDAO.editProduct(product);
    }

    public void editWarehouse(Warehouses warehouses){
        productDAO.editWarehouse(warehouses);
    }

}
