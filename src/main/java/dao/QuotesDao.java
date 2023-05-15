package dao;

import com.mysql.cj.jdbc.Driver;
import config.Config;
import models.Author;
import models.Quote;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class QuotesDao implements Quotes {

    private Connection connection;
    public QuotesDao() {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    Config.getURL(),
                    Config.getUser(),
                    Config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<Quote> all() {
        Authors authorsDao = new AuthorsDao();
        List<Author> authors = authorsDao.all();
        List<Quote> quotes = new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FRoM codeup_test_db.quotes");
            while (resultSet.next()) {
                int author_id = resultSet.getInt("author_id");
                Author quoteAuthor = null;
                for (Author author : authors) {
                    if (author.getId() == author_id) {
                        quoteAuthor = author;
                    }
                }
                Quote quote = new Quote(
                        resultSet.getLong("id"),
                        resultSet.getString("content"),
                        quoteAuthor
                );
                quotes.add(quote);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return quotes;
    }

    @Override
    public void insert(Quote quote) {

    }
}