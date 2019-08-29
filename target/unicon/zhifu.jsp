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
    <title>基于amazeui用户充值页面 - 源码之家</title>
   <%-- <script type="text/javascript" src=<%=path+"/zf/js/jquery.min.js"%>></script>--%>
    <script type="text/javascript" src=<%=path+"/index/js/jquery-1.12.3.min.js"%>></script>
    <script type="text/javascript" src=<%=path+"/zf/js/amazeui.min.js"%>></script>
    <script type="text/javascript" src=<%=path+"/zf/js/ui-choose.js"%>></script>
    <link rel="stylesheet" type="text/css" href=<%=path+"/zf/css/amazeui.min.css"%>/>
    <link rel="stylesheet" type="text/css" href=<%=path+"/zf/css/main.css"%>/>


    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
</head>
<body>
<div class="pay">
    <!--主内容开始编辑-->
    <div class="tr_recharge">
        <div class="tr_rechtext">
            <p class="te_retit"><img src=<%=path+"/zf/images/coin.png"%> alt="" />充值中心</p>
            <p>1.招兵币是51招兵买马退出的虚拟货币，你可以使用招兵币购买站内的简历。</p>
            <p>2.招兵币与人民币换算为1：1，即1元=1招兵币，你可以选择支付宝或者是微信的付款方式来进行充值，招兵币每次10个起充。</p>
        </div>
        <form action="" class="am-form" id="doc-vld-msg">
            <div class="tr_rechbox">
                <div class="tr_rechhead">
                    <img src=<%=path+"/zf/images/ys_head2.jpg"%> />
                    <p>充值帐号：
                        <a>王凯</a>
                    </p>
                    <div class="tr_rechheadcion">
                        <img src=<%=path+"/zf/images/coin.png"%> alt="" />
                        <span>当前余额：<span>1000招兵币</span></span>
                    </div>
                </div>
                <div class="tr_rechli am-form-group">
                    <ul class="ui-choose am-form-group" id="uc_01">
                        <li>
                            <label class="am-radio-inline">
                                <input type="radio"  value="" name="docVlGender" required data-validation-message="请选择一项充值额度"> 10￥
                            </label>
                        </li>
                        <li>
                            <label class="am-radio-inline">
                                <input type="radio" name="docVlGender" data-validation-message="请选择一项充值额度"> 20￥
                            </label>
                        </li>

                        <li>
                            <label class="am-radio-inline">
                                <input type="radio" name="docVlGender" data-validation-message="请选择一项充值额度"> 50￥
                            </label>
                        </li>
                        <li>
                            <label class="am-radio-inline">
                                <input type="radio" name="docVlGender" data-validation-message="请选择一项充值额度"> 其他金额
                            </label>
                        </li>
                    </ul>
                    <!--<span>1招兵币=1元 10元起充</span>-->
                </div>
                <div class="tr_rechoth am-form-group">
                    <span>其他金额：</span>
                    <input type="number" min="10" max="10000" value="10.00元" class="othbox" data-validation-message="充值金额范围：10-10000元" />
                    <!--<p>充值金额范围：10-10000元</p>-->
                </div>
                <div class="tr_rechcho am-form-group">
                    <span>充值方式：</span>
                    <label class="am-radio">
                        <input type="radio" name="radio1" value="" data-am-ucheck required data-validation-message="请选择一种充值方式"><img src="images/wechatpay.png">
                    </label>
                    <label class="am-radio" style="margin-right:30px;">
                        <input type="radio" name="radio1" value="" data-am-ucheck data-validation-message="请选择一种充值方式"><img src="images/zfbpay.png">
                    </label>
                </div>
                <div class="tr_rechnum">
                    <span>应付金额：</span>
                    <p class="rechnum">0.00元</p>
                </div>
            </div>
            <div class="tr_paybox">
                <input type="submit" value="确认支付" class="tr_pay am-btn" />
                <span>温馨提示：招兵币只限于在简历详情中购买简历，遇到问题请拨打联系电话。</span>
            </div>
        </form>
    </div>
</div>


<script type="text/javascript">
    // 将所有.ui-choose实例化
    $('.ui-choose').ui_choose();
    // uc_01 ul 单选
    var uc_01 = $('#uc_01').data('ui-choose'); // 取回已实例化的对象
    uc_01.click = function(index, item) {
        console.log('click', index, item.text())
    }
    uc_01.change = function(index, item) {
        console.log('change', index, item.text())
    }
    $(function() {
        $('#uc_01 li:eq(3)').click(function() {
            $('.tr_rechoth').show();
            $('.tr_rechoth').find("input").attr('required', 'true')
            $('.rechnum').text('10.00元');
        })
        $('#uc_01 li:eq(0)').click(function() {
            $('.tr_rechoth').hide();
            $('.rechnum').text('10.00元');
            $('.othbox').val('');
        })
        $('#uc_01 li:eq(1)').click(function() {
            $('.tr_rechoth').hide();
            $('.rechnum').text('20.00元');
            $('.othbox').val('');
        })
        $('#uc_01 li:eq(2)').click(function() {
            $('.tr_rechoth').hide();
            $('.rechnum').text('50.00元');
            $('.othbox').val('');
        })
        $(document).ready(function() {
            $('.othbox').on('input propertychange', function() {
                var num = $(this).val();
                $('.rechnum').html(num + ".00元");
            });
        });
    })

    $(function() {
        $('#doc-vld-msg').validator({
            onValid: function(validity) {
                $(validity.field).closest('.am-form-group').find('.am-alert').hide();
            },
            onInValid: function(validity) {
                var $field = $(validity.field);
                var $group = $field.closest('.am-form-group');
                var $alert = $group.find('.am-alert');
                // 使用自定义的提示信息 或 插件内置的提示信息
                var msg = $field.data('validationMessage') || this.getValidationMessage(validity);

                if(!$alert.length) {
                    $alert = $('<div class="am-alert am-alert-danger"></div>').hide().
                    appendTo($group);
                }
                $alert.html(msg).show();
            }
        });
    });
</script>
<div style="text-align:center;">
    <p>更多源码：<a href="http://www.mycodes.net/" target="_blank">源码之家</a></p>
</div>
</body>
</html>