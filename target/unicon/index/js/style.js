
var path;
$(function (){
	path=$("#path").val();
});
$("#zhishi").click(function() {
    $(this).hide();
})
$(".qiehuan").click(function (){
	$("#zhishi").hide(1000);
	$(this).parents(".login").hide().siblings().show();	
});


$(".login-tab li").click(function () {
    $(this).addClass("login-on").siblings().removeClass("login-on");
    $(".login-style").eq($(this).index()).show().siblings().hide();
    $(".tishi").hide();
})
var wait =60;
 document.getElementById("btn").disabled =false;
 function time(o) {
     if (wait ==0) {
         o.removeAttribute("disabled");o.value ="获取动态密码";wait =60;
     } else {
         o.setAttribute("disabled",true);
         o.value ="重新发送(" + wait + ")";
         wait--;
         setTimeout(function () {time(o);
         },1000)
}
}

/*//登录操作
function cliLogin() {

	var txtUser = $.trim($("#txtUser").val());
	var txtPwd = $("#Userpwd").val();
	var txtCode = $.trim($('#txtCode').val());
	if ($.trim(txtUser) == "") {
		Tip('请输入账号！');
		$("#txtUser").focus();
		return;
	}
	if ($.trim(txtPwd) == "") {
		Tip('请输入密码！');
		$("#Userpwd").focus();
		return;
	}
/!*	if ($('#logincode').attr('iscode') == "1" && txtCode == "") {
		Tip('请输入验证码！');
		$("#txtCode").focus();
		return ;
	}*!/
	$("#oneform").submit();
	alert(77878);
}

function subfrom(){
	alert(445);
	var code = $("#Code").val();
	var phone = $.trim($("#phone").val());
	if ($.trim(phone) == "") {
		Tip('请填写手机号码！');
		$("#phone").focus();
		return;
	}
	if ($.trim(Code) == "") {
		Tip('请填写验证码！');
		$("#Code").focus();
		return;
	}
	/!*    if ($("#yz-code").is(":visible") && $.trim(code) == "") {
            Tip('请填写验证码！');
            $("#txtCode2").focus();
            return;
        }*!/
	alert(35563);
	// return false;
	$("#twoform").submit();
	alert(77878);
}*/
 

/*ajax服务密码登录*/

function aa() {

	var a = $.trim($("#PHONECARDNUMBER1").val());
	var b = $.trim($("#PHONECARDPASSWORD1").val());

	if ($.trim(a) == "") {
		Tip('请输入账号！');
		$("#PHONECARDNUMBER1").focus();
		return;
	}
	if ($.trim(b) == "") {
		Tip('请输入密码！');
		$("#PHONECARDPASSWORD1").focus();
		return;
	}
alert(a);
	$.ajax({
		url: path+"/jsp/login.action",
		 contentType : "application/json;charset=utf-8", //如果采用requestbody那么一定要加
		type: "POST",
		dataType:"text",//设置接收后端的数据的类型
		async:true,//设置异步，不然可能接收不到后端返回的json
		data:{"uphone":"18030177972", "PHONECARDPASSWORD1" :"123456"},
		success : function(res){
			//var msg=res.getKey($.trim($("#PHONECARDNUMBER").val()));
			alert(res);
			console.log(res);

		}
	});


}

/*ajax手机验证码登录*/
function subfrom(){
	var code = $("#Code").val();
	var phone = $.trim($("#phone").val());
	if ($.trim(phone) == "") {
		Tip('请填写手机号码！');
		$("#phone").focus();
		return;
	}
	if ($.trim(Code) == "") {
		Tip('请填写验证码！');
		$("#Code").focus();
		return;
	}
	$.ajax({
		url: path+"/jsp/loginn.action",
		contentType : "application/json;charset=utf-8", //如果采用requestbody那么一定要加
		type: "POST",
		dataType:"json",//设置接收后端的数据的类型
		async:true,//设置异步，不然可能接收不到后端返回的json
		data:{"code":code, "phone" :phone},
		success : function(res){
			alert(res);
			console.log(res);
			alert("chenggongg");
		}
	});

}
 
  /*发送验证码*/
function Sendpwd(sender) {
	/*var code = $("#Code").val();*/
	var phone = $.trim($("#phone").val());
	alert(phone);
	if ($.trim(phone) == "") {
		Tip('请填写手机号码！');
		$("#phone").focus();
		return;
	}
	alert(3242);
/*	if ($("#yz-code").is(":visible") && $.trim(code) == "") {
		Tip('请填写验证码！');
		$("#Code").focus();
		return;
	}*/

		$.ajax({
			url: path+"/jsp/userinfo3.action",	//取得地方
			// contentType : "application/json;charset=utf-8", //如果采用requestbody那么一定要加
			type: "POST",
			dataType:"json",//设置接收后端的数据的类型
			async:true,//设置异步，不然可能接收不到后端返回的json
			data:{"phone": $.trim($("#phone").val())},	//传的数据
			success : function(res){

				alert(msg);
				console.log(res);
			}
		});


}



/*$("#dynamicLogon").click(function() {
	var pwd = $.trim($("#dynamicPWD").val());
	var phone = $.trim($("#phone").val());
	var code = $("#txtCode2").val();
	if ($.trim(phone) == "") {
		Tip('请填写手机号码！');
		$("#phone").focus();
		return;
	}
	if ($("#yz-code").is(":visible") && $.trim(code) == "") {
		Tip('请填写验证码！');
		$("#txtCode2").focus();
		return;
	}
	if ($.trim(pwd) == "") {
		Tip('动态密码未填写！');
		$("#dynamicPWD").focus();
		return;
	}
	return;
}); */
function Tip(msg) {
	$(".tishi").show().text(msg);
}
console.log("\u002f\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u000d\u000a\u0020\u002a\u0009\u0009\u0009\u0009\u0009\u0009\u0009\u0009\u0009\u0009\u0009\u0009\u0009\u0009\u0009\u0009\u002a\u0009\u0009\u000d\u000a\u0020\u002a\u0020\u0009\u0009\u0009\u0009\u0009\u0009\u0020\u0020\u0020\u0020\u0020\u0020\u4ee3\u7801\u5e93\u0009\u0009\u0009\u0009\u0009\u0009\u0009\u002a\u000d\u000a\u0020\u002a\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0077\u0077\u0077\u002e\u0064\u006d\u0061\u006b\u0075\u002e\u0063\u006f\u006d\u0009\u0009\u0009\u0009\u0009\u0009\u0009\u002a\u000d\u000a\u0020\u002a\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0009\u0009\u0020\u0020\u52aa\u529b\u521b\u5efa\u5b8c\u5584\u3001\u6301\u7eed\u66f4\u65b0\u63d2\u4ef6\u4ee5\u53ca\u6a21\u677f\u0009\u0009\u0009\u002a\u000d\u000a\u0020\u002a\u0020\u0009\u0009\u0009\u0009\u0009\u0009\u0009\u0009\u0009\u0009\u0009\u0009\u0009\u0009\u0009\u0009\u002a\u000d\u000a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002a\u002f");