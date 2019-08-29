<%--
  Created by IntelliJ IDEA.
  User: xyp
  Date: 2019/8/27 0027
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE >
<html>
<head>
    <title>修改密码</title>

    <script src="<%=path%>/js/back/jquery.min.js" type="text/javascript"></script>


    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
        }

        td input {
            width: 100%;
            height: 100%;
        }


        .ywz_zhucexiaobo {
            width: 620px;
            margin: 40px auto 0px auto;
            padding-bottom: 10px;
            padding-top: 5px;
        }


        .ywz_zhuce_xiaoxiaobao {
            float: left;
            width: 226px;
        }

        .ywz_zhuce_kuangzi {
            float: left;
            width: 226px;
            height: 38px;
            color: #171717;
        }

        .ywz_zhuce_huixian {
            float: left;
            background: #d6d3d3;
            width: 62px;
            height: 4px;
            margin-top: 5px;
            _margin-top: 0px;
            margin-left: 5px;
            _height: 2px;
            font-size: 0px;
        }

        .ywz_zhuce_hongxianwenzi {
            float: left;
            width: 62px;
            margin-left: 5px;
            text-align: center;
            color: #b0adad;
            font-size: 12px;
        }

        .ywz_zhuce_kuangwenzi1 {


            color: #3e3e3e;
        }

        /*框*/

        .ywz_zhuce_hongxian {
            float: left;
            background: #ff3300;
            width: 62px;
            height: 4px;
            margin-top: 5px;
            margin-left: 5px;
            _margin-top: 0px;
            _height: 2px;
            font-size: 0px;
        }

        .ywz_zhuce_hongxian2 {
            float: left;
            background: #099;
            width: 62px;
            height: 4px;
            margin-top: 5px;
            margin-left: 5px;
            _margin-top: 0px;
            _height: 2px;
            font-size: 0px;
        }

        .ywz_zhuce_hongxian3 {
            float: left;
            background: #060;
            width: 62px;
            height: 4px;
            margin-top: 5px;
            margin-left: 5px;
            _margin-top: 0px;
            _height: 2px;
            font-size: 0px;
        }

        .ywz_zhuce_yongyu1 {

        }


        .ywz_zhuce_yongyu1 a:hover {
            color: #C00;
        }
    </style>


</head>
<body>
<form action="" method="post" id="loginForm">
    <center>
        <table>
            <tr>
                <td>原先密码:</td>
                <td><input type="password" name="old_pwd " id="tbPasswords" maxlength="16"></td>
            </tr>
            <tr>
                <td>设置密码:</td>
                <td><input name="tbPassword" type="password" id="tbPassword" maxlength="16"
                           class="ywz_zhuce_kuangwenzi1"/>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <div class="ywz_zhuce_yongyu1">
                        <span id="pwd_tip" style="color: #898989"><font style="color: #F00">*</font> 6-16位，由字母（区分大小写）、数字、符号组成</span>
                        <span id="pwd_err" style="color: #f00; display:none;">6-16位，由字母（区分大小写）、数字、符号组成</span>
                    </div>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <div class="ywz_zhuce_youjian"></div>
                    <div class="ywz_zhuce_xiaoxiaobao">
                        <div class="ywz_zhuce_huixian" id='pwdLevel_1'></div>
                        <div class="ywz_zhuce_huixian" id='pwdLevel_2'></div>
                        <div class="ywz_zhuce_huixian" id='pwdLevel_3'></div>
                        <div class="ywz_zhuce_hongxianwenzi"> 弱</div>
                        <div class="ywz_zhuce_hongxianwenzi"> 中</div>
                        <div class="ywz_zhuce_hongxianwenzi"> 强</div>
                    </div>
                </td>
            </tr>
            <tr>
                <td>重复密码:</td>
                <td><input type="password" name="old_pwd " id="tbPasswordss" maxlength="16"></td>
            </tr>
            <tr style="text-align: center;">
                <td colspan="2">
                    <input style="width: auto;" type="button" onclick="tijiao()" value="提交">
                </td>
            </tr>
        </table>
    </center>
</form>

