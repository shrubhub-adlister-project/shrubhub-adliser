<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>
<div class="container">
    <h1>Please Log In</h1>
    <form action="/login" method="POST">
        <div class="form-group">
            <label for="username">${username}</label>
        </div>
        <input type="submit" class="btn btn-primary btn-block" value="Log Out">
    </form>
</div>
</body>
</html>