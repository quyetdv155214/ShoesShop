/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author FLY
 */
public class Product {
    private Integer productID;
    private String productName;
    private int brandID;
    private int typeID;
    private int discountID;
    private int categoriID;
    private int kindID;
    private String url;
    private float price;
    private String detail;

    public Product() {
    }

    public Product(Integer productID, String productName, int brandID, int typeID, int discountID, int categoriID, int kindID, String url, float price, String detail) {
        this.productID = productID;
        this.productName = productName;
        this.brandID = brandID;
        this.typeID = typeID;
        this.discountID = discountID;
        this.categoriID = categoriID;
        this.kindID = kindID;
        this.url = url;
        this.price = price;
        this.detail = detail;
    }

    public Integer getProductID() {
        return productID;
    }

    public void setProductID(Integer productID) {
        this.productID = productID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getBrandID() {
        return brandID;
    }

    public void setBrandID(int brandID) {
        this.brandID = brandID;
    }

    public int getTypeID() {
        return typeID;
    }

    public void setTypeID(int typeID) {
        this.typeID = typeID;
    }

    public int getDiscountID() {
        return discountID;
    }

    public void setDiscountID(int discountID) {
        this.discountID = discountID;
    }

    public int getCategoriID() {
        return categoriID;
    }

    public void setCategoriID(int categoriID) {
        this.categoriID = categoriID;
    }

    public int getKindID() {
        return kindID;
    }

    public void setKindID(int kindID) {
        this.kindID = kindID;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    
    
}
