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
    <c:otherwise>
        <%
            String redirectURL = "login.jsp";
            response.sendRedirect(redirectURL);
        %>
    </c:otherwise>
</c:choose>