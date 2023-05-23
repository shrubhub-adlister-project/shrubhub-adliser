package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Objects;

import static java.lang.Long.parseLong;

@WebServlet(name = "controllers.EditAdServlet", urlPatterns = "/edit")
public class EditAdServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        long adId = Long.parseLong(request.getParameter("id"));

        Ad oldAd = DaoFactory.getAdsDao().findAdById(adId);
        request.setAttribute("ad", oldAd);


        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }

        request.getRequestDispatcher("/WEB-INF/ads/edit.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        long adId = Long.parseLong(request.getParameter("id"));
        Ad oldAd = DaoFactory.getAdsDao().findAdById(adId);


        String title = request.getParameter("title");
        long category = parseLong(request.getParameter("categories"));
        String description = request.getParameter("description");

//      Check user input for null or empty values, BEFORE updating in database
        Ad editAd = checkEditInput(oldAd, title, category, description);

//      Executes the MySQL query to update the user's information
        DaoFactory.getAdsDao().editAd(editAd.getTitle(), editAd.getCategoryId(), editAd.getDescription(), adId);

//      Finds and Sets the current user's information in the session
        request.getSession().setAttribute("ad", DaoFactory.getAdsDao().findAdById(adId));

        response.sendRedirect("/profile");
    }

    //  Checks user input for null or empty values, BEFORE updating in database
    public static Ad checkEditInput (Ad ad, String title, long category, String description) {
        if (title != null && !title.isEmpty()) {
            ad.setTitle(title);
        } else {
            ad.setTitle(ad.getTitle());
        }

        if (category != ad.getCategoryId()) {
            ad.setCategoryId(category);
        } else {
            ad.setCategoryId(ad.getCategoryId());
        }

        if (!Objects.equals(description, ad.getDescription())) {
            ad.setDescription(description);
        } else {
            ad.setDescription(ad.getDescription());
        }

        return ad;
    }
}
