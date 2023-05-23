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
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container edit-container">


    <form action="/edit?id=${ad.id}" method="POST" class="form edit-forminput ">
        <div class="form-group-wrapper edit-form-group-wrapper">
            <h1>Edit Your Ad</h1>
            <div class="form-group-wrapper">
                <div class="form-group edit-fg">
                    <label class="label edit-label" for="title">Title</label>
                    <input id="title" name="title" class="edit-opt input form-control" type="text" value="${ad.title}" required>
                </div>
                <div class="form-group edit-fg">
                    <label class="label edit-label " for="categories">Category</label>
                    <select class="input edit-opt" name="categories" id="categories" value="${ad.categoryId}" required>
                        <option class="input" value="1">Mushrooms</option>
                        <option class="input" value="2">Flowers</option>
                        <option class="input" value="3">Plants</option>
                        <option class="input" value="4">Services</option>
                    </select>
                </div>
                <div class="form-group edit-fg">
                    <label class="label edit-label" for="description">Description</label>
                    <textarea id="description" name="description" class="form-control input edit-opt" type="text" required> ${ad.description}</textarea>
                </div>
                <input type="submit" class="ad-card-btn btn btn-block btn-primary">
                <div class="row">
                    <a id="${ad.id}" class="deleteAdButton ad-card-btn" role="button" href="/deleteAd?id=${ad.id}">Delete</a>

                </div>
            </div>
        </div>

    </form>
</div>

<script>
    let deleteButtons = document.getElementsByClassName('deleteAdButton');
    for (let i = 0; i < deleteButtons.length; i++) {
        deleteButtons[i].addEventListener('click', function(event) {
            if (!confirm('Are you sure you want to delete this ad?')) {
                event.preventDefault();
            }
        });
    }
</script>
</body>
</html>
