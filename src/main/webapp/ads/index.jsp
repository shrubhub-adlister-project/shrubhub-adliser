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
            <div class="col-lg-4 d-flex align-items-stretch">
                <div class="card">
                    <img src="https://placehold.co/300x200" class="card-img-top" alt="ad-${ad.id}">
                    <div class="card-body overflow-y overflow-scroll">
                        <h5 class="card-title text-capitalize">${ad.title}</h5>
                        <p class="card-text text-start">${ad.description}</p>
                        <a href="#" class="btn btn-primary">Details</a>
                    </div>
                </div>
            </div>
        </c:forEach>

        </div>
    </div>

</div>
</body>
</html>