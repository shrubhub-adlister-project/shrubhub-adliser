package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Objects;

@WebServlet(name = "controllers.LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String originalURL = request.getHeader("Referer");
        request.getSession().setAttribute("originalURL", originalURL);
        if (request.getSession().getAttribute("user") != null) {
            response.sendRedirect("/profile");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user = DaoFactory.getUsersDao().findByUsername(username);

        if (user == null) {
            throw new ServletException("User does not exist");
        }

        boolean validAttempt = Password.check(password, user.getPassword());
//        String referer = request.getHeader("referer");
        String originalURL = (String) request.getSession().getAttribute("originalURL");
        if (validAttempt) {
            request.getSession().setAttribute("user", user);
            if (Objects.equals(originalURL, "/register")) {
                response.sendRedirect("/profile");
                return;
            }

            response.sendRedirect(originalURL);
        } else {
            response.sendRedirect("/login");
        }
    }
}