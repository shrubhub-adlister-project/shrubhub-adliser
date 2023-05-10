<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">

            <a class="navbar-brand" href="/ads">AdLister</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
<%--
    href="*/login" Authentication Servlet handles file nav, showing
    only /login in the url search rather than needing to hardcode the
    file.
     url: localhost:8080/login rather than localhost:8080/login.jsp
--%>
            <li><a href="${pageContext.request.contextPath}/login">Login</a></li>

        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>