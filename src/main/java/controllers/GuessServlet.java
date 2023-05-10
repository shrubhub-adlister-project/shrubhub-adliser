package controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;

@WebServlet("/guess")
public class GuessServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getRequestDispatcher("/forms/guess.jsp").forward( req, resp );
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Random random = new Random();
        int randomNumber = random.nextInt(3) + 1;

        int userGuess = Integer.parseInt(req.getParameter("guess"));

        if (userGuess < 1 || userGuess > 3) {
            resp.sendRedirect("/guess");
        } else if (userGuess == randomNumber) {
            resp.sendRedirect("/correct");
        } else {
            resp.sendRedirect("/incorrect");
        }

    }
}