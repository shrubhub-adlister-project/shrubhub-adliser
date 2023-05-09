<%--
    JSP TAGS [JavaServerPages]
    @: Directive, defining attributes
    V taglib: TAG LIBRARY
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- Declaration, JSP variable can be declared here --%>
<%! int count = -2; %>
<% count += 1; %>

<html>
<head>
    <title><%= "some title" %></title>
</head>
<body>
<!-- This is an HTML comment you WILL see this in the HTML -->
<%-- This is a JSP comment you WILL NOT see this in the HTML --%>

    <h1>Implicit Objects in action:</h1>
    <p>Path: <%= request.getRequestURL() %></p>
    <p>Query String: <%= request.getQueryString() %></p>
    <p>"name" parameter: <%= request.getParameter("name") %></p>
    <p>"method" attribute: <%= request.getMethod() %></p>

    <h2>EL / Expression Language</h2>
    <p>"name" parameter: ${param["name"]}</p>

    <p>${2 + 2}</p>
    <p>${"2" + "2"}</p>
<%-- 4 --%>

    <p>${"2 + 2"}</p>
<%-- 2 + 2 --%>

    <% request.setAttribute("numbers", new int[]{222, 777, 21, 7, 14, 3}); %>

    <ul>
<%--    ForEach "number" of the numbers Array, OUTPUT <li>number</li> --%>
        <c:forEach var="number" items="${numbers}">
            <li>${number}</li>
        </c:forEach>
    </ul>

    <c:choose>
        <c:when test="true">
            <p> Expression 1 is True </p>
        </c:when>
        <c:otherwise>
            <p> Expression 1 is False </p>
        </c:otherwise>
    </c:choose>

<%-- Expression applies the variable declared in the head --%>
    <h1> The current count is <%= count %> </h1>
    <c:if test="true">
        <h1>Variable names should be very descriptive</h1>
    </c:if>
    <c:if test="false">
        <h1>single letter variable names are good</h1>
    </c:if>
</body>
</html>