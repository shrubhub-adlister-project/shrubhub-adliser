package controllers;

<<<<<<< HEAD
import dao.DaoFactory;
=======
import dao.Ads;
import dao.MySQLAdsDao;
import models.Ad;
>>>>>>> jdbc-exercise

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
<<<<<<< HEAD
import javax.servlet.http.HttpSession;
=======
>>>>>>> jdbc-exercise
import java.io.IOException;
import java.util.List;

@WebServlet(name = "controllers.AdsIndexServlet", urlPatterns = "/ads")
public class AdsIndexServlet extends HttpServlet {
<<<<<<< HEAD
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("ads", DaoFactory.getAdsDao().all());
//<<<<<<< HEAD:src/main/java/AdsIndexServlet.java

        HttpSession session = request.getSession();

        boolean isLoggedIn = session.getAttribute("user") != null;

        if (!isLoggedIn) {
            response.sendRedirect("/login");
        } else {
            request.getRequestDispatcher("/ads/index.jsp").forward(request, response);
        }
//=======
//        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
//>>>>>>> jdbc-lecture:src/main/java/controllers/AdsIndexServlet.java
    }
=======

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Ads adssDao = new MySQLAdsDao();

        List<Ad> ads = adssDao.all();

        req.setAttribute("ads", ads);

        req.getRequestDispatcher("advert.jsp").forward(req, resp);
    }


>>>>>>> jdbc-exercise
}