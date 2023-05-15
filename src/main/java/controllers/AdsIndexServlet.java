package controllers;

import dao.Ads;
import dao.MySQLAdsDao;
import models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "controllers.AdsIndexServlet", urlPatterns = "/ads")
public class AdsIndexServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Ads adssDao = new MySQLAdsDao();

        List<Ad> ads = adssDao.all();

        req.setAttribute("ads", ads);

        req.getRequestDispatcher("advert.jsp").forward(req, resp);
    }


}