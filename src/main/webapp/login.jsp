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
<h1> Hello , Code-up</h1>

<p> You submitted a  username of ${param.username} </p>
<p> You submitted a  password of ${param.password} </p>

<c:if test="${param.username == 'admin' && param.password == 'password'}">
    <% response.sendRedirect("profile.jsp"); %>
</c:if>


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






