package controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
<<<<<<< HEAD
import javax.servlet.http.HttpSession;
=======
>>>>>>> jdbc-exercise
import java.io.IOException;

@WebServlet(name = "controllers.LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
<<<<<<< HEAD
//<<<<<<< HEAD:src/main/java/LoginServlet.java
//        HttpSession session = request.getSession();
//
//        boolean isLoggedIn = session.getAttribute("user") != null;
//
//        if (!isLoggedIn) {
//            request.getRequestDispatcher("/login.jsp").forward(request, response);
//        } else {
//            response.sendRedirect("/profile");
//        }
//=======
//        if (request.getSession().getAttribute("user") != null) {
//            response.sendRedirect("/profile");
//            return;
//        }
//        request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
//>>>>>>> jdbc-lecture:src/main/java/controllers/LoginServlet.java
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        boolean validAttempt = username != null && password.equals("password");

        if (validAttempt) {
//<<<<<<< HEAD:src/main/java/LoginServlet.java
//            session.setAttribute("user", username);
//=======
//            request.getSession().setAttribute("user", username);
//>>>>>>> jdbc-lecture:src/main/java/controllers/LoginServlet.java
            response.sendRedirect("/profile");
        } else {
            response.sendRedirect("/");
=======
        if (request.getSession().getAttribute("user") != null) {
            response.sendRedirect("/profile");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        boolean validAttempt = username.equals("admin") && password.equals("password");

        if (validAttempt) {
            request.getSession().setAttribute("user", username);
            response.sendRedirect("/profile");
        } else {
            response.sendRedirect("/login");
>>>>>>> jdbc-exercise
        }
    }
}