package dao;

import models.Post;
import models.UserPosts;

import java.util.List;

public class PostsDao implements Posts {

    //    DAO action

    List<Post> posts = UserPosts.allPosts;

//  returns all from list
    @Override
    public List<Post> all() {
        return posts;
    }

//  adds post to list
    @Override
    public void insert(Post post) {
        posts.add(post);
    }
}