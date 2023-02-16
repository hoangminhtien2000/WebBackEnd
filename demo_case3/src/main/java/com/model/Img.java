package com.model;

public class Img {
    private int img_id;
    private String url_img;
    int product_id;

    public int getImg_id() {
        return img_id;
    }

    public void setImg_id(int img_id) {
        this.img_id = img_id;
    }

    public String getUrl_img() {
        return url_img;
    }

    public void setUrl_img(String url_img) {
        this.url_img = url_img;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public Img() {
    }

    public Img(int img_id, String url_img, int product_id) {
        this.img_id = img_id;
        this.url_img = url_img;
        this.product_id = product_id;
    }
}
