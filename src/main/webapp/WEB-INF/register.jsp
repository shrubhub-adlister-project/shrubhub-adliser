<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>
</head>
<body>
<jsp:include page="partials/navbar.jsp" />
<div class="container reg-container">

    <form class="form reg-form" action="/register" method="post">
        <div class="form-group-wrapper reg-form-group-wrapper">
            <h1>Please fill in your information.</h1>

            <c:if test="${error != null}" >
                <p style="color: red;"> ${error}</p>
            </c:if>

            <div class="form-group-wrapper">
                <div class="form-group reg-fg">
                    <label class="reg-label label" for="username">Username</label>
                    <input id="username" name="username" class="input form-control" type="text" value="${username}">
                </div>
                <div class="form-group reg-fg">
                    <label class="reg-label label" for="email">Email</label>
                    <input id="email" name="email" class="input form-control" type="text" value="${email}">
                </div>
                <div class="form-group reg-fg">
                    <label class="reg-label label" for="password">Password</label>
                    <input id="password" name="password" class="input form-control" type="password">
                </div>
                <div class="form-group reg-fg">
                    <label class="reg-label label" for="confirm_password">Confirm Password</label>
                    <input id="confirm_password" name="confirm_password" class="input form-control" type="password">
                </div>
                <input type="submit" class="ad-card-btn reg-btn btn btn-primary btn-block">

            </div>
              </div>

    </form>
</div>
</body>
</html>