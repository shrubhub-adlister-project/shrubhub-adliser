
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Guessing Game</title>
</head>
<body>

<h3>Guess a number between 1 and 3:</h3>
<form action="guess" method="POST">
  <label for="input">
    <input type="number" id="input" name="guess">
  </label>
</form>

</body>
</html>