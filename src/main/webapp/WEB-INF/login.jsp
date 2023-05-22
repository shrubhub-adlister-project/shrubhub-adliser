<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage = "error.jsp" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Please Log In</h1>

        <form action="/login" method="POST">
<%--            <p>${requestScope["javax.servlet.error.message"]}</p>--%>
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password" required>
            </div>
            <input type="submit" class="btn btn-primary btn-block" value="Log In">
        </form>
    </div>

<%--<script>--%>

<%--    let loginButton = document.querySelector("input[type='submit']");--%>

<%--    loginButton.addEventListener("click", function(event) {--%>
<%--        event.preventDefault();--%>
<%--        let username = document.querySelector("#username").value;--%>
<%--        let password = document.querySelector("#password").value;--%>

<%--        if (username == null) {--%>
<%--            alert("Please enter a username");--%>
<%--        } else if (password == null) {--%>
<%--            alert("Please enter a password");--%>
<%--        }--%>
<%--    });--%>

<%--</script>--%>

</body>
</html>