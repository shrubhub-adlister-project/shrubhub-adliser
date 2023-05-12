package controllers;

import dao.Ads;
import dao.DaoFactory;
import models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/ads")
public class AdServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//       V Access throguh the Interface, stored in data-type: Dat access object
        Ads ads = DaoFactory.getAdsDao();
        List<Ad> advertList = ads.all();
        req.setAttribute("advert", advertList);

        req.getRequestDispatcher("/ads/index.jsp").forward(req, resp);

    }

}