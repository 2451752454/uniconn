<%--
  Created by IntelliJ IDEA.
  User: 黄奇峰
  Date: 2019/7/29
  Time: 19:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
    <link rel="stylesheet" type="text/css" href=<%=path+"/css/resign.css"%>>
    <script src=<%=path+"/layui-v2.5.4/layui/layui.js"%>></script>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src=<%=path+"/js/resign.js"%>></script>
</head>
<body>
<div id="main">
    <form class="layui-form" action="demo3/reg" method="post" enctype="multipart/form-data">
        <div class="layui-form-item">
            <label class="layui-form-label">用户名</label>
            <div class="layui-input-block">
                <input type="text" name="users.name" required  lay-verify="required" placeholder="请输入账号" autocomplete="off" class="layui-input" id="username">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">密码</label>
            <div class="layui-input-inline">
                <input type="password" name="users.password1" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
            </div>
            <%--            <div class="layui-form-mid layui-word-aux">辅助文字</div>--%>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">重复输入</label>
            <div class="layui-input-inline">
                <input type="password" name="users.password2" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
            </div>
            <%--            <div class="layui-form-mid layui-word-aux">辅助文字</div>--%>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">性别</label>
            <div class="layui-input-block">
                <input name="users.sex" title="男" type="radio" checked="" value="男">
                <input name="users.sex" title="女" type="radio" value="女">
                <input name="users.sex" title="禁用" disabled="" type="radio" value="禁">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">学历</label>
            <div class="layui-input-block">
                <select name="users.interest" lay-filter="aihao">
                    <option value="" selected=""></option>
                    <option value="0">小学</option>
                    <option value="1" >初中</option>
                    <option value="2">高中</option>
                    <option value="3">专科</option>
                    <option value="4">本科</option>
                    <option value="5">研究生</option>
                    <option value="6">博士生</option>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">职业</label>
            <div class="layui-input-block">
                <select name="users.interest1" lay-filter="aihao">
                    <option value="" selected=""></option>
                    <option value="0">IT</option>
                    <option value="1" >医疗</option>
                    <option value="2">饮食</option>
                    <option value="3">工科</option>
                    <option value="4">金融</option>
                    <option value="5">事业编</option>
                    <option value="6">公务员</option>
                    <option value="6">务农</option>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline" id="tele">
                <label class="layui-form-label">手机号</label>
                <div class="layui-input-inline">
                    <input name="users.phone" class="layui-input" type="tel" placeholder="请输入手机号" autocomplete="off" lay-verify="required|phone">
                </div>
            </div>
            <div class="layui-inline" id="ma">
                <label class="layui-form-label">邮箱</label>
                <div class="layui-input-inline">
                    <input name="users.email" class="layui-input" type="text" placeholder="email" autocomplete="off" lay-verify="email">
                </div>
            </div>
        </div>

            <div>
<%--                <s:file name="myfile"></s:file>--%>
                <input type="file" name="file1">
            </div>
<%--        <div class="layui-upload">--%>
<%--            <button type="button" class="layui-btn" id="test1">上传头像</button>--%>
<%--            <div class="layui-upload-list">--%>
<%--                <img class="layui-upload-img" id="demo1">--%>
<%--                <p id="demoText"></p>--%>
<%--            </div>--%>
<%--        </div>--%>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" id="login" lay-submit lay-filter="formDemo">注册</button>
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
            alert(JSON.stringify(data.field));
            return true;
        });
    });
</script>
</body>
</html>
