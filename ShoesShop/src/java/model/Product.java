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
    private Integer ProductID;
    private String ProductName;
    private int BrandID;
    private int TypeID;
    private int DiscountID;
    private int CategoriID;
    private int KindID;
    private String Url;
    private float Price;
    private String detail;

    public float getPrice() {
        return Price;
    }

    public void setPrice(float Price) {
        this.Price = Price;
    }

    public Product() {
    }

    public Product(int ProductID, String ProductName, int BrandID, int TypeID, int DiscountID, int CategoriID, int KindID, String Url, float Price, String detail) {
        this.ProductID = ProductID;
        this.ProductName = ProductName;
        this.BrandID = BrandID;
        this.TypeID = TypeID;
        this.DiscountID = DiscountID;
        this.CategoriID = CategoriID;
        this.KindID = KindID;
        this.Url = Url;
        this.Price = Price;
        this.detail = detail;
    }

    
    

    public int getProductID() {
        return ProductID;
    }

    public void setProductID(int ProductID) {
        this.ProductID = ProductID;
    }

    public String getProductName() {
        return ProductName;
    }

    public void setProductName(String ProductName) {
        this.ProductName = ProductName;
    }

    public int getBrandID() {
        return BrandID;
    }

    public void setBrandID(int BrandID) {
        this.BrandID = BrandID;
    }

    public int getTypeID() {
        return TypeID;
    }

    public void setTypeID(int TypeID) {
        this.TypeID = TypeID;
    }

    public int getDiscountID() {
        return DiscountID;
    }

    public void setDiscountID(int DiscountID) {
        this.DiscountID = DiscountID;
    }

    public int getCategoriID() {
        return CategoriID;
    }

    public void setCategoriID(int CategoriID) {
        this.CategoriID = CategoriID;
    }

    public int getKindID() {
        return KindID;
    }

    public void setKindID(int KindID) {
        this.KindID = KindID;
    }

    public String getUrl() {
        return Url;
    }

    public void setUrl(String Url) {
        this.Url = Url;
    }

    @Override
    public String toString() {
        return "Product{" + "ProductID=" + ProductID + ", ProductName=" + ProductName + ", BrandID=" + BrandID + ", TypeID=" + TypeID + ", DiscountID=" + DiscountID + ", CategoriID=" + CategoriID + ", KindID=" + KindID + ", Url=" + Url + ", Price=" + Price + ", detail=" + detail + '}';
    }
    
    
    
    
}
