<<<<<<<< HEAD:src/main/java/dao/Ads.java
package dao;

import models.Ad;
========
package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
>>>>>>>> user-input-lecture:src/main/java/com/codeup/adlister/dao/Ads.java

import java.util.List;

public interface Ads {
<<<<<<< HEAD

    List<Ad> all();
=======
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);
<<<<<<< HEAD
>>>>>>> jdbc-lecture
=======
>>>>>>> jdbc-exercise
}