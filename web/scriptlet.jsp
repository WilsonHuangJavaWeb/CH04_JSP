<%--
  Created by IntelliJ IDEA.
  User: ki264
  Date: 2017/6/4
  Time: 下午 01:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>scriptlet.jsp</title>
</head>
<body>
<%
    int num = 10;
    int result = 1;
    for (int i = 1; i <= num; i++) {
        result *= i;
    }
    //    out.println(" 數字 " + num + " 的階乘為:" + result);
%>
數字<%=num%>的階乘為:<%=result%>
</body>
</html>
