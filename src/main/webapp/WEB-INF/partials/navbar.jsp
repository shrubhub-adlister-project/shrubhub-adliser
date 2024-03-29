<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Shrubs</a>
        </div>
        <div class="nav-logo-wrapper">
            <img class="logo" src="${pageContext.request.contextPath}/img/Untitled_Artwork.svg" alt="shrubhub logo">
        </div>
        <ul class="nav navbar-nav navbar-right">
            <c:if test="${empty user}">
                <li class="nb-li"><a class="nav-opt" href="/login">Login</a></li>
            </c:if>
            <c:if test="${empty user}">
                <li class="nb-li"><a class="nav-opt" href="/register">Register</a></li>
            </c:if>

            <c:if test="${not empty user}">
                <li class="nb-li"><a class="nav-opt" href="/logout">Logout</a></li>
            </c:if>
            <c:if test="${not empty user}">
                <li class="nb-li"><a class="nav-opt" href="/profile">Profile</a></li>
            </c:if>

        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>