package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id

    Ad editAd(String title, String category, String description, long adId);

    Ad getAdById(String adId);

    Ad findAdById(long adId);

    List<Ad> findAdByUser(int id);

    Long insert(Ad Ad);

    //gettitle


    Ad editAd(String title, long category, String description, long adId);


    void deleteAd(long adId);
}

