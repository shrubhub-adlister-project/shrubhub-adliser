<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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