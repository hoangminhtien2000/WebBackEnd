package com.models;

import java.util.LinkedList;
import java.util.List;

public class ListProduct {
    public static List<Product> products = new LinkedList<>();

    static {
        products.add(new Product(1, "Iphone", "https://cdn.tgdd.vn/Products/Images/42/289705/iphone-14-pro-max-tim-thumb-600x600.jpg", 33000000, true));
        products.add(new Product(2, "K40Gaming", "https://cdn.tgdd.vn/Products/Images/42/238046/xiaomi-redmi-k40-game-enhanced-edition-600x600.jpg", 33000000, false));
    }

    public static int findByIndexID(int id) {
        for (int i = 0; i < products.size(); i++) {
            if (products.get(i).getId()==id) return i;
        }
        return -1;
    }

    public static Product findById(int id){
        for (Product product : products) {
            if (product.getId()==id) return product;
        }
        return null;
    }

    public static void create(Product product) {
        products.add(product);
    }

    public static void edit(int index, Product product) {
        products.set(index, product);
    }

    public static void delete(int index) {
        products.remove(index);
    }


}
