/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.regex.Pattern;

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
        }
    }
}
