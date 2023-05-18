
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
    <c:when test="${ads.id}">
    <div class="col-md-6">
    <h1>Here is ${ads.title}</h1>
    <p>${ads.description}</p>
    </c:when>

    </div>
</div>




</body>
</html>
