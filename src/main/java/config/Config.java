package config;

public class Config {
    public static String getURL() {
        return "jdbc:mysql://localhost:3306/codeup_test_db?allowPublicKeyRetrieval=true&useSSL=false";
    }

    public static String getUser() {
        return "user";
    }

    public static String getPassword() {
        return "codeup";
    }

}