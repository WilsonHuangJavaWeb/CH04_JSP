<%--
  Created by IntelliJ IDEA.
  User: ki264
  Date: 2017/6/7
  Time: 下午 01:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>計數器</title>
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
<br/>
<%--定義一個 session 範圍內的計數器 記錄個人存取資訊--%>
<jsp:useBean id="personCount" class="com.jsp.bean.Counter" scope="session"/>
<%--定義一個 application 範圍的計數器 紀錄所有人的存取資訊--%>
<jsp:useBean id="totalCount" class="com.jsp.bean.Counter" scope="application"/>

<div align="center">
    <form>
        <fieldset style="width: 300px;">
            <legend style="font-weight: bold">計數器</legend>
            <table align="center" width="400" bgcolor="#7fffd4">
                <tr>
                    <td width="200" align="right" style="font-weight: bold" bgcolor="#5f9ea0">您的存取次數：</td>
                    <td bgcolor="#deb887">
                        <%--取得個人的存取資訊--%>
                        <jsp:getProperty name="personCount" property="count"/>
                        次
                    </td>
                </tr>
                <tr>
                    <td width="200" align="right" style="font-weight: bold">總共的存取次數：</td>
                    <td>
                        <%--存取所有人的存取資訊--%>
                        <jsp:getProperty name="totalCount" property="count"/>
                        次
                    </td>
                </tr>
            </table>
        </fieldset>
    </form>
</div>
</body>
</html>
