<%--
  Created by IntelliJ IDEA.
  User: ki264
  Date: 2017/6/7
  Time: 下午 05:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<html>
<head>
    <title>error.jsp</title>
</head>
<body>
<%
    out.println("拋出例外：" + exception);
%>
</body>
</html>
