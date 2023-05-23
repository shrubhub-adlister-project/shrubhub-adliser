package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

// This is the servlet that will be used to sort the ads by category
@WebServlet(name = "controllers.SortServlet", urlPatterns = "/ads/sort")
public class SortServlet extends HttpServlet {

    // This is the doGet method that will be used to sort the ads by category
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // This is the request that will be used to get the ads by category and parse the request parameter to an integer and get the category and set it to the ads
        request.setAttribute("ads", DaoFactory.getAdsDao().findAdByCategory(Integer.parseInt(request.getParameter("category"))));
        // This is the request that will be used to forward the request to the index.jsp
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }

    // This is the doPost method that will be used to sort the ads by category
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // This is the request that will be used to get the ads by category and parse the request parameter to an integer and get the category and set it to the ads
        request.setAttribute("ads", DaoFactory.getAdsDao().findAdByCategory(Integer.parseInt(request.getParameter("category"))));
        // This is the request that will be used to forward the request to the index.jsp
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);

    }
}
