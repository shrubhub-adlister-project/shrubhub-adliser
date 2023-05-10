package controllers;

import models.Post;

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
//        Servlet forwards to "/login.jsp" the request and response objects
        req.getRequestDispatcher("/blog/createPost.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

//      Store post value into a string
        String post = req.getParameter("post");
        String title = req.getParameter("title");
//      Sets the post string to an attribute "post" when a post method is called
        Post submittedpost = new Post(title, post);
        req.setAttribute("post", submittedpost);
        req.getRequestDispatcher("/blog/createPost.jsp").forward(req, resp);
    }
}