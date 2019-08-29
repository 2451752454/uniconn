<%--
  Created by IntelliJ IDEA.
  User: xyp
  Date: 2019/8/27 0027
  Time: 17:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <title>手机充值选择效果</title>
    <link href="<%=path%>/css/back/base.css" rel="stylesheet" type="text/css"/>
    <link href="<%=path%>/css/back/help.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="<%=path%>/js/back/jquery.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $(".fwmc_xxk li").click(function () {
                $(this).addClass("on").siblings().removeClass("on");
                tola();
            });

        });


        function tola() {
            var $li = $(".fwmc_xxk").children("li.on");
            var money = $li.children("i").text();

            $(".zwfb_zje").text(money +"元");
            $(".srkk").val('');
        }
        function cq() {
            var count = $(".srkk").val();
            $(".zwfb_zje").text(count+"元");
        }
    </script>
</head>
<body>
<table class="zwfb_shop_table" width="100%">
    <tbody>
    <tr>
        <td align="right">交费号码:</td>
        <td>
            <div class=" zwsl_num"><input type="text" name="sjh" id="sjh"></div>
        </td>
    </tr>
    <tr valign="top">
        <td width="70" align="right">交费金额:</td>
        <td>
            <ul class="fwmc_xxk">
                <li class="on">
                    <p>手机充值服务</p>
                    <i>20</i>元
                </li>
                <li>
                    <p>手机充值服务</p>
                    <i>30</i>元
                </li>
                <li>
                    <p>手机充值服务</p>
                    <i>50</i>元
                </li>
                <li>
                    <p>手机充值服务</p>
                    <i>100</i>元
                </li>
                <li>
                    <p>手机充值服务</p>
                    <i>300</i>元
                </li>
                <li>
                    <p>手机充值服务</p>
                    <i>500</i>元
                </li>
            </ul>
        </td>
    </tr>

    <tr>
        <td height="20"></td>
        <td></td>
    </tr>
    <tr>
        <td align="right">交费金额:</td>
        <td>
            <input name="" type="text" class="srkk" maxlength="6" onkeyup="cq()">
        </td>
    </tr>
    <tr>
        <td height="20"></td>
        <td></td>
    </tr>
    <tr>
        <td align="right">支付金额</td>
        <td>
            <div class="zwfb_zje"><span>20</span> <i>元</i></div>
        </td>
    </tr>
    <tr>
        <td height="20"></td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td><a class="ty_but ml20" href="#">购 买</a></td>
    </tr>
    </tbody>
</table>
<div class="gmxz_tip"> 购买须知：
    <p>1.职位发布服务购买后有效期为自购买之日起24个月，过期将会自动作废。</p>
    <p> 2.本次服务购买后即生效，不支持退费服务。</p>
</div>


</body>
</html>
