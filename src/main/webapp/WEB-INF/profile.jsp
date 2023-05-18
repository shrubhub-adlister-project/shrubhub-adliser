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

    <h1>Delete User</h1>
    <form action="/deleteUser" method="POST">
<%--        <label for="username">Username:</label>--%>
<%--        <input type="text" id="username" name="username" required>--%>

        <input type="submit" value="Delete">
    </form>
</body>
</html>