<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>


        <div>
            <form action="/search" method="post">
                <input type="text" name="search" placeholder="Search">
                <button type="submit" class="btn btn-default">Submit</button>
            </form>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <c:if test="${empty user}">
                <li><a href="/login">Login</a></li>
            </c:if>
            <c:if test="${empty user}">
                <li><a href="/register">Register</a></li>
            </c:if>

            <c:if test="${not empty user}">
                <li><a href="/logout">Logout</a></li>
            </c:if>
            <c:if test="${not empty user}">
                <li><a href="/profile">Profile</a></li>
            </c:if>

        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>