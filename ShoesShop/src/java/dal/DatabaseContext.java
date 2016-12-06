/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;

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

    public void insertUser(User user) {
        String sql = "INSERT INTO [UserTBL] ([FirstName], [LastName], [Email], [Password], [MobieNumber]) VALUES(?,?,?,?,?)";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, user.getFirstName());
            statement.setString(2, user.getLastName());
            statement.setString(3, user.getEmail());
            statement.setString(4, user.getPassword());
            statement.setString(5, user.getMobile());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
}
