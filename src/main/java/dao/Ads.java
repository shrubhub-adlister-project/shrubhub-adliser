package dao;

import models.Ad;

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