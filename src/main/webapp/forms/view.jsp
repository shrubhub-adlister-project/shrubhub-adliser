
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Answer</title>

</head>
<body>

    <c:if test="${response != null}">
        <h1>Response: ${response}</h1>
    </c:if>

</body>
</html>