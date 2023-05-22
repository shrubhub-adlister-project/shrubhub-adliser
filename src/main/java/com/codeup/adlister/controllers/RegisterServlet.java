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
import java.rmi.ServerException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("error", request.getParameter("error"));

        if (request.getSession().getAttribute("user") != null) {
            response.sendRedirect("/profile");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);

        String username = (String) request.getSession().getAttribute("username");
        String email = (String) request.getSession().getAttribute("email");

        if(username != null){
            request.setAttribute("username", username);
        }
        if(email != null){
            request.setAttribute("email", email);
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username").trim();
        request.getSession().setAttribute("username",username);

        String email = request.getParameter("email").trim();
        request.getSession().setAttribute("email", email);

        String password = request.getParameter("password");
        request.getSession().setAttribute("password", password);


        String passwordConfirmation = request.getParameter("confirm_password");
        request.getSession().setAttribute("confirm_password", passwordConfirmation);


        if (!password.equals(passwordConfirmation)) {
            response.sendRedirect("/register?error=Passwords%20do%20not%20match.");
            return;
        } else if (DaoFactory.getUsersDao().findByUsername(username) != null) {
            response.sendRedirect("/register?error=User%20already%20exists.");
            return;
        }

        // validate input
        boolean inputHasErrors = username.isEmpty()
                || email.isEmpty()
                || password.isEmpty()
                || (!password.equals(passwordConfirmation));

        if (inputHasErrors) {
            request.setAttribute("username", username);
            request.setAttribute("email", email);
            response.sendRedirect("/register");
            return;
        }

        // create and save a new user
        User user = new User(username, email, password);

        // hash the password
        String hash = Password.hash(user.getPassword());
        user.setPassword(hash);
        DaoFactory.getUsersDao().insert(user);
        response.sendRedirect("/login");
    }
}