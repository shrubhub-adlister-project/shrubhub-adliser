
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
<div class="container ad-container">
    <div class="users-ads ads-wrapper">
        <div class="ad-card users-ad col-md-6">
            <h1 class="title">Here is ${ad.title}</h1>
            <p>${ad.description}</p>
        </div>
    </div>


</div>




</body>
</html>
