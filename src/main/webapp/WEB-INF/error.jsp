<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isErrorPage = "true" %>.
<html>
<head>
    <title>Oops!</title>
</head>
<body>

<h1> Ooops! </h1>

<h2> ${requestScope["javax.servlet.error.message"]} </h2>

</body>
</html>