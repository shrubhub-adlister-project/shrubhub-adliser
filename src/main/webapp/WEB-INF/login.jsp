<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container login-container">

        <form action="/login" method="POST" class="form login-form">
            <div class="form-group-wrapper">
                <h1>Please Log In</h1>

                <c:if test="${error != null}" >
                    <p style="color: red;"> ${error}</p>
                </c:if>

                <div class="form-group-wrapper">
                    <div class="form-group ">
                        <label for="username">Username</label>
                        <input  id="username" name="username" class="input form-control" type="text" required>
                    </div>
                    <div class="form-group ">
                        <label for="password">Password</label>
                        <input  id="password" name="password" class="input form-control" type="password" required>
                    </div>
                    <input type="submit" class="ad-card-btn login-btn btn btn-primary btn-block" value="Log In">
                </div>
            </div>
        </form>
    </div>
</body>
</html>
