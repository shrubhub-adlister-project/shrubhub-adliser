//package com.codeup.adlister.dao;
//
//import com.codeup.adlister.models.Ad;
//
//import java.util.ArrayList;
//import java.util.List;
//
//public class ListAdsDao {
//    private List<Ad> ads;
//
//    public List<Ad> all() {
//        if (ads == null) {
//            ads = generateAds();
//        }
//        return ads;
//    }
//
//    public Long insert(Ad ad) {
//        // make sure we have ads
//        if (ads == null) {
//            ads = generateAds();
//        }
//        // we'll assign an "id" here based on the size of the ads list
//        // really the dao would handle this
//        ad.setId((long) ads.size());
//        ads.add(ad);
//        return ad.getId();
//    }
//
//    @Override
//    public Ad editAd(String title, long category, String description, long adId) {
//        return null;
//    }
//
//    @Override
//    public Ad editAd(String title, String category, String description, long adId) {
//        return null;
//    }
//
//    @Override
//
//    public Ad getAdById(String adId) {
//        return null;
//    }
//    public Ad findAdById(long adId) {
//       return null;
//
//    }
//
//    @Override
//    public List<Ad> findAdByUser(int id) {
//        return null;
//    }
//
//
//    private List<Ad> generateAds() {
//        List<Ad> ads = new ArrayList<>();
//        ads.add(new Ad(
//            1,
//            1,
//            "playstation for sale",
//            "This is a slightly used playstation"
//        ));
//        ads.add(new Ad(
//            2,
//            1,
//            "Super Nintendo",
//            "Get your game on with this old-school classic!"
//        ));
//        ads.add(new Ad(
//            3,
//            2,
//            "Junior Java Developer Position",
//            "Minimum 7 years of experience required. You will be working in the scripting language for Java, JavaScript"
//        ));
//        ads.add(new Ad(
//            4,
//            2,
//            "JavaScript Developer needed",
//            "Must have strong Java skills"
//        ));
//        return ads;
//    }
//
//    @Override
//    public List<Ad> findAdByCategory(int categoryId) {
//        return null;
//
//    }
//
//    @Override
//    public List<Ad> searchAdByTitle(String title) {
//        return null;
//    }
//}