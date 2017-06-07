<%--
  Created by IntelliJ IDEA.
  User: ki264
  Date: 2017/6/7
  Time: 下午 04:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    out.clear();
    if ("1".equals(request.getParameter("param"))) {
%>
<jsp:forward page="/somepage.jsp">
    <jsp:param name="param1" value="value1"/>
    <jsp:param name="param2" value="value2"/>
</jsp:forward>
<%
    }
%>
<html>
<head>
    <title>forward.jsp</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
請使用位址欄參數 param=1 存取頁面。
</body>
</html>
