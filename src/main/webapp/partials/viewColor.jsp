<%--
  Created by IntelliJ IDEA.
  User: josephfuentes
  Date: 6/14/23
  Time: 4:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Color</title>
</head>
<body style="background-color: <%= request.getParameter("color") %>;">
<h1>Your Background Color: <%= request.getParameter("color") %></h1>
</body>
</html>



