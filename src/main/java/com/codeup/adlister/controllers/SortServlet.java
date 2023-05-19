package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.SortServlet", urlPatterns = "/ads/sort")
public class SortServlet extends HttpServlet {
//  In this servlet i will be sorting the ads by category and diplaying only he ones matching the category id they sorted with in the index.jsp file replacing all the ads

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("ads", DaoFactory.getAdsDao().findAdByCategory(Integer.parseInt(request.getParameter("category"))));
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("ads", DaoFactory.getAdsDao().findAdByCategory(Integer.parseInt(request.getParameter("category"))));
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }
}
