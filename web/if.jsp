<%--
  Created by IntelliJ IDEA.
  User: ki264
  Date: 2017/6/6
  Time: 下午 03:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>if.jsp</title>
</head>
<body>
<%
    String param = request.getParameter("param");
    if ("1".equals(param)) {
%>
1111
<%
} else if ("2".equals(param)) {
%>
2222222

<%
} else if ("3".equals(param)) {
%>
333333
<%
} else {
%>
null
<%
    }
%>
</body>
</html>
