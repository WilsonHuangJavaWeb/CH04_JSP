<%--
  Created by IntelliJ IDEA.
  User: ki264
  Date: 2017/6/7
  Time: 下午 03:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Plugin.jsp</title>
    <link rel="styleshet" type="text/css" href="css/style.css">
</head>
<body>
<table align="center" bgcolor="#999999" cellspacing="1">
    <tr>
        <td bgcolor="#FFFFFF">
            <jsp:plugin code="Graph.class"
                        codebase="http://java.sun.com/applets/jdk/1.4/demo/applets/GraphLayout/"
                        type="applet" width="500" height="400">
                <jsp:params>
                    <jsp:param name="edges"
                               value="joe-food,joe-dog,joe-tea,joe-cat,joe-table,table-plate/50,plate-food/30,food-mouse/100,food-dog/100,mouse-cat/150,table-cup/30,cup-tea/30,dog-cat/80,cup-spoon/50,plate-fork,dog-flea1,dog-flea2,flea1-flea2/20,plate-knife"/>
                    <jsp:param name="center" value="joe"/>
                </jsp:params>
                <jsp:fallback>您的瀏覽器不支援 Java Applet</jsp:fallback>
            </jsp:plugin>
        </td>
    </tr>
</table>
</body>
</html>
