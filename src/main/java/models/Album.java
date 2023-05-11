package models;

import java.io.Serializable;

public class Album implements Serializable {

    private String id;
    private String artist;
    private String name;
    private String release_date;
    private String sales;
    private String genre;

    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }

    public String getArtist() {
        return artist;
    }
    public void setArtist(String artist) {
        this.artist = artist;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public String getRelease_date() {
        return release_date;
    }
    public void setRelease_date(String release_date) {
        this.release_date = release_date;
    }

    public String getSales() {
        return sales;
    }
    public void setSales(String sales) {
        this.sales = sales;
    }

    public String getGenre() {
        return genre;
    }
    public void setGenre(String genre) {
        this.genre = genre;
    }

    public Album() {}
    public Album(String id, String artist, String name, String release_date, String sales, String genre) {
        this.id = id;
        this.artist = artist;
        this.name = name;
        this.release_date = release_date;
        this.sales = sales;
        this.genre = genre;
    }
}