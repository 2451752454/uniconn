<%--
  Created by IntelliJ IDEA.
  User: xyp
  Date: 2019/8/27 0027
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>联通营业厅</title>
    <link rel="stylesheet" href="<%=path%>/css/back/style.css"/>

<body>
<div class="login-container">
    <h1>联通营业厅登入</h1>
    <input type="hidden" value="<%=path%>" id="path">
    <form action="<%=path %>/back-login/login.action" method="post" id="loginForm">

        <div>
            <input type="text" name="username" class="username" placeholder="用户名" autocomplete="off"/>
        </div>
        <div>
            <input type="password" name="password" class="password" placeholder="密码" oncontextmenu="return false"
                   onpaste="return false"/>
        </div>
        <button id="submit" type="submit">
            登 陆
        </button>
    </form>


</div>

<script src="<%=path%>/js/back/jquery.min.js"></script>
<script src="<%=path%>/js/back/common.js"></script>
<!--背景图片自动更换-->
<script src="<%=path%>/js/back/supersized.3.2.7.min.js"></script>
<script src="<%=path%>/js/back/supersized-init.js"></script>
<!--表单验证-->
<script src="<%=path%>/js/back/jquery.validate.min.js"></script>

</body>
</html>