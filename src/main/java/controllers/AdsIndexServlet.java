package controllers;

import dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "controllers.AdsIndexServlet", urlPatterns = "/ads")
public class AdsIndexServlet extends HttpServlet {
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
}