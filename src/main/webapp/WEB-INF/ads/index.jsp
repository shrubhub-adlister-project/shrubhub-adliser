<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Here Are all the ads!</h1>
    <div class="row">
        <a class="btn btn-primary" href="/ads/create">Create New Ad</a>
    </div>


<%--here is the sorting dropdown for the categories that are set in my categories table and also kake sure they equal their id number value--%>
        <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                Categories
            </button>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="/ads?category=1">Mushrooms</a></li>
                <li><a class="dropdown-item" href="/ads?category=2">Flowers</a></li>
                <li><a class="dropdown-item" href="/ads?category=3">Plants</a></li>
                <li><a class="dropdown-item" href="/ads?category=4">Services</a></li>
            </ul>
        </div>


        <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
            <a id="${ad.id}" class="btn btn-primary btn-block" role="button" href="/ad?id=${ad.id}" style="width: 100px">View</a>
        </div>
    </c:forEach>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>

</html>
