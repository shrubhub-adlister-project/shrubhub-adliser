<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/log-navbar.jsp" />

    <div class="container">
        <h1>Welcome to your profile</h1>
        <h2 class="text-primary">${user}</h2>

        <a href="/ads" class="btn btn-primary">See Ads</a>
    </div>

</body>
</html>