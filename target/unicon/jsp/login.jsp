<%--
  Created by IntelliJ IDEA.
  User: 黄奇峰
  Date: 2019/7/26
  Time: 18:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>My JSP 'index.jsp' starting page</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" type="text/css" href=<%=path+"/layui-v2.5.4/layui/css/layui.css"%>>
    <link rel="stylesheet" type="text/css" href=<%=path+"/css/login.css"%>>
    <script src=<%=path+"/layui-v2.5.4/layui/layui.js"%>></script>
</head>
<body>
<div id="main">
    <form class="layui-form" action="jsp/login.action" method="post">
        <div class="layui-form-item">
            <label class="layui-form-label">账号</label>
            <div class="layui-input-block">
                <input type="text" name="name" required  lay-verify="required" placeholder="请输入账号" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">密码</label>
            <div class="layui-input-inline">
                <input type="password" name="pwd" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <img id="img"  name="image" src="jsp/image.action" alt="${sessionScope.code}">
            <br>
            <label class="layui-form-label">验证码</label>
            <div class="layui-input-inline">
                <input id="img1" type="text" name="image1" required  lay-verify="required" placeholder="请输入验证码" autocomplete="off" class="layui-input">

            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" id="login" lay-submit lay-filter="formDemo">登录</button>
                <button class="layui-btn" id="back" type="button">返回</button>
            </div>
        </div>
    </form>
</div>
<script>
    //Demo
    layui.use('form', function(){
        var form = layui.form;
        //监听提交
        form.on('submit(formDemo)', function(data){
            JSON.stringify(data.field);
            return true;
        });
    });
</script>
</body>
</html>
