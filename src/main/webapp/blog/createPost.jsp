<%--
  Created by IntelliJ IDEA.
  User: quantum_idk
  Date: 5/9/23
  Time: 3:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

  <jsp:include page="/partials/head.jsp">
    <jsp:param name="title" value="Create a Blog Post"/>
  </jsp:include>

<body>

  <jsp:include page="/partials/navbar.jsp" />
  <h1 class="m-5">Create a Blog Post</h1>

  <form action="createPost" method="POST">
    <label for="post">Your Post:</label>

    <label for="title">Title:</label>
    <input type="text" name="title" id="title">

    <textarea name="post" id="post" cols="30" rows="10"></textarea>
    <input type="submit" value="Submit">
  </form>

  <%--@elvariable id="post" type="controllers/PostServlets"--%>
  <c:if test="${post != null}">
    <h2>Your Post:</h2>
    <h3>${post.title}</h3>
    <p>${post.post}</p>
  </c:if>

</body>
</html>