<script type="text/javascript">
    function tijiao() {
        var m1 = $("#tbPasswords").val();//原先
        var m2 = $("#tbPassword").val();//要变成的密码
        var m3 = $("#tbPasswordss").val();//重复密码

        if (m1.length > 5 && m2.length > 5 && m3.length > 5) {
            if (m2 == m3) {
                $("#loginForm").submit;//提交表单
            } else {
                alert("2次密码不一样");
            }
        } else {
            alert("密码太短,犹如你一样")
        }
    }

    $('#tbPassword').focus(function () {
        $('#pwdLevel_1').attr('class', 'ywz_zhuce_hongxian');
        $('#tbPassword').keyup();

    });

    $('#tbPassword').keyup(function () {
        var __th = $(this);

        if (!__th.val()) {
            $('#pwd_tip').hide();
            $('#pwd_err').show();
            Primary();
            return;
        }
        if (__th.val().length < 6) {
            $('#pwd_tip').hide();
            $('#pwd_err').show();
            Weak();
            return;
        }
        var _r = checkPassword(__th);
        if (_r < 1) {
            $('#pwd_tip').hide();
            $('#pwd_err').show();
            Primary();
            return;
        }

        if (_r > 0 && _r < 2) {
            Weak();
        } else if (_r >= 2 && _r < 4) {
            Medium();
        } else if (_r >= 4) {
            Tough();
        }

        $('#pwd_tip').hide();
        $('#pwd_err').hide();
    });


    function Primary() {
        $('#pwdLevel_1').attr('class', 'ywz_zhuce_huixian');
        $('#pwdLevel_2').attr('class', 'ywz_zhuce_huixian');
        $('#pwdLevel_3').attr('class', 'ywz_zhuce_huixian');
    }

    function Weak() {
        $('#pwdLevel_1').attr('class', 'ywz_zhuce_hongxian');
        $('#pwdLevel_2').attr('class', 'ywz_zhuce_huixian');
        $('#pwdLevel_3').attr('class', 'ywz_zhuce_huixian');
    }

    function Medium() {
        $('#pwdLevel_1').attr('class', 'ywz_zhuce_hongxian');
        $('#pwdLevel_2').attr('class', 'ywz_zhuce_hongxian2');
        $('#pwdLevel_3').attr('class', 'ywz_zhuce_huixian');
    }

    function Tough() {
        $('#pwdLevel_1').attr('class', 'ywz_zhuce_hongxian');
        $('#pwdLevel_2').attr('class', 'ywz_zhuce_hongxian2');
        $('#pwdLevel_3').attr('class', 'ywz_zhuce_hongxian3');
    }


    function checkPassword(pwdinput) {
        var maths, smalls, bigs, corps, cat, num;
        var str = $(pwdinput).val()
        var len = str.length;

        var cat = /.{16}/g
        if (len == 0) return 1;
        if (len > 16) {
            $(pwdinput).val(str.match(cat)[0]);
        }
        cat = /.*[\u4e00-\u9fa5]+.*$/
        if (cat.test(str)) {
            return -1;
        }
        cat = /\d/;
        var maths = cat.test(str);
        cat = /[a-z]/;
        var smalls = cat.test(str);
        cat = /[A-Z]/;
        var bigs = cat.test(str);
        var corps = corpses(pwdinput);
        var num = maths + smalls + bigs + corps;

        if (len < 6) {
            return 1;
        }

        if (len >= 6 && len <= 8) {
            if (num == 1) return 1;
            if (num == 2 || num == 3) return 2;
            if (num == 4) return 3;
        }

        if (len > 8 && len <= 11) {
            if (num == 1) return 2;
            if (num == 2) return 3;
            if (num == 3) return 4;
            if (num == 4) return 5;
        }

        if (len > 11) {
            if (num == 1) return 3;
            if (num == 2) return 4;
            if (num > 2) return 5;
        }
    }

    function corpses(pwdinput) {
        var cat = /./g
        var str = $(pwdinput).val();
        var sz = str.match(cat)
        for (var i = 0; i < sz.length; i++) {
            cat = /\d/;
            maths_01 = cat.test(sz[i]);
            cat = /[a-z]/;
            smalls_01 = cat.test(sz[i]);
            cat = /[A-Z]/;
            bigs_01 = cat.test(sz[i]);
            if (!maths_01 && !smalls_01 && !bigs_01) {
                return true;
            }
        }
        return false;
    }
</script>

</body>
</html>

