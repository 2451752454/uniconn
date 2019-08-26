<%--
  Created by IntelliJ IDEA.
  User: 黄奇峰
  Date: 2019/7/29
  Time: 21:52
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
    <link rel="stylesheet" type="text/css" href=<%=path+"/layui-v2.5.4/layui/css/layui.css"%>>
    <link rel="stylesheet" type="text/css" href=<%=path+"/css/front.css"%>>
    <script src=<%=path+"/layui-v2.5.4/layui/layui.js"%>></script>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src=<%=path+"/js/front.js"%>></script>
</head>
<body>
<div id="main">
    <form class="layui-form" action="http://localhost:8080/second_Web_exploded/demo1/FileAction!selectFile" method="post">
        <div class="layui-form-item">
            <div class="layui-input-block">
                <input type="text" name="TB_FILE1.FILENAME" required  lay-verify="required" placeholder="请输入搜索内容" autocomplete="off" class="layui-input">
                <button class="layui-btn" id="login" lay-submit lay-filter="formDemo">搜索文档</button>
            </div>
  </div>
    </form>
    <div >
        <table class="layui-table" lay-skin="row" lay-even="" id="mytable">
            <colgroup>
                <col width=20%>
                <col width=20%>
                <col width=20%>
                <col width=20%>
                <col width=20%>
            </colgroup>
            <thead>
            <tr >
                <td colspan="6">文档管理</td>
            </tr>
            </thead>
            <tr>
                <td>文件名</td>
                <td>文件类型</td>
                <td>文件大小</td>
                <td>文件上传者</td>
                <td>操作</td>
            </tr>
            <c:forEach items="${list}" step="1" var = "i">
                <tr>
                    <td>${i.FILENAME}</td>
                    <td>${i.FILETYPE}</td>
                    <td>${i.FILESIZE}</td>
                    <td>${i.FILEUSER}</td>
                    <td><a href="demo/FileAction!downLoad?FILEMANE=${i.FILENAME}">下载</a></td>
                </tr>
            </c:forEach>
        </table>
    </div>
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
