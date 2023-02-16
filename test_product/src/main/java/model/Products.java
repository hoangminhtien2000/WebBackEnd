package model;

public class Products {
    private int product_id;
    private String product_name;
    private String img;
    private double price;
    private int status;
    private String size;
    private String color;
    private String type;

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

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
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

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Products() {
    }

    public Products(int product_id, String product_name, String img, double price, int status, String size, String color, String type) {
        this.product_id = product_id;
        this.product_name = product_name;
        this.img = img;
        this.price = price;
        this.status = status;
        this.size = size;
        this.color = color;
        this.type = type;
    }

    public Products(String product_name, String img, double price, int status, String size, String color, String type) {
        this.product_name = product_name;
        this.img = img;
        this.price = price;
        this.status = status;
        this.size = size;
        this.color = color;
        this.type = type;
    }
}