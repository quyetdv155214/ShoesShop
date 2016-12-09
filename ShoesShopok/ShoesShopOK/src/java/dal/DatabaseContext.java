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
import model.Brand;
import model.Categori;
import model.Discount;
import model.Kind;
import model.Oder;
import model.Product;
import model.Type;
import model.User;

/**
 *
 * @author Jic
 */
public class DatabaseContext {

    public Connection connection;
    public int countProduct;
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

    public ArrayList<Product> getPagerProduct(int pageIndex, int pageSize) {
        ArrayList<Product> getPagerProduct = new ArrayList<>();
        try {
            CallableStatement call = connection.prepareCall("{call getPagerProduct(?,?)}");
            call.setInt(1, (pageIndex * pageSize - pageSize) + 1);
            call.setInt(2, pageIndex * pageSize);
            ResultSet rs = call.executeQuery();
            getProductByResultSet(rs, getPagerProduct);
        } catch (SQLException ex) {
        }
        return getPagerProduct;
    }

    public ArrayList<Product> search(int kindID, ArrayList<Integer> brandID,  ArrayList<Integer> typeID,
            int pageIndex, int pageSize) {
        ArrayList<Integer> id = new ArrayList<>();
        ArrayList<Integer> index = new ArrayList<>();
        ArrayList<Product> searchProduct = new ArrayList<>();
        String sql = "SELECT *  FROM  (select ROW_NUMBER() over ( order by [ProductID] asc ) as RowNum  , * from ProductTBL p where p.KindID = ? ";
        for (int i = 0; i < brandID.size(); i++) {
            if (i == 0) {
                sql += "  and ( p.BrandID = ? ";
                id.add(brandID.get(i));
                index.add(index.size() + 2);
            }
            if (i > 0) {
                sql += " or p.BrandID = ? ";
                id.add(brandID.get(i));
                index.add(index.size() + 2);
            }
            if((i+1)==brandID.size()) sql += " ) ";
        }
        
        for (int i = 0; i < typeID.size(); i++) {
            if (i == 0) {
                sql += "  and ( p.TypeID = ? ";
                id.add(typeID.get(i));
                index.add(index.size() + 2);
            }
            if (i > 0) {
                sql += " or p.TypeID = ? ";
                id.add(typeID.get(i));
                index.add(index.size() + 2);
            }
            if((i+1)==typeID.size()) sql += " ) ";
        }
        
        try {
            sql += " ) Result where RowNum between ? and ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, kindID);
            for (int i = 0; i < id.size(); i++) {
                statement.setInt(i + 2, id.get(i));
            }
            statement.setInt(2 + id.size(), (pageIndex * pageSize - pageSize) + 1);
            statement.setInt(3 + id.size(), pageIndex * pageSize);
            ResultSet rs = statement.executeQuery();
            getProductByResultSet(rs, searchProduct);
        } catch (SQLException ex) {
        }
        return searchProduct;
    }
    
    public int countNumberOfSearchProduct(int kindID, ArrayList<Integer> brandID,  ArrayList<Integer> typeID){
        
        ArrayList<Integer> id = new ArrayList<>();
        ArrayList<Integer> index = new ArrayList<>();
        int count = 0;
        String sql = " select COUNT(*) as totalRecord from  ( SELECT *  FROM  (select ROW_NUMBER() over ( order by [ProductID] asc ) as RowNum  , * from ProductTBL p where p.KindID = ? ";
        for (int i = 0; i < brandID.size(); i++) {
            if (i == 0) {
                sql += "  and ( p.BrandID = ? ";
                id.add(brandID.get(i));
                index.add(index.size() + 2);
            }
            if (i > 0) {
                sql += " or p.BrandID = ? ";
                id.add(brandID.get(i));
                index.add(index.size() + 2);
            }
            if((i+1)==brandID.size()) sql += " ) ";
        }
        
        for (int i = 0; i < typeID.size(); i++) {
            if (i == 0) {
                sql += "  and ( p.TypeID = ? ";
                id.add(typeID.get(i));
                index.add(index.size() + 2);
            }
            if (i > 0) {
                sql += " or p.TypeID = ? ";
                id.add(typeID.get(i));
                index.add(index.size() + 2);
            }
            if((i+1)==typeID.size()) sql += " ) ";
        }
        
        try {
            sql += " ) Result ) countt";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, kindID);
            for (int i = 0; i < id.size(); i++) {
                statement.setInt(i + 2, id.get(i));
            }
            ResultSet rs = statement.executeQuery();
            while(rs.next()){
                count = rs.getInt("totalRecord");
            }
        } catch (SQLException ex) {
        }
        
        return count;
    }

    public int getNumberOfProduct() {
        String sql = "SELECT COUNT(*) AS totalRecord FROM ProductTBL";
        int result = 0;
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                result = rs.getInt("totalRecord");
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }

    public int getNumberProductByKind(int kind) {
        String sql = "SELECT COUNT(*) AS totalRecord FROM ProductTBL WHERE KindID = ?";
        int result = 0;
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, kind);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                result = rs.getInt("totalRecord");
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }
    
//    public int getNumberOfProduct(ResultSet rs) {
//        
//    }

    public ArrayList<Product> getProductByKind(int kindID, int pageIndex, int pageSize) {
        ArrayList<Product> getProductByKind = new ArrayList<>();
        try {
            CallableStatement call = connection.prepareCall("{call getProductByKind(?,?,?)}");
            call.setInt(1, kindID);
            call.setInt(2, (pageIndex * pageSize - pageSize) + 1);
            call.setInt(3, pageIndex * pageSize);

            ResultSet rs = call.executeQuery();
            getProductByResultSet(rs, getProductByKind);
        } catch (SQLException ex) {
            System.out.println("");
        }
        return getProductByKind;
    }

    public void CreatOrder(int productID, int quantity, String email) {
        try {
            CallableStatement call = connection.prepareCall("{call CreatOrder(?,?,?)}");
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

    public ArrayList<Categori> getCategori() {
        ArrayList<Categori> categori = new ArrayList<>();
        try {
            CallableStatement call = connection.prepareCall("{call getCategori}");
            ResultSet rs = call.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                Categori c = new Categori(id, name);
                categori.add(c);
            }
        } catch (SQLException ex) {
        }
        return categori;
    }

    public ArrayList<Brand> getBrand() {
        ArrayList<Brand> brand = new ArrayList<>();
        try {
            CallableStatement call = connection.prepareCall("{call getBrand}");
            ResultSet rs = call.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                Brand b = new Brand(id, name);
                brand.add(b);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return brand;
    }

    public ArrayList<Discount> getDiscount() {
        ArrayList<Discount> discount = new ArrayList<>();
        try {
            CallableStatement call = connection.prepareCall("{call getDiscount}");
            ResultSet rs = call.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                Discount d = new Discount(id, name);
                discount.add(d);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return discount;
    }

    public ArrayList<Type> getType() {
        ArrayList<Type> type = new ArrayList<>();
        try {
            CallableStatement call = connection.prepareCall("{call getType}");
            ResultSet rs = call.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                Type t = new Type(id, name);
                type.add(t);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return type;
    }
    
    public ArrayList<Kind> getKind() {
        ArrayList<Kind> kind = new ArrayList<>();
        try {
            CallableStatement call = connection.prepareCall("{call getKind}");
            ResultSet rs = call.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                Kind k = new Kind(id, name);
                kind.add(k);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return kind;
    }

}
