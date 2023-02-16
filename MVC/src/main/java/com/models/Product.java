package com.models;

public class Product {
    private int id;
    private String name;
    private String img;
    private int price;
    private boolean status;

    public Product() {
    }

    public Product(int id, String name, String img, int price, boolean status) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.price = price;
        this.status = status;
    }

    public Product(String name, String img, int price, boolean status) {
        this.name = name;
        this.img = img;
        this.price = price;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
}
