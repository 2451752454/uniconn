<%--
  Created by IntelliJ IDEA.
  User: 黄奇峰
  Date: 2019/7/29
  Time: 10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <<base href="<%=basePath%>">
    <title>My JSP 'index.jsp' starting page</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" type="text/css" href=<%=path+"/layui-v2.5.4/layui/css/layui.css"%>>
    <script src=<%=path+"/layui-v2.5.4/layui/layui.js"%>></script>
    <script src=<%=path+"/js/back.js"%>></script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
      <div class="layui-header">
        <div class="layui-logo">layui 后台布局</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
          <li class="layui-nav-item"><a href="">控制台</a></li>
          <li class="layui-nav-item"><a href="">商品管理</a></li>
          <li class="layui-nav-item"><a href="">用户</a></li>
         <li class="layui-nav-item">
            <a href="javascript:;">其它系统</a>
            <dl class="layui-nav-child">
             <dd><a href="">邮件管理</a></dd>
             <dd><a href="">消息管理</a></dd>
             <dd><a href="">授权管理</a></dd>
            </dl>
          </li>
       </ul>
        <ul class="layui-nav layui-layout-right">
         <li class="layui-nav-item">
            <a href="javascript:;">
              <img src="demo1/image!re" class="layui-nav-img" >
                session:${sessionScope.uname}
                application:${applicationScope.UNAME}
            </a>
            <dl class="layui-nav-child">
              <dd><a href="<%=path%>/jsp/personalinformation.jsp">基本资料</a></dd>
              <dd><a href="">安全设置</a></dd>
            </dl>
          </li>
          <li class="layui-nav-item"><a href="">退了</a></li>
        </ul>
      </div>

      <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
          <!-- 左侧导航区域（可配合layui已有的垂直导航)-->
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">cx</a>
                    <dl class="layui-nav-child">
                        <dd> <a title="<%=path%>/jsp/back_login.jsp"  onclick="changeIframe(this)">登入</a></dd>
                        <dd> <a title="<%=path%>/jsp/recharge.jsp"  onclick="changeIframe(this)">充值</a></dd>
                        <dd> <a title="<%=path%>/jsp/personalinformation.jsp"  onclick="changeIframe(this)">修改信息</a></dd>
                        <dd> <a title="<%=path%>/jsp/changepasswords.jsp"  onclick="changeIframe(this)">修改密码</a></dd>
                    </dl>
                </li>


                <c:if test="${!empty(menu)}">
<%--                    alert("11");--%>
                    <c:forEach items="${menu}" step="1" var = "i">
                    <li class="layui-nav-item layui-nav-itemed">
                        <a class="" href="javascript:;">${i.key}</a>
                                    <dl class="layui-nav-child">
                                        <c:forEach items="${i.value}" step="1" var = "j">
                                    <dd> <a title=${j.URL}  onclick="changeIframe(this)">${j.MENUNAME}</a></dd>
                                        </c:forEach>
                                    </dl>
                    </li>
                    </c:forEach>
                </c:if>
            </ul>
        </div>
      </div>

      <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">
            <iframe src="<%=path%>#" width="100%" height="600px" id="myframe"></iframe>
        </div>
     </div>

      <div class="layui-footer">
        <!-- 底部固定区域 -->
      </div>
    </div>

<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;
        });
    </script>
</body>

</html>
