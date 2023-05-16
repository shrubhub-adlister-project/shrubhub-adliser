package dao;

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
        }
        return adsDao;
    }
}