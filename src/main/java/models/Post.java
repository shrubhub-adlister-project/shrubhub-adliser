package models;

import java.io.Serializable;

// JavaBean POJO, "needs" to be serializable meaning it intends to store data,
// historically enabled it to be stored into a text file {JSON?}. However, modern
// approach stores them into a database of some sort.

public class Post implements Serializable {
    private String title;
    private String body;
//    private String[] topics;
    private User user;

//    public String[] getTopics() {
//        return topics;
//    }
//    public void setTopics(String[] topics) {
//        this.topics = topics;
//    }

    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }

    public String getBody() {
        return body;
    }
    public void setBody(String post) {
        this.body = body;
    }

    public User getUser() {
        return user;
    }
    public void setUser(User user) {
        this.user = user;
    }

    public Post() {}

    public Post(String title, String body) {
        this.title = title;
        this.body = body;
//        this.topics = topics;
    }

    public Post(String title, String body, User user) {
        this.title = title;
        this.body = body;
//        this.topics = topics;
    }
}