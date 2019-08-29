
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>手机扫码登录等三大登录方式切换效果登录模板 - 素材火</title>
    <script type="text/javascript" src=<%=path+"/index/js/jquery-1.12.3.min.js"%>></script>
    <link type="text/css" href=<%=path+"/index/css/main.min814b.css"%> rel="stylesheet" />
    <link href=<%=path+"/index/css/acount6aa4.css"%> rel="stylesheet" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <style>
        #div_tableintegel{
            /*border: 1px solid red;*/
            width: 600px;
            height: 300px;
            position: absolute;
            right: 400px;
            bottom: 200px;
        }
    </style>

</head>
<body style="background: #f6f6f6">
<div id="div_tableintegel" style="margin: 0 auto">
    <div>
        <div>  <span>截止2019年8月28日：</span></div>

    <div id="cent" style="text-align:center">
        <div >
            <span>当前可用余额：</span>
        </div>
        <div>
            <span style="color:orangered;font-size:25px;">69</span>
        </div>
    </div>
<div> <span>实时话费：</span>
    <span style="color:orangered;font-size:15px;">46.2元</span>

</div>
        <hr/>
        <div> <span>账户余额：</span>
            <span style="color:orangered;font-size:15px;">47.2元</span>
        </div>
        <hr/>
        <div> <span>可用预存款：</span>
            <span style="color:orangered;font-size:15px;">91.2元</span>

        </div>
    </div>
    <a href="#data-prompt" class="scroll-help-info-button" style="padding-left:4px;color:orangered;font-size:25px;
                                            padding-right:0px;padding-top:10px;padding-bottom:20px;">温馨提示</a>
    <div id="warm_prompt">1.为保证您的正常服务，余额不足时请您及时就近缴纳话费。<br>2.本页面的数据仅供您参考，不能作为缴费或者投诉的任何依据，实际数据请您以联通营业厅通知为准。解释权归中国联通福建分公司所有。<br>3.可用余额是您当前产口账户中的实时余额，如果为负值，表示您可能已欠费，请及时续缴话费。<br>4.本话费信息供参考，详细以当地联通营业厅通知为准。<br></div>
   </div>
    </body>

</html>