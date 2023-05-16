<nav class="navbar navbar-default mb-5">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
<<<<<<< HEAD
        <div class="navbar-header">

            <a class="navbar-brand" href="/ads">AdLister</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
<<<<<<< HEAD:src/main/webapp/partials/navbar.jsp
<%--
    href="*/login" Authentication Servlet handles file nav, showing
    only /login in the url search rather than needing to hardcode the
    file.
     url: localhost:8080/login rather than localhost:8080/login.jsp
--%>
            <li><a href="${pageContext.request.contextPath}/login">Login</a></li>

=======
        <div class="navbar-header align-baseline">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor"
                     class="bi bi-bag-heart-fill" viewBox="0 0 16 16">
                    <path d="M11.5 4v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4h-3.5ZM8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1Zm0 6.993c1.664-1.711 5.825 1.283 0 5.132-5.825-3.85-1.664-6.843 0-5.132Z"/>
                </svg>
            <a class="navbar-brand text-primary" href="/ads">Adlister</a>
        </div>
        <ul class="nav navbar-nav navbar-right">

            <li class="btn btn-primary"><a class="text-light link-underline link-underline-opacity-0" href="/login">
                login</a></li>
>>>>>>> sessions-and-cookies-exercise
=======
            <li><a href="/login">Login</a></li>
            <li><a href="/logout">Logout</a></li>
>>>>>>> jdbc-lecture:src/main/webapp/WEB-INF/partials/navbar.jsp
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>