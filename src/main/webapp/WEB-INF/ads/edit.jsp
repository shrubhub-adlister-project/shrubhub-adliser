<%--
  Created by IntelliJ IDEA.
  User: lennoxballard
  Date: 5/18/23
  Time: 11:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
<div class="container">
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <h1>Edit Your Ad</h1>
    <form action="/ads/edit" method="POST">
        <div class="form-group">
            <label for="title">Title</label>
            <input id="title" name="title" class="form-control" type="text" value="${ad.title}">
        </div>
        <div class="form-group">
            <label for="categories">Category</label>
            <select name="categories" id="categories" value="${ad.categoryId}">
                <option value="1">Mushrooms</option>
                <option value="2">Flowers</option>
                <option value="3">Plants</option>
                <option value="4">Services</option>
            </select>
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <textarea id="description" name="description" class="form-control" type="text"> ${ad.description}</textarea>
        </div>
        <input type="submit" class="btn btn-block btn-primary">
        <div class="row">
            <a id="deleteAdButton" class="btn btn-primary" href="/ads/deleteAd">Delete Ad</a>
        </div>
    </form>
</div>

<script>
    document.getElementById('deleteAdButton').addEventListener('click', function(event) {
        if (!confirm('Are you sure you want to delete this ad?')) {
            event.preventDefault();
        }
    });
</script>
</body>
</html>