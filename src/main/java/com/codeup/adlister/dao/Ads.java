package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id


    Ad getAdById(String adId);

    Ad findAdById(long adId);

    Long insert(Ad Ad);

}
