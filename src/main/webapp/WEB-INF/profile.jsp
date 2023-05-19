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

    <h1>Delete Profile</h1>
    <form action="/deleteUser" method="POST">
        <input type="submit" value="Delete">
    </form>

</body>
</html>