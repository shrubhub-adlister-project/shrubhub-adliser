package controllers;

import models.Post;
import models.UserPosts;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/createPost")
public class PostServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Post[] posts = UserPosts.generatePosts();

        req.setAttribute("posts", posts);

//        Servlet forwards to "/login.jsp" the request and response objects
        req.getRequestDispatcher("/blog/createPost.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

//      Store post value into a string
        String body = req.getParameter("body");
        String title = req.getParameter("title");
//        String[] topics = req.getParameterValues("topic");

//        String fontSizeReq = req.getParameter("font-size");
//        req.setAttribute("font", fontSizeReq);

//      Sets the post string to an attribute "post" when a post method is called
        Post post = new Post(title, body);
        req.setAttribute("post", post);
        req.getRequestDispatcher("/blog/createPost.jsp").forward(req, resp);
    }
}