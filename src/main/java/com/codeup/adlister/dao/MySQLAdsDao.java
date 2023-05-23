package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.mysql.cj.jdbc.Driver;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(Config config) {
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
    public List<Ad> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public Ad editAd(String title, long category, String description, long adId) {
        String query = "UPDATE ads SET title = ?, category_id = ?, description = ? WHERE id = ?;";
        try {
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, title);
            stmt.setLong(2, category);
            stmt.setString(3, description);
            stmt.setLong(4, adId);
            stmt.executeUpdate();
            return findAdById(adId);
        } catch (SQLException e) {
            throw new RuntimeException("Error editing ad", e);
        }
    }

    @Override
    public Long insert(Ad ad) {
        try {
            String insertQuery = "INSERT INTO ads(user_id, category_id, title, description) VALUES (?, ?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUserId());
            stmt.setLong(2, ad.getCategoryId());
            stmt.setString(3, ad.getTitle());
            stmt.setString(4, ad.getDescription());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    @Override
    public void deleteAd(long adId) {
        String deleteUserAds = "DELETE FROM ads WHERE id = ?;";
        try {
            PreparedStatement stmtAds = connection.prepareStatement(deleteUserAds);
            stmtAds.setInt(1, (int) adId);
            stmtAds.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error deleting a user", e);
        }
    }

    public Ad getAdById(String adId) {
        return null;
    }

    @Override
    public Ad findAdById(long adId) {
        String query = "SELECT * FROM ads WHERE id = ? LIMIT 1";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            System.out.println(adId);
            stmt.setLong(1, adId);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return extractAd(rs);
            } else return null;

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


    @Override
//  View user adds on profile page
    public List<Ad> findAdByUser(int userId) {
        String query = "SELECT * FROM ads WHERE user_id = ?;";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            System.out.println(userId);
            stmt.setInt(1, userId);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
                rs.getLong("id"),
                rs.getLong("user_id"),
                rs.getLong("category_id"),
                rs.getString("title"),
                rs.getString("description")
        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }

    // This method will return a list of ads based on the category id
    public List<Ad> findAdByCategory(int categoryId) {
        // SQL query to select ads with a specific category id
        String query = "SELECT * FROM ads WHERE category_id = ?;";
        try {
            // Prepare the SQL statement
            PreparedStatement stmt = connection.prepareStatement(query);
            // Print the categoryId for debugging purposes
            System.out.println(categoryId);
            // Set the value of the categoryId parameter in the SQL statement
            stmt.setInt(1, categoryId);
            // Execute the SQL statement and retrieve the result set
            ResultSet rs = stmt.executeQuery();
            // Create and return a list of Ad objects from the result set
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            // Throw a runtime exception if an SQL error occurs
            throw new RuntimeException(e);
        }
    }


    // This method will return a list of ads based on the title of the ad
    public List<Ad> searchAdByTitle(String title) {
        // SQL query to select ads that match the provided title using the LIKE operator
        String query = "SELECT * FROM ads WHERE title LIKE ?;";
        try{
            // Create a prepared statement for executing the SQL query
            PreparedStatement stmt = connection.prepareStatement(query);
            // Print the title for debugging purposes
            System.out.println(title);
            // Set the parameter in the prepared statement to search for ads with titles containing the provided title (using % as wildcard)
            stmt.setString(1, "%" + title + "%");
            // Execute the query and get the result set
            ResultSet rs = stmt.executeQuery();
            // Create and return a list of ads based on the result set
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            // Throw a runtime exception if an SQL exception occurs
            throw new RuntimeException(e);
        }
    }

}