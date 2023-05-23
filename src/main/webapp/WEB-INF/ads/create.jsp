<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container create-container">

        <form class="form create-form" action="/ads/create" method="post">

            <div class="form-group-wrapper create-fg-wrapper">
                <h1>Create a new Ad</h1>
                <div class="form-group-wrapper ">
                    <div class="form-group">
                        <label class="label create-label" for="title">Title</label>
                        <input id="title" name="title" class=" create-opt input form-control" type="text" required>
                    </div>
                    <div class="form-group">
                        <label class="label create-label" for="categories">Description</label>
                        <select class="input create-opt" name="categories" id="categories" required>
                            <option class="input" value="1">Mushrooms</option>
                            <option class="input" value="2">Flowers</option>
                            <option class="input" value="3">Plants</option>
                            <option class="input" value="4">Services</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="label create-label" for="description">Description</label>
                        <textarea id="description" name="description" class="input form-control create-opt" type="text" required></textarea>
                    </div>
                    <input type="submit" class="ad-card-btn btn btn-block btn-primary">
                </div>
            </div>


        </form>
    </div>
</body>
</html>