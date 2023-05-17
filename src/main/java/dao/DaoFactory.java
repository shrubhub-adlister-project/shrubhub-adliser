package dao;

<<<<<<< HEAD
//<<<<<<< HEAD
//=======
//import dao.Ads;
//
//>>>>>>> jdbc-lecture
public class DaoFactory {
    private static ListAdsDao adsDao;

    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new ListAdsDao();
=======
import java.sql.SQLException;

public class DaoFactory {
    private static Ads adsDao;

    public static Ads getAdsDao() throws SQLException {
        if (adsDao == null) {
            adsDao = new MySQLAdsDao();
>>>>>>> jdbc-exercise
        }
        return adsDao;
    }
}