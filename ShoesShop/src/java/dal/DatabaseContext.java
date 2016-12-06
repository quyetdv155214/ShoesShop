/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Jic
 */
public class DatabaseContext {
    public Connection connection;

    public DatabaseContext() {
        try {
            String username = "prj321";
            String password = "12345";
            String url = "jdbc:sqlserver://localhost;databaseName=ShoesShop";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, username, password);
            connection.setAutoCommit(true);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DatabaseContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void insertUser() {
        String sql = "";
    }
}
