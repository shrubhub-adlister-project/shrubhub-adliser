
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
  <title>Color</title>


  <style>
  html {

  <%--@elvariable id="someName" type="controllers"--%>
  <c:if test="${color != null}">
    background-color: ${color};
  </c:if>
  }
  </style>
</head>

  <body>

  <h1>Cool Color</h1>

  </body>
</html>