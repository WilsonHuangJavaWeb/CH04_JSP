<%--
  Created by IntelliJ IDEA.
  User: ki264
  Date: 2017/6/6
  Time: 下午 03:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>for.jsp</title>
</head>
<body>
<%
    Object[][] letters = {
            {true, "信件一", "email_1", "String_1"},
            {true, "信件二", "email_2", "String_2"},
            {false, "信件三", "email_3", "String_3"}};

    String[] colors = {"#DDDDDD", "#AAAAAA"};
%>
<table border="0" cellspacing="1" cellpadding="2" width="700" align="center">
    <tr>
        <td align="center" style="line-height: 22px">&nbsp;</td>
        <td align="center" style="line-height: 22px">標題&nbsp;</td>
        <td align="center" style="line-height: 22px">發信人&nbsp;</td>
        <td align="center" style="line-height: 22px">收件人&nbsp;</td>
        <td align="center" style="line-height: 22px">時間&nbsp;</td>
    </tr>
    <%
        for (int i = 0; i < letters.length; i++) {
            Object[] letter = letters[i];
    %>
    <tr style="background: <%=colors[i%2]%>;">
        <td align="center">
            <%
                if (letter[0] == Boolean.TRUE) {
            %>
            <img src="images/mail.gif"/>
            <%
                } else {
                    out.println("&nbsp;");
                }
            %>
        </td>
        <td>
            <a href="#"><%=letter[1]%>
            </a>
        </td>
        <td><%=letter[2]%>
        </td>
        <td><%=letter[3]%>
        </td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
