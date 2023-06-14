<%--
  Created by IntelliJ IDEA.
  User: josephfuentes
  Date: 6/14/23
  Time: 11:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Joe's Pizza</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
<h1>Welcome to Joe's Pizza</h1>

<div class="container">
    <c:if test="${empty confirmationMessage}">
        <form action="pizza-order" method="post">
            <div class="form-group">
                <label for="crustType">Crust Type:</label>
                <select id="crustType" name="crustType" class="form-control">
                    <option value="thin">Thin Crust</option>
                    <option value="thick">Thick Crust</option>
                    <option value="stuffed">Stuffed Crust</option>
                </select>
            </div>
            <div class="form-group">
                <label for="sauceType">Sauce Type:</label>
                <select id="sauceType" name="sauceType" class="form-control">
                    <option value="tomato">Tomato Sauce</option>
                    <option value="bbq">BBQ Sauce</option>
                    <option value="garlic">Garlic Sauce</option>
                </select>
            </div>
            <div class="form-group">
                <label for="sizeType">Size Type:</label>
                <select id="sizeType" name="sizeType" class="form-control">
                    <option value="small">Small</option>
                    <option value="medium">Medium</option>
                    <option value="large">Large</option>
                </select>
            </div>
            <div class="form-group">
                <%--@declare id="toppings"--%>
                <div class="form-check">
                    <input id="topping1" name="toppings" class="form-check-input" type="checkbox" value="pepperoni">
                    <label for="topping1" class="form-check-label">Pepperoni</label>
                </div>
                <div class="form-check">
                    <input id="topping2" name="toppings" class="form-check-input" type="checkbox" value="mushrooms">
                    <label for="topping2" class="form-check-label">Mushrooms</label>
                </div>
                <div class="form-check">
                    <input id="topping3" name="toppings" class="form-check-input" type="checkbox" value="onions">
                    <label for="topping3" class="form-check-label">Onions</label>
                </div>
                    <div class="form-check">
                    <input id="topping4" name="toppings" class="form-check-input" type="checkbox" value="pineapple">
                    <label for="topping4" class="form-check-label">Pineapple</label>
                </div>
                    <div class="form-check">
                        <input id="topping5" name="toppings" class="form-check-input" type="checkbox" value="ham">
                        <label for="topping5" class="form-check-label">Ham</label>
                    </div>
                    <div class="form-check">
                        <input id="topping6" name="toppings" class="form-check-input" type="checkbox" value="sausage">
                        <label for="topping6" class="form-check-label">Sausage</label>
                    </div>
            </div>
            <div class="form-group">
                <label for="deliveryAddress">Delivery Address:</label>
                <input id="deliveryAddress" name="deliveryAddress" class="form-control" type="text">
            </div>
            <input type="submit" class="btn btn-primary btn-block" value="Submit">
        </form>
    </c:if>

    <c:if test="${not empty confirmationMessage}">
        <h2>Order Confirmation</h2>
        <p>${confirmationMessage}</p>
    </c:if>
</div>

</body>
</html>

