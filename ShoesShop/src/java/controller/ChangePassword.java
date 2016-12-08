/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.DatabaseContext;
import java.io.IOException;
import java.util.Base64;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jic
 */
public class ChangePassword extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String mail = request.getParameter("userMail");
        request.setAttribute("userMail", mail);
        request.getRequestDispatcher("changepassword.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String mail = request.getParameter("userMail");
        String oldPass = request.getParameter("oldPassword");
        String newPass = request.getParameter("newPassword");
        String reNewPass = request.getParameter("reNewPassword");

        oldPass = Base64.getEncoder().encodeToString(oldPass.getBytes());

        DatabaseContext db = new DatabaseContext();
        boolean isFail = false;

        if (db.checkUser(mail, oldPass) == null) {
            request.setAttribute("oldPassFail", "oldPassFail");
            isFail = true;
        }

        if (newPass.length() < 6) {
            request.setAttribute("newPassShort", "newPassShort");
            isFail = true;
        }

        if (!newPass.equals(reNewPass)) {
            request.setAttribute("newPassFail", "newPassFail");
            isFail = true;
        }

        if (isFail) {
            request.getRequestDispatcher("changepassword.jsp").forward(request, response);
            return;
        } else {
            db.ChangePassword(mail, Base64.getEncoder().encodeToString(newPass.getBytes()));
            response.sendRedirect("index");
        }

//        response.getWriter().print(mail);
//        response.getWriter().print(oldPass);
//        response.getWriter().print(newPass);
//        response.getWriter().print(reNewPass);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
