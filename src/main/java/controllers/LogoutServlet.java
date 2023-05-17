<<<<<<< HEAD
package controllers;

=======
<<<<<<<< HEAD:src/main/java/LogoutServlet.java
import javax.servlet.ServletException;
========
package controllers;

>>>>>>>> jdbc-exercise:src/main/java/controllers/LogoutServlet.java
>>>>>>> jdbc-exercise
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
<<<<<<< HEAD
import java.io.IOException;

//<<<<<<<< HEAD:src/main/java/controllers/CounterServlet.java
//@WebServlet(name = "controllers.CounterServlet", urlPatterns = "/count")
//public class CounterServlet extends HttpServlet {
//    private int counter = 0;
//
//========
//@WebServlet(name = "controllers.LogoutServlet", urlPatterns = "/logout")
//public class LogoutServlet extends HttpServlet {
//>>>>>>>> jdbc-lecture:src/main/java/controllers/LogoutServlet.java
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.getSession().removeAttribute("user");
        request.getSession().invalidate();
        response.sendRedirect("/login");
=======
import javax.servlet.http.HttpSession;
import java.io.IOException;

<<<<<<<< HEAD:src/main/java/LogoutServlet.java
@WebServlet("/logout")
========
@WebServlet(name = "controllers.LogoutServlet", urlPatterns = "/logout")
>>>>>>>> jdbc-exercise:src/main/java/controllers/LogoutServlet.java
public class LogoutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        boolean isLoggedIn = session.getAttribute("user") != null;

        if (isLoggedIn) {
            session.invalidate();
            resp.sendRedirect("/login");
            return;
        }

        resp.sendRedirect("/login");
>>>>>>> jdbc-exercise
    }
}