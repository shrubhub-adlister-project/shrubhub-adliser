package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/deleteAd")
public class DeleteAdServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }

        User currentUser = (User) request.getSession().getAttribute("user");
        int userid = (int) currentUser.getId();

        //        Run User method to supply deleteAd method
        long adId = Long.parseLong(request.getParameter("id"));


//      Call the deteAd method from getAdsDao
        DaoFactory.getAdsDao().deleteAd(adId);

//      Redirect to a success page or display a success message
        request.setAttribute("userAds", DaoFactory.getAdsDao().findAdByUser(userid));
        response.sendRedirect("/profile");
    }

}


