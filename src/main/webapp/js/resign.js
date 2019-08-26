$(function(){
    $("#username").on({"blur":function(){
            var uname = $("#username").val();
           if(uname==""){
               alert("用户名不能为空！");
               return;
           }
           $.post("demo/UserAction!checkName",{"uname":uname},function(data){
               // var obj = eval('('+data+')');
               alert(data.map.msg1);

           })


        }});
})