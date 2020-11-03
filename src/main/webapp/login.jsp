<%--
  Created by IntelliJ IDEA.
  User: mfk
  Date: 11/3/20
  Time: 13:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>

<c:if test="${param.username == 'admin' && param.password == 'password'}">
    <%! String redirectURL = "http://localhost:8080/profile.jsp"; %>
    <% response.sendRedirect(redirectURL); %>
</c:if>

<form method="POST" >
    <input type="text" name="username" placeholder="Enter username">
    <input type="text" name="password" placeholder="Enter password">
    <button type="submit">Submit</button>
</form>
</body>
</html>
