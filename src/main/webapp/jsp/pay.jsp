<%--
  Created by IntelliJ IDEA.
  User: 黄奇峰
  Date: 2019/8/28
  Time: 14:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>Title</title>
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src=<%=path+"/js/common.js"%>></script>
    <link href=<%=path+"/css/common.css"%> rel="stylesheet">
    <link href=<%=path+"/css/shopdetail.css"%> rel="stylesheet">



    <script type="text/javascript">
        $(document).ready(function(){
            var showproduct = {
                "boxid":"showbox",
                "sumid":"showsum",
                "boxw":400,//宽度,该版本中请把宽高填写成一样
                "boxh":400,//高度,该版本中请把宽高填写成一样
                "sumw":60,//列表每个宽度,该版本中请把宽高填写成一样
                "sumh":60,//列表每个高度,该版本中请把宽高填写成一样
                "sumi":7,//列表间隔
                "sums":5,//列表显示个数
                "sumsel":"sel",
                "sumborder":1,//列表边框，没有边框填写0，边框在css中修改
                "lastid":"showlast",
                "nextid":"shownext"
            };//参数定义
            $.ljsGlasses.pcGlasses(showproduct);//方法调用，务必在加载完后执行
            $(function(){
                $('.tabs a').click(function(){
                    var $this=$(this);
                    $('.panel').hide();
                    $('.tabs a.active').removeClass('active');
                    $this.addClass('active').blur();
                    var panel=$this.attr("href");
                    $(panel).show();
                    return false;  //告诉浏览器  不要纸箱这个链接
                })//end click
                $(".tabs li:first a").click()   //web 浏览器，单击第一个标签吧
            });//end ready
            $(".centerbox li").click(function(){
                $("li").removeClass("now");
                $(this).addClass("now")
            });
        });
    </script>
</head>
<body>
<!-----商品详情部分------->
<div class="shopdetails">
    <!-------放大镜-------->
    <div id="leftbox">
        <div id="showbox">
            <img src=<%=path+"/image/shopdetail/img01.png"%> width="200" height="200" />
            <img src=<%=path+"/image/shopdetail/img02.png"%> width="200" height="200" />
            <img src=<%=path+"/image/shopdetail/img03.png"%> width="200" height="200" />
            <img src=<%=path+"/image/shopdetail/img04.png"%> width="200" height="200" />
            <img src=<%=path+"/image/shopdetail/img05.png"%> width="200" height="200" />

        </div>
        <!--展示图片盒子-->
        <div id="showsum"></div>
        <!--展示图片里边-->
        <p class="showpage">
            <a href="javascript:void(0);" id="showlast"> < </a>
            <a href="javascript:void(0);" id="shownext"> > </a>
        </p>

    </div>
    <!----中间----->

    <div class="centerbox">
        <p class="imgname">叠叠杯水杯茶杯套杯陶瓷咖啡牛奶杯具套装</p>
        <p class="price">价格：<samp>2000积分</samp></p>
        <p class="youhui">店铺优惠：<samp>购物满两件打八折</samp></p>
        <p class="kefu">客服：</p>
        <div class="clear"></div>
        <p class="buy"><a href="#" id="firstbuy">立即购买</a>
            <a href="#" >加入购物车</a></p>
        <div class="clear"></div>
        <div class="fenx"><a href="#"><img src=<%=path+"/image/shopdetail/tell07.png"%> ></a></div>
        <p class="fuwu">服务承诺：</p>
        <p class="pay">支付方式：</p>
    </div>

    <!-----右边------->
    <div class="rightbox">
        <p class="name">——热卖商品</p>
        <img src=<%=path+"/image/shopdetail/reimai02.jpg"%> width="130" height="180">
        <p>200</p>
        <img src=<%=path+"/image/shopdetail/reimai01.jpg"%> width="130" height="180">
        <p>400</p>


        <img src=<%=path+"/image/shopdetail/reimai03.jpg"%> width="130" height="180">
        <p>1000</p>
    </div>

