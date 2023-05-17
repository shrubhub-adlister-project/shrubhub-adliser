package controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
<<<<<<< HEAD
//<<<<<<< HEAD
//import javax.servlet.http.HttpSession;
//=======
//>>>>>>> jdbc-lecture
//import java.io.IOException;
//
//@WebServlet(name = "controllers.ViewProfileServlet", urlPatterns = "/profile")
//public class ViewProfileServlet extends HttpServlet {
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//<<<<<<< HEAD
//        HttpSession session = request.getSession();
//        boolean isLoggedIn = session.getAttribute("user") != null;
//
//        if (!isLoggedIn) {
//            response.sendRedirect("/login");
//            return;
//        }
//
//        request.getRequestDispatcher("/profile.jsp").forward(request, response);
//    }
//<<<<<<< HEAD:src/main/java/controllers/ViewProfileServlet.java
//=======
//
//>>>>>>> sessions-and-cookies-exercise:src/main/java/ViewProfileServlet.java
//=======
//        if (request.getSession().getAttribute("user") == null) {
//            response.sendRedirect("/login");
//            return;
//        }
//        request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
//    }
//>>>>>>> jdbc-lecture
//}
=======
import java.io.IOException;

@WebServlet(name = "controllers.ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
    }
}
>>>>>>> jdbc-exercise
