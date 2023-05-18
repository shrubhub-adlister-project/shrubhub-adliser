package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

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
        User currentUser = (User) request.getSession().getAttribute("user");
        long id = currentUser.getId();
        int idInt = (int) id;

        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

       User newUser =  DaoFactory.getUsersDao().editUser(username, email, password, idInt);

        System.out.println(newUser.getUsername());

        request.getSession().setAttribute("user", DaoFactory.getUsersDao().findByUsername(username));

        response.sendRedirect("/profile");
    }
}