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
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" type="text/css" href=<%=path+"/layui-v2.5.4/layui/css/layui.css"%>>
    <link rel="stylesheet" type="text/css" href=<%=path+"/css/front.css"%>>
    <script src=<%=path+"/layui-v2.5.4/layui/layui.js"%>></script>
</head>
<body>

<div id="main">

<%--        <div class="layui-header" >--%>
            <!-- 头部区域（可配合layui已有的水平导航） -->
            <div id="myheader">
            <ul class="layui-nav">

                <div class="site-demo-button" id="layerDemo" style="margin-bottom: 0;">
                    <li class="layui-nav-item">
                        <a href="javascript:;">
                            <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                            ${sessionScope.uname}
                        </a>
                    </li>
                    <li class="layui-nav-item"><a href="">退了</a></li>
                    <li class="layui-nav-item"><a href="">当前积分XXX</a></li>
                    <li class="layui-nav-item"><a href="">个人信息</a></li>
                <li class="layui-nav-item"><a data-method="offset" data-type="auto" class="layui-btn layui-btn-normal">我要上传</a></li>
                    <li class="layui-nav-item"><a href="">我要下载</a></li>
                </div>

            </ul>
            </div>
<%--        </div>--%>


    <form class="layui-form" action="">
        <div class="layui-form-item">
            <div class="layui-input-block">
                <input type="text" name="title" required  lay-verify="required" placeholder="请输入搜索内容" autocomplete="off" class="layui-input">
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
                    <td><button class="layui-btn" type="button">下载</button></td>
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
            return false;
        });
    });
</script>
<script>
    layui.use('layer', function(){ //独立版的layer无需执行这一句

        var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句

        //触发事件
        var active = {
            offset: function(othis){
                var type = othis.data('type')
                    ,text = othis.text();
                layer.open({
                    type: 2
                    ,offset: type //具体配置参考：http://www.layui.com/doc/modules/layer.html#offset
                    ,id: 'layerDemo'+type //防止重复弹出
                    ,content: ['http://localhost:8080/7_31struts2_Web_exploded/jsp/upload.jsp', 'no']
                        // '<div class="layui-upload" style="width: 800px;height: 600px;">'+ "你是傻逼" +'</div>'
                    ,btn: '关闭全部'
                    ,btnAlign: 'c' //按钮居中
                    ,area: ['1000px', '600px']
                    ,shade: 0 //不显示遮罩
                    ,yes: function(){
                        layer.closeAll();
                    }
                });
            }
        };

        $('#layerDemo .layui-btn').on('click', function(){
            var othis = $(this), method = othis.data('method');
            active[method] ? active[method].call(this, othis) : '';
        });

    });
</script>
</body>
</html>
