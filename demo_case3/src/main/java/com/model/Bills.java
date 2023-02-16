package com.model;

import java.util.Date;

public class Bills {
    private int bill_id;
    private int user_id;
    private Date date = new Date();

    public int getBill_id() {
        return bill_id;
    }

    public void setBill_id(int bill_id) {
        this.bill_id = bill_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Bills() {
    }

    public Bills(int bill_id, int user_id, Date date) {
        this.bill_id = bill_id;
        this.user_id = user_id;
        this.date = date;
    }
}