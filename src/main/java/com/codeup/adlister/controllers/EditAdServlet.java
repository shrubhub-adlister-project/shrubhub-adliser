package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.Ads;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;

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
//        Long adId = Long.valueOf(request.getParameter("adId"));
//        Ad ad = DaoFactory.getAdsDao().findAdById(adId);
//        request.setAttribute("ad", ad);
        request.getRequestDispatcher("/WEB-INF/ads/edit.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        User currentUser = (User) request.getSession().getAttribute("user");

//      Convert id to int for MySQL data congruency
//        long id = currentUser.getId();
        Ad oldAd = (Ad) request.getAttribute("userAds");

        long adId = Long.parseLong(request.getParameter("id"));

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
//        User currentUser = (User) request.getSession().getAttribute("user");
//        long adId = Long.parseLong(request.getParameter("adId"));
//
//        String title = request.getParameter("title");
//        long categoryId = parseLong(request.getParameter("categories"));
//        String description = request.getParameter("description");
//        User loggedInUser = (User) request.getSession().getAttribute("user");
//        Ad ad = new Ad(
//                loggedInUser.getId(),
//                categoryId,
//                title,
//                description
//        );
//
//        response.sendRedirect("/profile");
//    }
//}

