<%--
  Created by IntelliJ IDEA.
  User: kelvynmedellin
  Date: 5/21/23
  Time: 4:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Search Page</title>

    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing a Ad" />
    </jsp:include>

</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container ad-container">
    <div class=" ads-wrapper">
        <div class="ad-card users-ad col-md-6">
            <c:if test="${results != null}">
                <c:forEach var="ad" items="${results}">
                    <h2 class="title">${ad.title}</h2>
                    <div class="ad-content-wrapper">
                        <h4 class="ad-content">${ad.description}</h4>
                    </div>
                </c:forEach>
            </c:if>
        </div>
    </div>
</div>
</body>
</html>
