<%--
  Created by IntelliJ IDEA.
  User: ki264
  Date: 2017/6/7
  Time: 上午 09:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="https://openhome.cc/jstl/fake" %>
<html>
<head>
    <title>taglib.jsp</title>
</head>
<body>
<c:forEach var="item" items="${arrays}">
    <c:out value="item"></c:out>
</c:forEach>
</body>
</html>
