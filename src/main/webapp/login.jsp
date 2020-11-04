<%--
  Created by IntelliJ IDEA.
  User: mfk
  Date: 11/3/20
  Time: 13:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${param.username == 'admin' && param.password == 'password'}">
    <% response.sendRedirect("/profile.jsp"); %>
</c:if>

<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Login Page"/>
    </jsp:include>
</head>
<body>
<form method="POST" >
    <input type="text" name="username" placeholder="Enter username">
    <input type="text" name="password" placeholder="Enter password">
    <button type="submit">Submit</button>
</form>
</body>
</html>
