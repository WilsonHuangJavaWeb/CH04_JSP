<%--
  Created by IntelliJ IDEA.
  User: ki264
  Date: 2017/6/7
  Time: 上午 10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Java Bean Action</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<br/>
<%--宣告 Person 類別物件 person--%>
<jsp:useBean id="person" class="com.jsp.bean.Person" scope="page"/>

<%--設定person的所有屬性，屬性值從request中自動取得。"*"表示所有屬性--%>
<jsp:setProperty name="person" property="*"/>

<div align="center">
    <form >
        <fieldset style="width: 300px;">
            <legend>請填寫 Person 資訊</legend>
            <table align="center" width="400">
                <tr>
                    <td align="right" style="font-weight: bold">姓名：</td>
                    <td>
                        <%--獲得 person 的 name 屬性--%>
                        <jsp:getProperty name="person" property="name"/>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="font-weight: bold">年齡：</td>
                    <td>
                        <%--獲得 person 的 age 屬性--%>
                        <jsp:getProperty name="person" property="age"/>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="font-weight: bold">性別：</td>
                    <td>
                        <%--獲得 person 的 sex 屬性--%>
                        <jsp:getProperty name="person" property="sex"/>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="font-weight: bold"></td>
                    <td>
                        <input type="button" onclick="history.go(-1);" value=" 傳回 " class="button"/>
                    </td>
                </tr>
            </table>
        </fieldset>
    </form>
</div>
</body>
</html>
