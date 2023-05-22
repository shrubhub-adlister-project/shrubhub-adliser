package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.SearchServlet", urlPatterns = "/search")
public class SearchServlet extends HttpServlet {
    // in this servlet i will be finding and displaying ad searched by title, it will search through my ads table and find the ad with the title matching the search or being like the search

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("ads", DaoFactory.getAdsDao().searchAdByTitle(request.getParameter("search")));
        request.getRequestDispatcher("/WEB-INF/search.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("results", DaoFactory.getAdsDao().searchAdByTitle(request.getParameter("search")));
        request.getRequestDispatcher("/WEB-INF/search.jsp").forward(request, response);
    }


}
