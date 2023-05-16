<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<<<<<<< HEAD

<html>
<head>
    <jsp:include page="/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>

    <div class="container">
        <div class="row" style="color: white;">
            <c:forEach var="ad" items="${advert}">
                <c:choose>
                    <c:when test="${ad.userId == 2}">
                        <div class="col border border-success bg-success rounded-2 m-2">
                            <p>${ad.id}</p>
                            <p>${ad.userId}</p>
                            <p style="font-weight: bold;">${ad.title}</p>
                            <p>${ad.description}</p>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <div class="col border border-primary bg-primary rounded-2 m-2">
                            <p>${ad.id}</p>
                            <p>${ad.userId}</p>
                            <p style="font-weight: bold;">${ad.title}</p>
                            <p>${ad.description}</p>
                        </div>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </div>
    </div>

</body>
</html>


<%--
TODO:	c	This page should be available when a user visits /ads.
      	d	Use the all method on the dao.ListAdsDao class to get a
              listing of all the ads, and pass this on to your JSP file.
      	e	In your JSP file, loop through all the ads and display each one.
--%>
=======
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The dao.Ads" />
    </jsp:include>
</head>
<body>
<<<<<<< HEAD:src/main/webapp/ads/index.jsp
<jsp:include page="/partials/log-navbar.jsp" />
=======
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
>>>>>>> jdbc-lecture:src/main/webapp/WEB-INF/ads/index.jsp

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
<<<<<<< HEAD:src/main/webapp/ads/index.jsp
</html>
>>>>>>> sessions-and-cookies-exercise
=======
</html>
>>>>>>> jdbc-lecture:src/main/webapp/WEB-INF/ads/index.jsp
