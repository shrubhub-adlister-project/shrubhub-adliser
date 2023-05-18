package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.AdServlet", urlPatterns = "/ad")
public class AdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        // Get the ad ID from the request parameter
        long adId = Long.parseLong(req.getParameter("id"));

        // Retrieve the ad details using the DAO
        Ad ad = DaoFactory.getAdsDao().findAdById(adId);

        // Pass the ad to the JSP for rendering
        req.setAttribute("ad", ad);
        req.getRequestDispatcher("/WEB-INF/ads/ad.jsp").forward(req, res);
    }


}
