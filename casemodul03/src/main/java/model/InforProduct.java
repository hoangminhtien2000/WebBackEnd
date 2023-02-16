package model;

public class InforProduct {
    private int product_id;
    private String product_name;
    private String url_img;
    private double price;
    private int quantity;
    private int status;
    private String size_name;
    private String color_name;
    private String type_name;

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

    public String getUrl_img() {
        return url_img;
    }

    public void setUrl_img(String url_img) {
        this.url_img = url_img;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getSize_name() {
        return size_name;
    }

    public void setSize_name(String size_name) {
        this.size_name = size_name;
    }

    public String getColor_name() {
        return color_name;
    }

    public void setColor_name(String color_name) {
        this.color_name = color_name;
    }

    public String getType_name() {
        return type_name;
    }

    public void setType_name(String type_name) {
        this.type_name = type_name;
    }

    public InforProduct() {
    }

    public InforProduct(int product_id, String product_name, String url_img, double price, int quantity, int status, String size_name, String color_name, String type_name) {
        this.product_id = product_id;
        this.product_name = product_name;
        this.url_img = url_img;
        this.price = price;
        this.quantity = quantity;
        this.status = status;
        this.size_name = size_name;
        this.color_name = color_name;
        this.type_name = type_name;
    }
}
