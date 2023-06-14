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
<h1>Welcome to Joe's Pizza's ${pizza}</h1>

<div class="container">
    <form action="/pizza-order" method="POST">
        <div class="form-group">
            <label for="name">Enter your topping:</label>
            <!--Parameter name = "name"-->
            <input id="name" name="name" class="form-control" type="text">
        </div>
        <input type="submit" class="btn btn-primary btn-block" value="Submit">
    </form>
</div>



</body>
</html>
