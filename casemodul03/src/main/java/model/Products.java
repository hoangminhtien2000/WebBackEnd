package model;

public class Products {
    private int product_id;
    private String product_name;
    private double price;
    private int status;
    private int size_id;
    private int color_id;
    private int type_id;

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getSize_id() {
        return size_id;
    }

    public void setSize_id(int size_id) {
        this.size_id = size_id;
    }

    public int getColor_id() {
        return color_id;
    }

    public void setColor_id(int color_id) {
        this.color_id = color_id;
    }

    public int getType_id() {
        return type_id;
    }

    public void setType_id(int type_id) {
        this.type_id = type_id;
    }

    public Products() {
    }

    public Products(int product_id, String product_name, double price, int status, int size_id, int color_id, int type_id) {
        this.product_id = product_id;
        this.product_name = product_name;
        this.price = price;
        this.status = status;
        this.size_id = size_id;
        this.color_id = color_id;
        this.type_id = type_id;
    }

    public Products(int product_id, String product_name, double price, int size_id, int color_id, int type_id) {
        this.product_id = product_id;
        this.product_name = product_name;
        this.price = price;
        this.size_id = size_id;
        this.color_id = color_id;
        this.type_id = type_id;
    }

    public Products(String product_name, double price, int size_id, int color_id, int type_id) {
        this.product_name = product_name;
        this.price = price;
        this.size_id = size_id;
        this.color_id = color_id;
        this.type_id = type_id;
    }
}