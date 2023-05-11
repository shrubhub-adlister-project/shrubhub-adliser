package controllers;

import dao.Posts;
import dao.PostsDaoFactory;
import models.Post;
import models.UserPosts;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;


@WebServlet("/posts")
public class PostServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        ArrayList <Post> posts = UserPosts.allPosts;

        req.setAttribute("posts", posts);

        req.getRequestDispatcher("/blog/posts.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

//      Store post value into a string
        String title = req.getParameter("title");
        String body = req.getParameter("body");

        Post post = new Post(title, body, UserPosts.randomUser());
        req.setAttribute("post", post);
//        UserPosts.allPosts.add(post);
        Posts postsDao = PostsDaoFactory.getPostsDao();
        postsDao.insert(post);
        resp.sendRedirect("/posts");
    }
}