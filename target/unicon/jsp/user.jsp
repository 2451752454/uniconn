<%--
  Created by IntelliJ IDEA.
  User: 黄奇峰
  Date: 2019/7/29
  Time: 10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <title>Title</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" type="text/css" href=<%=path+"/layui-v2.5.4/layui/css/layui.css"%> media="all">
    <link rel="stylesheet" type="text/css" href=<%=path+"/css/user.css"%> >
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src=<%=path+"/js/user.js"%>></script>
</head>
<body>
<div >
    <table class="layui-table" lay-skin="row" lay-even="" id="mytable">
        <colgroup>
            <col width=16%>
            <col width=16%>
            <col width=16%>
            <col width=16%>
            <col width=16%>
            <col width=16%>
            <col>
        </colgroup>
        <thead>
        <tr >
            <td colspan="6">用户管理</td>
        </tr>
        </thead>
        <tr>
            <td>ID</td>
            <td>用户名</td>
            <td>密码</td>
            <td>角色</td>
            <td>状态</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${list}" step="1" var = "i">
            <tr>
                <td>${i.USERID}</td>
                <td>${i.USERNAME}</td>
                <td>${i.USERPASSWORD}</td>
                <td>${i.TB_ROLE.ROLENAME}</td>
                <td>${i.USERSTATE}</td>
                <td><button class="layui-btn" type="button">启用/禁用</button></td>
            </tr>
        </c:forEach>
        <tr>
            <td>1</td>
            <td>小黄</td>
            <td>100</td>
            <td>男</td>
            <td>9.0</td>
            <td><button class="layui-btn" type="button">启用/禁用</button></td>
        </tr>
    </table>
</div>
</body>
</html>
