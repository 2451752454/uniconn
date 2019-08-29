<%--
  Created by IntelliJ IDEA.
  User: 黄奇峰
  Date: 2019/8/28
  Time: 20:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>


</head>
<body>
<table class="table table-hover">
    <caption>悬停表格布局</caption>
    <thead>
    <tr class="warning">
        <th>名称</th>
        <th>城市</th>
        <th>邮编</th>
    </tr>
    </thead>
    <tbody>
    <tr class="warning">
        <td>Tanmay</td>
        <td>Bangalore</td>
        <td>560001</td>
    </tr>
    <tr class="warning">
        <td>Sachin</td>
        <td>Mumbai</td>
        <td>400003</td>
    </tr>
    <tr class="warning">
        <td>Uma</td>
        <td>Pune</td>
        <td>411027</td>
    </tr>
    </tbody>
</table>


</body>
</html>
