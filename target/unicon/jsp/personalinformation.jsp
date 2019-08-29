<%--
  Created by IntelliJ IDEA.
  User: xyp
  Date: 2019/8/27 0027
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <title>个人信息页面</title>
</head>
<body>
<form>
<center>
    <table style="text-align: left;">
        <tr>
            <td>昵 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称:</td>
            <td><input type="text" value="${ user}" id="username" name="username"></td>
        </tr>
        <tr>
            <td>电子邮箱:</td>
            <td><input type="text" value="${ email}" id="email" name="email"></td>
        </tr>
        <tr>
            <td>性 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别:</td>
            <td>男<input type="radio" name="radio"><img src="<%=path%>/image/men.png"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                女<input type="radio" name="radio"><img src="<%=path%>/image/Ms.png"/></td>
        </tr>
        <tr>
            <td>个人简介:</td>
            <td><textarea style="resize:none" rows="5" cols="40" maxlength="100"
                          placeholder="这个人很懒,什么都没有留下罒ω罒"
                          name="ggxx"></textarea></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center;"><input type="button" onclick='function x() {
              alert("提交表单over");  }' value="确认修改">
            </td>
        </tr>
    </table>
</center></form>
</body>
</html>
