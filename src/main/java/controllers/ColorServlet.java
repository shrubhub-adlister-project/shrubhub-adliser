package controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/pickcolor")
public class ColorServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("in get Servlet");

        req.getRequestDispatcher("/forms/pickcolor.jsp").forward( req, resp );
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String userColor = req.getParameter("color");

        req.setAttribute("color", userColor);

        System.out.println("leaving Color");

        req.getRequestDispatcher("/forms/viewcolor.jsp").forward( req, resp );

    }
}