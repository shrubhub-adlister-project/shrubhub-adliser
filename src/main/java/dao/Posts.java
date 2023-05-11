package dao;

import models.Post;
import java.util.List;

public interface Posts {

//  Retrieves all posts. EQ MySQL: SELECT * FROM Post;
//    DAO goals
    List<Post> all();
    void insert(Post post);

}