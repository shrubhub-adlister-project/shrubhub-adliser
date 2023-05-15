<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/log-navbar.jsp" />

    <div class="container">
        <h1>Welcome to your profile</h1>
        <h2 class="text-primary">${user}</h2>

        <a href="/ads" class="btn btn-primary">See Ads</a>

        <div class="col-12 mt-3">
            <div class="card" aria-hidden="true">
                <div class="card-body">
                    <h5 class="card-title placeholder-glow">
                        <span class="placeholder col-6"></span>
                    </h5>
                    <p class="card-text placeholder-glow">
                        <span class="placeholder col-7"></span>
                        <span class="placeholder col-4"></span>
                        <span class="placeholder col-4"></span>
                        <span class="placeholder col-6"></span>
                        <span class="placeholder col-8"></span>
                    </p>
                    <a class="btn btn-primary col-6">Create an Ad</a>
                </div>
            </div>
        </div>
    </div>

</body>
</html>