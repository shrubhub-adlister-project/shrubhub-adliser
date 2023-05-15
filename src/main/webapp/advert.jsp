<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List of Ads</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>

    <div class="container">
        <h1>Here are all the ads!</h1>

        <div class="container text-center">
            <div class="row">

                <c:forEach var="ad" items="${ads}">
                    <div class="card m-2 p-0" style="width: 18rem;">
                        <img src="https://placehold.co/150x100" class="card-img-top"
                             alt="user${ad.userId}-ad${ad.id}">
                        <div class="card-body">
                            <h5 class="card-title">${ad.title}</h5>
                            <p class="card-text">${ad.description}</p>
                            <a href="#" class="btn btn-primary">Details</a>
                        </div>
                    </div>
                </c:forEach>

            </div>
        </div>
    </div>

</body>
</html>