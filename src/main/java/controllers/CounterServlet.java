package controllers;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

<<<<<<< HEAD
//<<<<<<<< HEAD:src/main/java/controllers/CounterServlet.java
=======
>>>>>>> jdbc-exercise
@WebServlet(name = "controllers.CounterServlet", urlPatterns = "/count")
public class CounterServlet extends HttpServlet {
    private int counter = 0;

<<<<<<< HEAD
//========
//@WebServlet(name = "controllers.LogoutServlet", urlPatterns = "/logout")
//public class LogoutServlet extends HttpServlet {
//>>>>>>>> jdbc-lecture:src/main/java/controllers/LogoutServlet.java
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        request.getSession().removeAttribute("user");
//        request.getSession().invalidate();
//        response.sendRedirect("/login");
//    }
//}
=======
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        counter += 1;
        response.getWriter().println("<h1>The count is " + counter + ".</h1>");
    }
}
>>>>>>> jdbc-exercise
