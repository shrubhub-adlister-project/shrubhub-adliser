<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--here is the sorting dropdown for the categories that are set in my categories table and also kake sure they equal their id number value--%>
<div class="dropdown">
    <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
        Categories
    </button>
    <ul class="dropdown-menu">
        <li><a class="dropdown-item" href="/ads?category=1">Mushrooms</a></li>
        <li><a class="dropdown-item" href="/ads?category=2">Flowers</a></li>
        <li><a class="dropdown-item" href="/ads?category=3">Plants</a></li>
        <li><a class="dropdown-item" href="/ads?category=4">Services</a></li>
        <li><a class="dropdown-item" href="/ads">All</a></li>
    </ul>
</div>