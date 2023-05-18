package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;

public class MySQLUsersDao implements Users {
    private Connection connection;

    public MySQLUsersDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }


    @Override
    public User findByUsername(String username) {
        String query = "SELECT * FROM users WHERE username = ? LIMIT 1";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, username);
            return extractUser(stmt.executeQuery());
        } catch (SQLException e) {
            throw new RuntimeException("Error finding a user by username", e);
        }
    }

    @Override
    public Long insert(User user) {
        String query = "INSERT INTO users(username, email, password) VALUES (?, ?, ?)";
        try {
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating new user", e);
        }
    }

    private User extractUser(ResultSet rs) throws SQLException {
        if (! rs.next()) {
            return null;
        }
        return new User(
            rs.getLong("id"),
            rs.getString("username"),
            rs.getString("email"),
            rs.getString("password")
        );
    }


//  users-CRU[D]
    @Override
    public void deleteUser(int id) {
        String deleteUserAds = "DELETE FROM ads WHERE user_id = ?;";
        String deleteUserAcct = "DELETE FROM users WHERE id = ?;";
        try {
            PreparedStatement stmtAds = connection.prepareStatement(deleteUserAds);
            stmtAds.setInt(1, id);
            stmtAds.executeUpdate();
            PreparedStatement stmtAcct = connection.prepareStatement(deleteUserAcct);
            stmtAcct.setInt(1, id);
            stmtAcct.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error deleting a user", e);
        }
    }

    @Override
    public User editUser(String username,  String email, String password, int id) {
        String query = "UPDATE users SET username = ?, email = ?, password = ? WHERE id = ?;";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, username);
            stmt.setString(2, email);
            stmt.setString(3, password);
            stmt.setLong(4, id);
            stmt.executeUpdate();
            return findByUsername(username);
        } catch (SQLException e) {
            throw new RuntimeException("Error editing a user", e);
        }
    }

}