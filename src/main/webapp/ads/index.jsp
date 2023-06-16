<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h1> Ads:</h1>

<c:forEach var="ad" items="${adsList}">
    <div>
        <h1>${ad.title}</h1>
        <p>Description: ${ad.description} </p>
    </div>
</c:forEach>

</body>
</html>