</div>
<!-----商品详情部分结束------->
<!-----商品详情评价部分------->
<div class="evaluate">

    <div class="classify">
        <div class="shopsee">
            <p class="name">看了又看</p>
            <a href="#" class="ex01">
                <img src=<%=path+"/image/shopdetail/see.jpg"%> width="170" height="245">
                <p>手绘陶瓷茶壶</p>
                <p>商城价:168元</p>
            </a>
            <a href="#" class="ex01">
                <img src=<%=path+"/image/shopdetail/see1.jpg"%> width="170" height="245">
                <p>茶具特价紫砂</p>
                <p>商城价:￥234元</p>
            </a>
            <a href="#" class="ex01">
                <img src=<%=path+"/image/shopdetail/see2.jpg"%> width="170" height="245">
                <p>创意爱家杯盖</p>
                <p>商城价:￥38元</p>
            </a>
            <a href="#" class="ex01">
                <img src=<%=path+"/image/shopdetail/see03.jpg"%> width="170" height="245">
                <p>木质棋盘</p>
                <p>商城价:￥158元</p>
            </a>
            <a href="#" class="ex01">
                <img src=<%=path+"/image/shopdetail/see04.jpg"%> width="170" height="245">
                <p>北欧风创意椅子</p>
                <p>商城价:￥178元</p>
            </a>
            <a href="#" class="ex01">
                <img src=<%=path+"/image/shopdetail/see5.jpg"%> width="170" height="245">
                <p>木质简约衣架</p>
                <p>商城价:￥68元</p>
            </a>
            <a href="#" class="ex01">
                <img src=<%=path+"/image/shopdetail/see07.jpg"%> width="170" height="245">
                <p>龙猫微观景观小夜灯</p>
                <p>商城价:￥258元</p>
            </a>
            <a href="#" class="ex01">
                <img src=<%=path+"/image/shopdetail/see06.jpg"%> width="170" height="245">
                <p>火树银花灯</p>
                <p>商城价:￥858元</p>
            </a>
            <a href="#" class="ex01">
                <img src=<%=path+"/image/shopdetail/content_04.jpg"%> width="170" height="245">
                <p>木质烘脚器</p>
                <p>商城价:￥108元</p>
            </a>
            <a href="#" class="ex01">
                <img src=<%=path+"/image/shopdetail/see08.png"%> width="170" height="245">
                <p>个性实木壁灯</p>
                <p>商城价:￥68元</p>
            </a>
            <a href="#" class="ex01">
                <img src=<%=path+"/image/shopdetail/see09.png"%> width="170" height="245">
                <p>创意马克杯</p>
                <p>商城价:￥58元</p>
            </a>
        </div>
    </div>
    <div class="tabbedPanels">
        <ul class="tabs">
            <li><a href="#panel01">商品详情</a></li>
            <li><a href="#panel02" class="active">累计评价</a></li>
        </ul>

        <div class="panelContainer">
            <div class="panel" id="panel01">
                <p class="sell">商品描述</p>
                <p>创意造型 浓浓文艺气息 闲暇时光 与好友分享</p>
                <p></p>
                <p class="sell">整体款式</p>
                <img src=<%=path+"/image/shopdetail/evaluate101.jpg"%>>
                <img src=<%=path+"/image/shopdetail/evaluate102.jpg"%>>
                <img src=<%=path+"/image/shopdetail/evaluate103.jpg"%>>
                <img src=<%=path+"/image/shopdetail/evaluate104.jpg"%>>
                <img src=<%=path+"/image/shopdetail/evaluate105.jpg"%>>
                <img src=<%=path+"/image/shopdetail/evaluate106.jpg"%>>
                <div class="clear"></div>
            </div>

            <div class="panel" id="panel02">
                <p class="sell">买家评价</p>
                <img src=<%=path+"/image/shopdetail/detail101.png"%>>
                <p class="judge">全部评价(20)<span>晒图(13)</span></p>

                <div class="judge01">
                    <div class="idimg"><img src=<%=path+"/image/shopdetail/detail102.png"%>></div>
                    <div class="write">
                        <p class="idname">落***1</p>
                        <p>杯子很可爱！就是有两三个杯子后面的小图案有一丢丢斜下来，不过没多大关系，其他的还好。有一点真的特别特别好的就是😂包裹的非常非常非常严实，简直就是里三层外三层！杯子完好无损，赠送的刷子也包装的很好😂让我第一眼以为那是一个棉花糖hhh</p>
                        <p class="which">颜色:创意胡子</p>
                        <img src=<%=path+"/image/shopdetail/detail103.jpg"%> width="40px" height="40px">
                        <img src=<%=path+"/image/shopdetail/detail104.jpg"%> width="40px" height="40px">
                        <img src=<%=path+"/image/shopdetail/detail105.jpg"%> width="40px" height="40px">
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</div>

<!-----商品详情评价部结束分------->

<!----bottom_页脚部分----->
<div class="backf">
    <div id="footer">
        <ul>
            <li class="sy">支付方式</li>
            <li><a href="#">在线支付</a></li>
            <li><a href="#">货到付款</a></li>
            <li><a href="#">发票说明</a></li>
            <li><a href="#">余额宝</a></li>

        </ul>
        <ul>
            <li class="sy">购物指南</li>
            <li><a href="#">免费注册</a></li>
            <li><a href="#">申请会员</a></li>
            <li><a href="#">开通支付宝</a></li>
            <li><a href="#">支付宝充值</a></li>
        </ul>
        <ul>
            <li class="sy">商家服务</li>
            <li><a href="#">联系我们</a></li>
            <li><a href="#">客服服务</a></li>
            <li><a href="#">物流服务</a></li>
            <li><a href="#">缺货赔付</a></li>
        </ul>
        <ul>
            <li class="sy">关于我们</li>
            <li><a href="#">知识产权</a></li>
            <li><a href="#">网站合作</a></li>
            <li><a href="#">规则意见</a></li>
            <li><a href="#">帮助中心</a></li>
        </ul>
        <ul>
            <li class="sy">其他服务</li>
            <li><a href="#">诚聘英才</a></li>
            <li><a href="#">法律声明</a></li>

        </ul><div class="clear"></div>
    </div>

</div>
<!-- 购物车效果 -->
<div class="cd-cart-container empty">
    <a href="#0" class="cd-cart-trigger">
        Cart
        <ul class="count">
            <li>0</li>
            <li>0</li>
        </ul> <!-- .count -->
    </a>

    <div class="cd-cart">
        <div class="wrapper">
            <header>
                <h2>Cart</h2>
                <span class="undo">Item removed. <a href="#0">Undo</a></span>
            </header>

            <div class="body">
                <ul>
                    <!-- products added to the cart will be inserted here using JavaScript -->
                </ul>
            </div>

            <footer>
                <a href="#0" class="checkout btn"><em>Checkout - $<span>0</span></em></a>
            </footer>
        </div>
    </div> <!-- .cd-cart -->
</div> <!-- cd-cart-container -->

</body>
</html>
