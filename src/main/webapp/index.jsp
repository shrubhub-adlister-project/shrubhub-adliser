<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>

    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="loader-body">
        <div class="pm-container">
            <div class="mouth">
                <div class="one"></div>
                <div class="two"></div>
            </div>
            <div class="food">
                <div class="mushroom-wrapper">
                    <img src="img/download.png" alt="mushroom icon">
                </div>
                <div class="mushroom-wrapper">
                    <img src="img/download.png" alt="mushroom icon">
                </div>
                <div class="mushroom-wrapper">
                    <img src="img/download.png" alt="mushroom icon">
                </div>
                <div class="mushroom-wrapper">
                    <img src="img/download.png" alt="mushroom icon">
                </div>
            </div>


        </div>
    </div>
    <div class="container welcome">
        <h1>Welcome to the Adlister!</h1>
    </div>
</body>
</html>
