<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/partials/log-navbar.jsp" />

<div class="container">
    <h1><span class="mb-2 text-primary">${user}</span>, Here are all the ads!</h1>

    <div class="container text-center">
        <div class="row">
    <c:forEach var="ad" items="${ads}">
        <div class="col-6">
            <div class="card m-2">
                <img src="https://placehold.co/300x200" class="card-img-top" alt="ad-${id}">
                <div class="card-body">
                    <h5 class="card-title">${ad.title}</h5>
<%--                    <p class="card-text text-start h-50 overflow-scroll">${ad.description}</p>--%>
                    <a href="#" class="btn btn-primary">Details</a>
                </div>
            </div>
        </div>
    </c:forEach>
    <div class="col-12">
        <div class="card m-2 " aria-hidden="true">
            <div class="card-body">
                <h5 class="card-title placeholder-glow">
                    <span class="placeholder col-6"></span>
                </h5>
                <p class="card-text placeholder-glow">
                    <span class="placeholder col-7"></span>
                    <span class="placeholder col-4"></span>
                    <span class="placeholder col-4"></span>
                    <span class="placeholder col-6"></span>
                    <span class="placeholder col-8"></span>
                </p>
                <a class="btn btn-primary disabled placeholder col-6">Create an Ad</a>
            </div>
        </div>
    </div>
</div>

</body>
</html>