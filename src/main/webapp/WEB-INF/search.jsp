<%--
  Created by IntelliJ IDEA.
  User: kelvynmedellin
  Date: 5/21/23
  Time: 4:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Search Page</title>

    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing a Ad" />
    </jsp:include>

</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<h1>Search Result:</h1>
<br>

<c:if test="${results != null}">
    <c:forEach var="ad" items="${results}">
        <h2>${ad.title}</h2>
        <h4>${ad.description}</h4>
    </c:forEach>
</c:if>

</body>
</html>
