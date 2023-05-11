package dao;

public class PostsDaoFactory {

//  insulates from generate multiple data access objects
//    NOTICE: STATIC
//    DAO limitations

    private static Posts postsDao;

    public static Posts getPostsDao() {
        if (postsDao == null) {
            postsDao = new PostsDao();
        }
        return postsDao;
    }

}