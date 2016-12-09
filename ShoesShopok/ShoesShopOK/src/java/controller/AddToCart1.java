/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.DatabaseContext;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart;
import model.Product;

/**
 *
 * @author q
 */
public class AddToCart1 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String sid = request.getParameter("id").trim();
        int productId = Integer.parseInt(sid);
        String q = request.getParameter("quantity").trim();
        if (q == null) {
            q = "1";
        }
        int quantity = Integer.parseInt(q);
        DatabaseContext db = new DatabaseContext();
        Product product = db.getProductByID(productId);

        //
        HttpSession session = request.getSession();

        ArrayList<Cart> cart = (ArrayList<Cart>) session.getAttribute("cart");

        if (cart == null) {
            cart = new ArrayList<>();
        }
        boolean check = false;
        for (Cart c : cart) {
            if (c.getProduct().getProductID() == productId) {
                c.setQuantity(c.getQuantity() + quantity);
                check = true;
                break;
            }
        }
        if (!check) {
            cart.add(new Cart(product, 1));
        }
        session.setAttribute("cart", cart);
        request.setAttribute("product", product);
        request.getRequestDispatcher("single.jsp").forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}