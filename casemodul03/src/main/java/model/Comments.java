package model;

public class Comments {
    private int comment_id;
    private String content;
    int product_id;
    int user_id;

    public int getComment_id() {
        return comment_id;
    }

    public void setComment_id(int comment_id) {
        this.comment_id = comment_id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public Comments() {
    }

    public Comments(int comment_id, String content, int product_id, int user_id) {
        this.comment_id = comment_id;
        this.content = content;
        this.product_id = product_id;
        this.user_id = user_id;
    }
}