<%@ page import="java.util.Objects" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%!
    public static boolean isAdmin(String name, String pass) {
        return Objects.equals(name, "admin") && Objects.equals(pass, "password");
    }
%>

<% String thing1 = request.getParameter("username"); %>
<% String thing2 = request.getParameter("password"); %>

<c:choose>
    <c:when test= "<%=isAdmin(thing1, thing2)%>">
        <%
            String redirectURL = "profile.jsp";
            response.sendRedirect(redirectURL);
        %>
    </c:when>
</c:choose>

<html>
<head>
    <title>User Login</title>
</head>
<body>

<form method="post" action="/login.jsp">
    <label for="username"> Username:
        <input type="text" id="username" name="username">
    </label>
    <label for="password"> Password:
        <input type="password" id="password" name="password">
    </label>
    <input type="submit" value="submit">
</form>


</body>
</html>