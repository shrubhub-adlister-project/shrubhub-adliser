
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Viewing a Ad" />
  </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
    <h2>HELLO</h2>
<%--    <c:choose>--%>
<%--        <c:when test="btn">--%>
        <div class="col-md-6">

            <h1>Here is ${ad.title}</h1>
            <p>${ad.description}</p>
<%--            </c:when>--%>
<%--//        </c:choose>--%>
    </div>
</div>




</body>
</html>
