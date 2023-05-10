package controllers;

import models.Pizza;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/pizzaorder")
public class PizzaServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/forms/pizzaorder.jsp").forward( req, resp );
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String orderName = req.getParameter("customer-name");
        String orderCrust = req.getParameter("crust");
        String orderSauce = req.getParameter("sauce");
        String orderSize = req.getParameter("size");
        String[] orderToppings = req.getParameterValues("topping");
        String orderAddress = req.getParameter("address");

        Pizza pizzaOrder = new Pizza( orderName, orderCrust, orderSauce, orderSize, orderToppings, orderAddress );

        req.setAttribute("order", pizzaOrder);

        req.getRequestDispatcher("/forms/pizzaorder.jsp").forward( req, resp );
    }
}