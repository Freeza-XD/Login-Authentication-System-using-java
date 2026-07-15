package com.login;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    private static final String URL = "jdbc:mysql://localhost:3306/login_system";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "km0r3TT!";

    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection( URL, USERNAME, PASSWORD);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("MySQL JDBC Driver not found!", e);
        } catch (SQLException e) {
            throw new RuntimeException("Database connection failed", e);
        }
    }
}
