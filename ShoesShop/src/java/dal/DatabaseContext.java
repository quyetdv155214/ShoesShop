/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Oder;
import model.Product;
import model.User;

/**
 *
 * @author Jic
 */
public class DatabaseContext {

    public Connection connection;

    public DatabaseContext() {
        try {
            String username = "shoesshop";
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

        try {
            CallableStatement call = connection.prepareCall("{call CreatUser(?,?,?,?,?)}");
            call.setString(1, user.getFirstName());
            call.setString(2, user.getLastName());
            call.setString(3, user.getEmail());
            call.setString(4, user.getPassword());
            call.setString(5, user.getMobile());
            call.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseContext.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public User checkUser(String username, String password) {
        User user = null;
        try {
            CallableStatement call = connection.prepareCall("{call CheckLogin(?,?)}");
            call.setString(1, username);
            call.setString(2, password);
            ResultSet rs = call.executeQuery();
            if (rs.next()) {
                String FirstName = rs.getString("FirstName");
                String LastName = rs.getString("LastName");
                String Email = rs.getString("Email");
                String MobieNumber = rs.getString("MobieNumber");
                user = new User(FirstName, LastName, Email, null, MobieNumber);
            }
        } catch (SQLException ex) {
        }
        return user;
    }

    public void getProductByResultSet(ResultSet rs, ArrayList<Product> products) {
        try {
            while (rs.next()) {
                int ProductID = rs.getInt("ProductID");
                String ProductName = rs.getString("ProductName");
                int BrandID = rs.getInt("BrandID");
                int TypeID = rs.getInt("TypeID");
                int DiscountID = rs.getInt("DiscountID");
                int CategoriID = rs.getInt("CategoriID");
                int KindID = rs.getInt("KindID");
                String Url = rs.getString("Url");
                float Price = rs.getFloat("Price");
                String Detail = rs.getString("Detail");
                Product p = new Product(ProductID, ProductName, BrandID, TypeID, DiscountID, CategoriID, KindID, Url, Price, Detail);
                products.add(p);
            }
        } catch (Exception e) {
        }

    }

    public ArrayList<Product> getAllProduct() {
        ArrayList<Product> getAllProduct = new ArrayList<>();
        try {
            CallableStatement call = connection.prepareCall("{call getAllProduct}");
            ResultSet rs = call.executeQuery();
            getProductByResultSet(rs, getAllProduct);
        } catch (SQLException ex) {
        }

        return getAllProduct;
    }

    public ArrayList<Product> getProductByBrand(ArrayList<Integer> brandID) {
        ArrayList<Product> getProductByBrand = new ArrayList<>();
        for (int i : brandID) {
            try {
                CallableStatement call = connection.prepareCall("{call getProductByBrand(?)}");
                call.setInt(1, i);
                ResultSet rs = call.executeQuery();
                getProductByResultSet(rs, getProductByBrand);
            } catch (SQLException ex) {
            }
        }

        return getProductByBrand;
    }

    public ArrayList<Product> getProductByCategori(ArrayList<Integer> categoriID) {
        ArrayList<Product> getProductByCategori = new ArrayList<>();
        for (int i : categoriID) {
            try {
                CallableStatement call = connection.prepareCall("{call getProductByCategori(?)}");
                call.setInt(1, i);
                ResultSet rs = call.executeQuery();
                getProductByResultSet(rs, getProductByCategori);
            } catch (SQLException ex) {
            }
        }

        return getProductByCategori;
    }

    public ArrayList<Product> getProductByDiscount(ArrayList<Integer> discountID) {
        ArrayList<Product> getProductByDiscount = new ArrayList<>();
        for (int i : discountID) {
            try {
                CallableStatement call = connection.prepareCall("{call getProductByDiscount(?)}");
                call.setInt(1, i);
                ResultSet rs = call.executeQuery();
                getProductByResultSet(rs, getProductByDiscount);
            } catch (SQLException ex) {
            }
        }

        return getProductByDiscount;
    }

    public ArrayList<Product> getProductByKind(ArrayList<Integer> kindID) {
        ArrayList<Product> getProductByKind = new ArrayList<>();
        for (int i : kindID) {
            try {
                CallableStatement call = connection.prepareCall("{call getProductByKind(?)}");
                call.setInt(1, i);
                ResultSet rs = call.executeQuery();
                getProductByResultSet(rs, getProductByKind);
            } catch (SQLException ex) {
                System.out.println("");
            }
        }

        return getProductByKind;
    }

    public ArrayList<Product> getProductByType(ArrayList<Integer> typeID) {
        ArrayList<Product> getProductByType = new ArrayList<>();
        for (int i : typeID) {
            try {
                CallableStatement call = connection.prepareCall("{call getProductByType(?)}");
                call.setInt(1, i);
                ResultSet rs = call.executeQuery();
                getProductByResultSet(rs, getProductByType);
            } catch (SQLException ex) {
            }
        }

        return getProductByType;
    }

    public void CreatOrder(int productID, int quantity, String email) {
        try {
            CallableStatement call = connection.prepareCall("{call CheckLogin(?,?,?)}");
            call.setInt(1, productID);
            call.setInt(2, quantity);
            call.setString(3, email);
            call.executeUpdate();

        } catch (SQLException ex) {
        }
    }

    public void DeleteOrder(int productID) {

        try {
            CallableStatement call = connection.prepareCall("{call DeleteOrder(?)}");
            call.setInt(1, productID);
            call.executeUpdate();

        } catch (SQLException ex) {
        }

    }

    public void ChangePassword(String email, String password) {
        try {
            CallableStatement call = connection.prepareCall("{call CheckLogin(?,?)}");
            call.setString(1, email);
            call.setString(2, password);
            call.executeUpdate();

        } catch (SQLException ex) {
        }
    }

    public ArrayList<Oder> getOrderOfUser(String email) {
        ArrayList<Oder> getOrderOfUser = new ArrayList<>();
        try {
            CallableStatement call = connection.prepareCall("{call getOrderOfUser(?)}");
            call.setString(1, email);
            ResultSet rs = call.executeQuery();
            while (rs.next()) {
                int OrderID = rs.getInt("OrderID");
                int ProductID = rs.getInt("ProductID");
                int Quantity = rs.getInt("Quantity");
                String Email = rs.getString("Email");
            }
        } catch (SQLException ex) {
        }

        return getOrderOfUser;
    }

    public Product getProductByID(int id) {
        String sql = "SELECT [ProductID]"
                + "      ,[ProductName]"
                + "      ,[BrandID]"
                + "      ,[TypeID]"
                + "      ,[DiscountID]"
                + "      ,[CategoriID]"
                + "      ,[KindID]"
                + "      ,[Url]"
                + "      ,[Price]"
                + "      ,[Detail]"
                + "  FROM [dbo].[ProductTBL] where ProductID =? ";
        Product product = null;

        PreparedStatement ps;
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                int ProductID = rs.getInt("ProductID");
                String ProductName = rs.getString("ProductName");
                int BrandID = rs.getInt("BrandID");
                int TypeID = rs.getInt("TypeID");
                int DiscountID = rs.getInt("DiscountID");
                int CategoriID = rs.getInt("CategoriID");
                int KindID = rs.getInt("KindID");
                String Url = rs.getString("Url");
                float Price = rs.getFloat("Price");
                String Detail = rs.getString("Detail");
                product = new Product(ProductID, ProductName, BrandID, TypeID, DiscountID, CategoriID, KindID, Url, Price, Detail);

            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return product;
    }

}
