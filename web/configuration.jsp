<%@ page import="java.util.Enumeration" %>
<%@ page import="java.sql.ParameterMetaData" %><%--
  Created by IntelliJ IDEA.
  User: ki264
  Date: 2017/6/8
  Time: 上午 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>configuration.jsp</title>
</head>
<body>
This is TEST.
<br/>
<%
    Enumeration params = config.getInitParameterNames();
    while (params.hasMoreElements()) {
        String param = (String) params.nextElement();
        String value = config.getInitParameter(param);
%>
param=<%=param%>,value=<%=value%><br/>
<%
    }
%>
<br/>
</body>
</html>
