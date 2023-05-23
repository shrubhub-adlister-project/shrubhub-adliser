package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

// Compare this snippet from src/main/java/com/codeup/adlister/controllers/SortServlet.java:
@WebServlet(name = "controllers.SearchServlet", urlPatterns = "/search")
public class SearchServlet extends HttpServlet {
    // in this servlet i will be finding and displaying ad searched by title, it will search through my ads table and find the ad with the title matching the search or being like the search

    // This is the doGet method that will be used to search the ads by title
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // This is the request that will be used to get the ads by title and set it to the ads
        request.setAttribute("ads", DaoFactory.getAdsDao().searchAdByTitle(request.getParameter("search")));
        // This is the request that will be used to forward the request to the search.jsp
        request.getRequestDispatcher("/WEB-INF/search.jsp").forward(request, response);
    }

    // This is the doPost method that will be used to search the ads by title
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // This is the request that will be used to get the ads by title and set it to the ads
        request.setAttribute("results", DaoFactory.getAdsDao().searchAdByTitle(request.getParameter("search")));
        // This is the request that will be used to forward the request to the search.jsp
        request.getRequestDispatcher("/WEB-INF/search.jsp").forward(request, response);
    }


}
