package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLOutput;

@WebServlet("/editUser")
public class EditUserServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
//      Get current user from sessions
        User currentUser = (User) request.getSession().getAttribute("user");

//      Convert id to int for MySQL data congruency
        long id = currentUser.getId();
        int idInt = (int) id;

//      Grab user input from form [unless changed by user, keep current value from session(mySQL)]
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

//      Check user input for null or empty values, BEFORE updating in database
        User editUser = checkEditInput(currentUser, username, email, password);

//      Executes the MySQL query to update the user's information
        DaoFactory.getUsersDao().editUser(editUser.getUsername(), editUser.getEmail(), editUser.getPassword(), idInt);

//      Finds and Sets the current user's information in the session
        request.getSession().setAttribute("user", DaoFactory.getUsersDao().findByUsername(username));

        response.sendRedirect("/profile");
    }

//  Checks user input for null or empty values, BEFORE updating in database
    public static User checkEditInput (User user, String username, String email, String password) {
        if (username != null && !username.isEmpty()) {
            user.setUsername(username);
        } else {
            user.setUsername(user.getUsername());
        }

        if (email != null && !email.isEmpty()) {
            user.setEmail(email);
        } else {
            user.setEmail(user.getEmail());
        }

        if (password != null && !password.isEmpty()) {
            String hash = Password.hash(password);
            user.setPassword(hash);
        } else {
            user.setPassword(user.getPassword());
        }

        return user;
    }
}