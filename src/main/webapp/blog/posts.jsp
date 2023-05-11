<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
  <jsp:include page="/partials/head.jsp">
    <jsp:param name="title" value="Create a Blog Post"/>
  </jsp:include>
</head>

<body>
<div class="container">
  <jsp:include page="/partials/navbar.jsp" />
  <h1 class="m-1">Create a Blog Post</h1>

  <div class="container m-1 ">
    <form action="posts" method="POST">
      <label for="post">Your Post:</label>

      <label for="title">Title:</label>
      <input type="text" name="title" id="title">

      <textarea name="body" id="post" cols="30" rows="10"></textarea>

      <input class="btn btn-primary" type="submit" value="Submit">
    </form>
  </div>

  <c:if test="${posts != null}">
    <c:forEach var="post" items="${posts}">
      <div class="m-5">
      <h2>${post.title}</h2>
        <h3>${post.user.username}</h3>
        <p>${post.body}</p>
      </div>
    </c:forEach>
  </c:if>
</div>

</body>
</html>