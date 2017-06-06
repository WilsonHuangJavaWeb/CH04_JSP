<%@ page import="com.util.ip.IPSeeker" %><%--
  Created by IntelliJ IDEA.
  User: ki264
  Date: 2017/6/5
  Time: 上午 08:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    //全域變數
    private IPSeeker ipSeeker = IPSeeker.getInstance();

    //查詢IP所在的地區
    public String getArea(String ip) {
        return ipSeeker.getArea(ip);
    }

    //查詢IP所在的國家
    public String getCountry(String ip) {
        return ipSeeker.getCountry(ip);
    }

    //利用正則運算式判斷是否的合法IP位址
    public boolean isValidIp(String ip) {
        return ip != null && ip.trim().matches("^[0-9]+\\.[0-9]+\\.[0-9]+\\.[0-9]+$");
    }
%>
<html>
<head>
    <title>IP 地址查詢</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<%
    String ip = request.getParameter("ip");
    String area = "";
    String country = "";

    if (isValidIp(ip)) {
        country = getCountry(ip);
        area = getArea(ip);
    }
%>
<div align="center">
    <form action="method.jsp" method="get">
        <fieldset style="width: 500px;">
            <legend>IP 地址查詢</legend>
            <table align="center" width="400px">
                <%
                    if (isValidIp(ip)) {
                %>
                <tr>
                    <td align="right">IP 地址:</td>
                    <td><%=ip%>
                    </td>
                </tr>
                <tr>
                    <td align="right">國家:</td>
                    <td><%=country%>
                    </td>
                </tr>
                <tr>
                    <td align="right">地區:</td>
                    <td><%=area%>
                    </td>
                </tr>
                <%
                    }
                %>
                <tr height="40">
                    <td align="right">請輸入要查詢的 IP 位址:</td>
                    <td><input type="text" name="ip" value="" style="width: 200px;"/></td>
                </tr>
                <tr height="40">
                    <td colspan="2" align="center">
                        <input type="submit" name="search" value="查詢 IP 地址" class="button">
                    </td>
                </tr>
            </table>

        </fieldset>
    </form>
</div>
</body>
</html>
