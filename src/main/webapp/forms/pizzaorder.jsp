<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
  <jsp:include page="/partials/head.jsp">
    <jsp:param name="title" value="JavaPie" />
  </jsp:include>

<head>
  <title>JavaPie</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

</head>

  <body>
  <jsp:include page="/partials/navbar.jsp" />
  <div class="container">
    <h1>JavaPie</h1>
  </div>

  <form action="pizzaorder" method="POST">
    <h1>BYO-Java-Pie©:</h1>

    <label for="customer-name">Name:
      <input type="text" name="customer-name" id="customer-name">
    </label>

    <label for="crust">
      <select name="crust" id="crust">
        <option value="Regular">Regular</option>
        <option value="Thin">Thin</option>
        <option value="Deep-Dish">Deep-Dish</option>
        <option value="Stuffed">Stuffed</option>
      </select>
    </label>

    <label for="sauce">
      <select name="sauce" id="sauce">
        <option value="Marinara"> Marinara </option>
        <option value="Alfredo"> Alfredo </option>
        <option value="BBQ"> BBQ </option>
        <option value="Ranch"> Ranch </option>
      </select>
    </label>

    <label for="size">
      <select name="size" id="size">
        <option value="8"> 8-inch </option>
        <option value="12"> 12-inch </option>
        <option value="16"> 16-inch </option>
        <option value="20"> 20-inch </option>
      </select>
    </label>

    <fieldset>
      <legend>Toppings: </legend>
      <label for="pepperoni"> Pepperoni </label>
      <input type="checkbox" name="topping" value="pepperoni" id="pepperoni">
      <label for="sausage"> Sausage </label>
      <input type="checkbox" name="topping" value="sausage" id="sausage">
      <label for="supreme"> Supreme </label>
      <input type="checkbox" name="topping" value="supreme" id="supreme">
      <label for="hawaiian"> Hawaiian </label>
      <input type="checkbox" name="topping" value="hawaiian" id="hawaiian">
    </fieldset>

    <label for="address">
      <textarea name="address" id="address" cols="30" rows="10"></textarea>
    </label>

    <input type="submit" value="Submit">
  </form>

  <%--@elvariable id="order" type="controllers/PizzaServlet"--%>
  <c:if test="${order != null}">
    <h2>Your Java-Pie©:</h2>

    <p>${order.name}</p>
    <p>${order.crust}</p>
    <p>${order.sauce}</p>
    <p>${order.size}</p>
    <p>${order.address}</p>

    <ul>
      <c:forEach var="topping" items="${order.toppings}">
        <li>${topping}</li>
      </c:forEach>
    </ul>
  </c:if>

  </body>
</html>