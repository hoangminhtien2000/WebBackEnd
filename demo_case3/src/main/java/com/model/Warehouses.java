package com.model;

public class Warehouses {
    private int warehouses_id;
    private int product_id;
    private int quantity;

    public int getWarehouses_id() {
        return warehouses_id;
    }

    public void setWarehouses_id(int warehouses_id) {
        this.warehouses_id = warehouses_id;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Warehouses() {
    }

    public Warehouses(int warehouses_id, int product_id, int quantity) {
        this.warehouses_id = warehouses_id;
        this.product_id = product_id;
        this.quantity = quantity;
    }
}