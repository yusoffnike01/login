/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author user
 */
public class UserDao {
    
     public static Connection getConnection() {
        Connection con = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tutorial1", "root", "admin");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }
     
      public static user getLoginBySession(String username, String password,String role) {
        user e = new user();
        try {
            Connection con = UserDao.getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT*FROM user WHERE  user=? and password=? and role=?");
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3,role);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                e.setUser(rs.getString(1));
                e.setPassword(rs.getString(2));
                e.setRole(rs.getString(3));

            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return e;

    }

}
