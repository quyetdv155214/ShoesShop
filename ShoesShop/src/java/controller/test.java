/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.regex.Pattern;

import dal.DatabaseContext;
import java.util.ArrayList;
import java.util.regex.Pattern;
import model.Product;

/**
 *
 * @author Jic
 */
public class test {

    public static void main(String[] args) {
        Pattern pattern = Pattern.compile(".*[^0-9].*");

        String[] inputs = {"0123456789", "-123", "123.12", "abcd123"};

        for (String input : inputs) {
            System.out.println("does " + input + " is number : "
                    + !pattern.matcher(input).matches());
//        Pattern pattern = Pattern.compile(".*[^0-9].*");
//
//        String[] inputs = {"0123456789", "-123", "123.12", "abcd123"};
//
//        for (String input : inputs) {
//            System.out.println("does " + input + " is number : "
//                    + !pattern.matcher(input).matches());
//        }
        DatabaseContext db = new DatabaseContext();
        ArrayList<Integer> i = new ArrayList<>();
        i.add(1);
        ArrayList<Product> productByKind = db.getProductByKind(i);
        for (Product product : productByKind) {
            System.out.println(product);
        }
    }
}
}
