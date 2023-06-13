<%--
  Created by IntelliJ IDEA.
  User: josephfuentes
  Date: 6/13/23
  Time: 11:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<head>
    <title>login.jsp</title>
</head>

<body>
<%@ include file="partials/navbar.jsp" %>
<%@ include file="partials/head.jsp" %>
<h1> Hello , Code-up</h1>

<p> You submitted a  username of ${param.username} </p>
<p> You submitted a  password of ${param.password} </p>

<div class="container">
    <c:if test="${param.username.equals('admin') && param.password.equals('password')}">
        <meta http-equiv="Refresh" content="0; url='http://localhost:8080/profile.jsp'"/>
    </c:if>
</div>


<form method="POST" action="login.jsp">
    <label for= "username">username: </label>
    <input type="text" name="username" id ="username">
    <br>
    <label for= "password">password: </label>
    <input type="text" name="password" id ="password">
    <button type="submit">Submit</button>



    </form>
</body>
</html>






