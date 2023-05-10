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


<head>
  <title> Create a Blog Post </title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

  <style>

    #post-title {
      <c:if test="${font != null}">
        font-size: ${font}px;
      </c:if>
    }

  </style>
</head>

<body>

  <jsp:include page="/partials/navbar.jsp" />
  <h1 class="m-5">Create a Blog Post</h1>

  <form action="createPost" method="POST">
    <label for="post">Your Post:</label>

    <label for="title">Title:</label>
    <input type="text" name="title" id="title">

    <textarea name="post" id="post" cols="30" rows="10"></textarea>

    <fieldset>
      <legend>Topic: </legend>
      <label for="programming">Programming: </label>
      <input type="checkbox" name="topic" value="programming" id="programming">
      <label for="programming">AI: </label>
      <input type="checkbox" name="topic" value="AI" id="AI">
      <label for="security">Security: </label>
      <input type="checkbox" name="topic" value="security" id="security">
    </fieldset>

    <label for="font-size"> Font size of Title: </label>
    <input type="number" name="font-size" id="font-size">

    <input type="submit" value="Submit">
  </form>

  <%--@elvariable id="post" type="controllers/PostServlets"--%>
  <c:if test="${post != null}">
    <h2>Your Post:</h2>
    <p id="post-title">${post.title}</p>
    <p>${post.post}</p>
    <p>Topics:</p>
    <ul>
      <c:forEach var="topic" items="${post.topics}">
        <li>${topic}</li>
      </c:forEach>
    </ul>
  </c:if>

</body>
</html>