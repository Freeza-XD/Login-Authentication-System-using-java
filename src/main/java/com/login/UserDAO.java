package com.login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
    public boolean registerUser(User user){
        String sql = "INSERT INTO users(username,email,password) VALUES(?,?,?)";

        try (Connection con = DBConnection.getConnection()) {
            int rows;
                PreparedStatement ps= con.prepareStatement(sql);
                ps.setString(1, user.getUsername());
                ps.setString(2, user.getEmail());
                ps.setString(3, user.getPassword());
                rows = ps.executeUpdate();
            return rows>0;
        }catch(SQLException e){ 
            throw new RuntimeException("Error executing query.", e);
        }
    }

    public User loginUser(String email, String password){
        String sql = "SELECT * FROM users WHERE email=? AND password=?";

        try (Connection con = DBConnection.getConnection()) {
                PreparedStatement ps= con.prepareStatement(sql);
                ps.setString(1, email);
                ps.setString(2, password);
                ResultSet rs= ps.executeQuery();
                
                if(rs.next()){
                    User user = new User();
                    user.setId(rs.getInt("id"));
                    user.setUsername(rs.getString("username"));
                    user.setEmail(rs.getString("email"));
                    user.setPassword(rs.getString("password"));
                    return user;
                }
        } 
        catch (SQLException e) {
            throw new RuntimeException("Error executing query.", e);
        }
        return null;
    }
}
