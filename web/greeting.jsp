<%@ page import="java.util.Locale" %>
<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Locale locale = request.getLocale();
    Calendar calendar = Calendar.getInstance(locale);
    int hour = calendar.get(calendar.HOUR_OF_DAY);

    String greeting = "";
    if (hour <= 6) {
        greeting = "現在是凌晨。";
    } else if (hour <= 9) {
        greeting = "現在是早上。";
    } else if (hour <= 12) {
        greeting = "現在是上午。";
    } else if (hour <= 18) {
        greeting = "現在是下午。";
    } else if (hour <= 24) {
        greeting = "現在是晚上。";
    } else {

    }
%>
<html>
<head>
    <title>歡迎頁面</title>
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="keyword" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
</head>
<body>
<table>
    <tr>
        <td><%=greeting%>
            HOUR=<%=hour%>
        </td>
    </tr>
</table>
</body>
</html>
