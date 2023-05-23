<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container profile-container">
    <div class="welcome-user">
        <h1>Welcome, ${user.username}!</h1>
    </div>

    <c:if test="${error != null}" >
        <p style="color: red;"> ${error}</p>
    </c:if>

    <form class="cat" action="/editUser" method="POST">
        <h1>Edit Profile</h1>
        <label for="username" class="dropdown-item">Username: </label>
        <input class="input" id="username" type="text" name="username" value="${user.username}">

        <label for="email" class="dropdown-item">Email: </label>
        <input class="input" id="email" type="text" name="email" value="${user.email}">

        <label for="password" class="dropdown-item">Password: </label>
        <input class="input" id="password" type="password" name="password">

        <input class="ad-card-btn" type="submit" value="edit">
    </form>

    <div class="users-ads-wrapper">
        <h1 class="title">${user.username}'s Ads</h1>
        <div class="column users-ads ads-wrapper">

            <c:forEach var="ad" items="${userAds}">
                <div class="ad-card col-md-6 users-ad">
                    <h2 class="title">${ad.title}</h2>
                    <p >${ad.description}</p>
                    <a id="${ad.id}" class="ad-card-btn btn btn-primary btn-block"
                       role="button" href="/edit?id=${ad.id}" style="width: 100px">Edit</a>
                </div>
            </c:forEach>
        </div>
    </div>


    <form class="cat" action="/deleteUser" method="POST">

        <h1>Delete Profile</h1>
        <input class="ad-card-btn" type="submit" value="Delete">
    </form>
</div>
</body>
</html>