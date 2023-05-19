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

    <div class="container">
        <h1>Welcome, ${user.username}!</h1>
    </div>

    <h1>Edit Profile</h1>
    <form action="/editUser" method="POST">
        <label for="username">Username: </label>
        <input id="username" type="text" name="username" value="${user.username}">

        <label for="email">Email: </label>
        <input id="email" type="text" name="email" value="${user.email}">

        <label for="password">Password: </label>
        <input id="password" type="password" name="password" value="${user.password}">

        <input type="submit" value="edit">
    </form>

    <div class="column">
    <h1>User Ads</h1>
        <c:forEach var="ad" items="${userAds}">
            <div class="col-md-6">
                <h2>${ad.title}</h2>
                <p>${ad.description}</p>
                <a id="${ad.id}" class="btn btn-primary btn-block"
                   role="button" href="/edit?id=${ad.id}" style="width: 100px">Edit</a>
                <a id="${ad.id}" class="deleteButton"
                   role="button" href="/deleteAd?id=${ad.id}" style="width: 100px">Delete</a>
            </div>
        </c:forEach>
    </div>

    <h1>Delete Profile</h1>
    <form action="/deleteUser" method="POST">
        <input type="submit" value="Delete">
    </form>

</body>
</html>