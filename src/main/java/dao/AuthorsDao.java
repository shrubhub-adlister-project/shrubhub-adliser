package dao;

import com.mysql.cj.jdbc.Driver;
import config.Config;
import models.Author;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AuthorsDao implements Authors {

    private Connection connection;

//  each authordao instantiation sql connection else exception
    public AuthorsDao() {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    Config.getURL(),
                    Config.getUser(),
                    Config.getPassword()
            );
        } catch (SQLException sqlx) {
            throw new RuntimeException("Error connecting to database", sqlx);
        }
    }

    @Override
    public List<Author> all() {
        List<Author> authors = new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM codeup_test_db.authors");
            while (resultSet.next()) {
                Author author = new Author(
                        resultSet.getLong("id"),
                        resultSet.getString("name")
                );
                 authors.add(author);
            }
        } catch (SQLException sqlx) {
            throw new RuntimeException("Error connecting to database", sqlx);
        }
        return authors;
    }

    @Override
    public void insert(Author author) {

    }
}