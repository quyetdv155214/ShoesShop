/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.DatabaseContext;
import java.util.ArrayList;
import model.Product;

/**
 *
 * @author Jic
 */
public class testPagger {
    public static void main(String[] args) {
        DatabaseContext db = new DatabaseContext();
        ArrayList<Product> allProduct = db.getProductByKind(1, 1, 9);
        for (Product product : allProduct) {
            System.out.println(product.getProductName());
        }
    }
}
