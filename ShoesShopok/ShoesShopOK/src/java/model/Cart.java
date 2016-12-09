/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author q
 */
public class Cart {

    private Product product;
    private int quantity;

    public static float totalMoney(ArrayList<Cart> cart) {
        int totalMoney = 0;
        for (Cart c : cart) {
            totalMoney += (c.getProduct().getPrice() * c.getQuantity());
        }

        return totalMoney;
    }

    public static int totalProduct(ArrayList<Cart> cart) {
        int totalProduct = 0;
        for (Cart c : cart) {
            totalProduct ++;
        }

        return totalProduct;
    }

    public Cart(Product product, int quantity) {
        this.product = product;
        this.quantity = quantity;

    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

}
