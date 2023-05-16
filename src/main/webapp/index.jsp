<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
<<<<<<< HEAD
        <h1>Welcome to the AdLister!</h1>
=======
        <h1>Welcome to the Adlister! ${username}</h1>
>>>>>>> sessions-and-cookies-exercise
    </div>

<%--
crust type
sauce type
size type (use select inputs)
toppings (checkboxes)
delivery address (text input)
--%>
</body>
<<<<<<< HEAD
</html>
=======
</html>

<%--
TODO: start session, store needed data, invalidate
--%>
>>>>>>> sessions-and-cookies-exercise
