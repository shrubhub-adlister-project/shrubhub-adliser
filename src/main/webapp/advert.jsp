<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List of Ads</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>

    <div class="container">
        <h1 class="m-3">Here are all the ads!</h1>
        <hr>

        <div class="container rounded border-bottom text-center bg-body-secondary" style="height: 80vh; overflow-y:
        scroll;">
            <div class="row justify-content-evenly">
                <c:forEach var="ad" items="${ads}">
                    <div class="col-lg-auto">
                    <div class="card m-2" style="width: 18rem;">
                        <img src="https://placehold.co/300x200" class="card-img-top" alt="user${ad.userId}-ad${ad.id}">
                        <div class="card-body">
                            <h5 class="card-title text-capitalize">${ad.title}</h5>
                            <p class="card-text text-start">${ad.description}</p>
                            <a href="#" class="btn btn-primary">Details</a>
                        </div>
                    </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>

</body>
</html>