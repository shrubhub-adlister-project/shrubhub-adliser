package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/deleteUser")
public class DeleteUserServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
//      Get User object from Sessions
        User currentUser = (User) request.getSession().getAttribute("user");

//        Run User method to supply deleteUser method
        long id = currentUser.getId();
        int idInt = (int) id;

//      Call the deleteUser method from UserDAO
        DaoFactory.getUsersDao().deleteUser(idInt);

//      Redirect to a success page or display a success message
        request.getSession().removeAttribute("user");
        request.getSession().invalidate();
        response.sendRedirect("/login");
    }
}