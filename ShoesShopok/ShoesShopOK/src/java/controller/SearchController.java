/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.DatabaseContext;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Product;

/**
 *
 * @author FLY
 */
public class SearchController extends HttpServlet {

    DatabaseContext db = new DatabaseContext();

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
        
        HttpSession session = request.getSession(true);

        int kindID = Integer.parseInt(request.getParameter("kindID"));

        String brandIDString[] = request.getParameterValues("brandID");
        String typeIDString[] = request.getParameterValues("typeID");
        if (brandIDString == null) {
            brandIDString = new String[0];
        }
        if (typeIDString == null) {
            typeIDString = new String[0];
        }

        ArrayList<Integer> brandID = new ArrayList<>();
        response.getWriter().println("BrandID: ");
        for (int i = 0; i < brandIDString.length; i++) {
            brandID.add(Integer.parseInt(brandIDString[i]));
            response.getWriter().println(brandID.get(i));
        }

        ArrayList<Integer> typeID = new ArrayList<>();
        response.getWriter().println("TypeID: ");
        for (int i = 0; i < typeIDString.length; i++) {
            typeID.add(Integer.parseInt(typeIDString[i]));
            response.getWriter().println(typeID.get(i));
        }

        String pageIndexString = request.getParameter("pageIndex");
        pageIndexString = (pageIndexString == null) ? "1" : pageIndexString;
        int pageIndex = Integer.parseInt(pageIndexString.trim());

        int pageCount = db.countNumberOfSearchProduct(pageIndex, brandID, typeID) / 9;
        if (db.getNumberOfProduct() / 9 != 0) {
            pageCount += 1;
        }
        ArrayList<Product> searchProduct = db.search(kindID, brandID, typeID, pageIndex, 9);
        response.getWriter().println("Product count: " + db.countNumberOfSearchProduct(pageIndex, brandID, typeID));
        response.getWriter().println("Product: " + searchProduct.size());
        for (Product product : searchProduct) {
            response.getWriter().println(product.getProductName());
            response.getWriter().println("---------------------------------");
        }

        request.setAttribute("kindID", kindID);
        request.setAttribute("pageIndex", pageIndex);
        request.setAttribute("pageCount", pageCount);
        request.setAttribute("products", searchProduct);
        request.getRequestDispatcher("products.jsp").forward(request, response);

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
processRequest(request, response);
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
