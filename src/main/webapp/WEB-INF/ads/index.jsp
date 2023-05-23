<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container adlisting-container">

    <div class="ads-header-wrapper">
        <h1 class="adlisting-header">ShrubHubs Listings</h1>
    </div>

    <%--here is the sorting dropdown for the categories that are set in my categories table and also kake sure they equal their id number value--%>
    <div class="cat dropdown">


        <div class="cat-filter">Filter By: </div>

        <div class=" dropdown-menu">
            <a class="dropdown-item" href="/ads">All</a>
            <a class="dropdown-item" href="/ads?category=1">Mushrooms</a>
            <a class="dropdown-item" href="/ads?category=2">Flowers</a>
            <a class="dropdown-item" href="/ads?category=3">Plants</a>
            <a class="dropdown-item" href="/ads?category=4">Services</a>
        </div>
        <div class="search-wrapper">
            <form class="search" action="/search" method="post">
                <input class="input" type="text" name="search" placeholder="Search">
                <button type="submit" class="ad-card-btn search-btn btn btn-default">Search</button>
            </form>
        </div>
        <div class="row create-wrapper">
            <a class="create btn btn-primary" href="/ads/create">Create New Ad</a>
        </div>
    </div>

    <div class="ads-wrapper">
        <c:forEach var="ad" items="${ads}">
            <div class="ad-card col-md-6">
                <h2 class="title">${ad.title}</h2>
                <div class="ad-content-wrapper">
                    <p class="ad-content">${ad.description}</p>
                    <a id="${ad.id}" class="ad-card-btn btn btn-primary btn-block" role="button" href="/ad?id=${ad.id}">View</a>
                </div>
            </div>
        </c:forEach>
    </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>

</html>
