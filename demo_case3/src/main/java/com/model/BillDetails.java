package com.model;

public class BillDetails {
    private int bill_id;
    private int product_id;
    private int unit;

    public int getBill_id() {
        return bill_id;
    }

    public void setBill_id(int bill_id) {
        this.bill_id = bill_id;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getUnit() {
        return unit;
    }

    public void setUnit(int unit) {
        this.unit = unit;
    }

    public BillDetails() {
    }

    public BillDetails(int bill_id, int product_id, int unit) {
        this.bill_id = bill_id;
        this.product_id = product_id;
        this.unit = unit;
    }
}