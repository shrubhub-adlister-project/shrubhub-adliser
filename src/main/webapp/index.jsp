<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%! String admin = "admin"; %>
<%! String password = "password"; %>

<html>
<head>
    <title>User Login</title>
</head>
<body>

<form method="post" action="/login.jsp">
    <label for="username"> Username:
        <input type="text" id="username" name="username">
    </label>
    <label for="password"> Password:
        <input type="password" id="password" name="password">
    </label>
    <input type="submit" value="submit">
</form>


</body>
</html>