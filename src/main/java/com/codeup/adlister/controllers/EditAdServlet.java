package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "controllers.EditAdServlet", urlPatterns = "/ads/edit")
public class EditAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        String adId = request.getParameter("adId");
        Ad ad = DaoFactory.getAdsDao().getAdById(adId);
        request.setAttribute("ad", ad);
        request.getRequestDispatcher("/WEB-INF/ads/edit.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User loggedInUser = (User) request.getSession().getAttribute("user");
        Ad ad = new Ad(
                loggedInUser.getId(),
                request.getParameter("title"),
                request.getParameter("description")
        );
        DaoFactory.getAdsDao().insert(ad);
        response.sendRedirect("/ads");
    }
}
