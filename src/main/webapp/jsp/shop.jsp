<%--
  Created by IntelliJ IDEA.
  User: 黄奇峰
  Date: 2019/8/26
  Time: 19:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>Bootstrap 实例 - 非导航链接</title>
    <base href="<%=basePath%>">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link href=<%=path+"/css/shop.css"%> rel="stylesheet">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src=<%=path+"/js/shop.js"%>></script>
</head>
<body>
<nav class="navbar navbar-default navbar-inverse" role="navigation" id="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#example-navbar-collapse">
                <span class="sr-only">切换导航</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <a  class="navbar-brand" id="welcome" href="#">你好，欢迎来到中国联通积分商城</a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav " >
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        我的账户 <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu navbar-right">
                        <li><a href="#">我的订单</a></li>
                        <li><a href="#">积分查询</a></li>
                        <li><a href="#">地址管理</a></li>
                        <li><a href="#">我的收藏</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        帮助中心 <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu ">
                        <li><a href="#">关于商城</a></li>
                        <li><a href="#">常见问题</a></li>
                        <li><a href="#">公告中心</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        网站导航 <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu ">
                        <li><a href="#">联通商城</a></li>
                        <li><a href="#">自助服务</a></li>
                        <li><a href="#">充值缴费</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><span class="glyphicon glyphicon-user"></span> 注册</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> 登录</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <div class="row">
        <div class="col-sm-3">
           <div class="fakeimg">
               <img class="img" src=<%=path+"/image/unicon.png"%> >

           </div>

            <div class="panel-group" id="accordion">
                <div class="panel panel-warning" >
                    <div class="panel-heading" >
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion"
                               href="#collapseFour">
                                全部产品分类
                            </a>
                        </h4>
                    </div>
                    <div id="collapseFour" class="panel-collapse collapse" >
                        <div class="panel-body" id="m">
                            <div class="dropdown">
                                <a href="#" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
                                    网站导航 <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                                    <li role="presentation" class="divider"></li>
                                    <li role="presentation" class="dropdown-header">下拉菜单标题</li>
                                    <li role="presentation"><a href="#">积分查询</a></li>
                                    <li role="presentation"><a href="#">积分查询</a></li>
                                    <li role="presentation"><a href="#">积分查询</a></li>
                                </ul>
                            </div>

                            <div class="dropdown">
                                <a href="#" class="btn dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown">
                                    网站导航 <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu2">
                                    <li role="presentation" class="divider"></li>
                                    <li role="presentation" class="dropdown-header">下拉菜单标题</li>
                                    <li role="presentation"><a href="#">积分查询</a></li>
                                    <li role="presentation"><a href="#">积分查询</a></li>
                                    <li role="presentation"><a href="#">积分查询</a></li>
                                </ul>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-6" >
                <form class="navbar-form navbar-left" role="search">
                    <div class="form-group ">
                        <input type="text" id="input" class="form-control" placeholder="请输入商品名称进行搜索">
                    </div>
                    <button type="submit" class="btn btn-default">搜索</button>
                </form>
            <br><br><br>
                <span id="span">热门搜索：</span>
                <a href="#">家居用品</a>
                <a href="#">手机配件</a>
            <br><br>
            <div class="btn-toolbar" role="toolbar">
                <div class="btn-group" id="one">
                    <button type="button" class="btn btn-default">首页</button>
                </div>
                <div class="btn-group" id="two">
                    <button type="button" class="btn btn-default">我能兑换</button>
                </div>
                <div class="btn-group" id="tre">
                    <button type="button" class="btn btn-default">排行版</button>
                </div>
                <div class="btn-group" id="four">
                    <button type="button" class="btn btn-default">省份专区</button>
                </div>
                <div class="btn-group" id="five">
                    <button type="button" class="btn btn-default">我的账户</button>
                </div>
        </div>

            <div id="myCarousel" class="carousel slide">
                <!-- 轮播（Carousel）指标 -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
                <!-- 轮播（Carousel）项目 -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img  src=<%=path+"/image/unicon.png"%>  >
                    </div>
                    <div class="item">
                        <img  src=<%=path+"/image/unicon.png"%> >
                    </div>
                    <div class="item">
                        <img  src=<%=path+"/image/unicon.png"%> >
                    </div>
                </div>
                <!-- 轮播（Carousel）导航 -->
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>

        <div class="col-sm-3">
            <br><br><br><br><br>
            <div class="panel-group" id="accordion1">
                <div class="panel panel-warning" >
                    <div class="panel-heading" >
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion1"
                               href="#collapseFour1">
                                商城公告
                            </a>
                        </h4>
                    </div>
                    <div id="collapseFour1" class="panel-collapse collapse" >
                        <div class="panel-body">
                            <div class="dropdown">
                                <a class="a">关于治理傻逼的公告</a>
                                <br>
                                <a class="a">关于治理傻逼的公告</a>
                                <br>
                                <a class="a">关于治理傻逼的公告</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        </div>
</div>
<br><br><br>

    <div class="row">
        <div class="col-sm-6 col-md-12">
            <img class="g" src=<%=path+"/image/new.png"%> alt="通用的占位符缩略图">
        </div>
        <div class="col-sm-6 col-md-2">
            <div class="thumbnail">
                <img src=<%=path+"/image/cat.jpg"%> >
                <div class="caption">
                    <a href="#">猫</a>
                    <br><br>
                    <p><font style="color: #b21f2d;">2000</font>积分</p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-2">
            <div class="thumbnail">
                <img src=<%=path+"/image/cat.jpg"%> >
                <div class="caption">
                    <a href="#">猫</a>
                    <br><br>
                    <p><font style="color: #b21f2d;">2000</font>积分</p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-2">
            <div class="thumbnail">
                <img src=<%=path+"/image/cat.jpg"%> >
                <div class="caption">
                    <a href="#">猫</a>
                    <br><br>
                    <p><font style="color: #b21f2d;">2000</font>积分</p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-2">
            <div class="thumbnail">
                <img src=<%=path+"/image/cat.jpg"%>
                             alt="通用的占位符缩略图">
                <div class="caption">
                    <a href="#">猫</a>
                    <br><br>
                    <p><font style="color: #b21f2d;">2000</font>积分</p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-2">
            <div class="thumbnail">
                <img src=<%=path+"/image/cat.jpg"%>
                             alt="通用的占位符缩略图">
                <div class="caption">
                    <a href="#">猫</a>
                    <br><br>
                    <p><font style="color: #b21f2d;">2000</font>积分</p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-2">
            <div class="thumbnail">
                <img src=<%=path+"/image/cat.jpg"%>
                             alt="通用的占位符缩略图">
                <div class="caption">
                    <a href="#">猫</a>
                    <br><br>
                    <p><font style="color: #b21f2d;">2000</font>积分</p>

                </div>
            </div>
        </div>
    </div>


    <script type="text/javascript">
        $(function () { $('#collapseFour').collapse({
            toggle: false
        })});
        $(function () { $('#collapseTwo').collapse('show')});
        $(function () { $('#collapseThree').collapse('toggle')});
        $(function () { $('#collapseOne').collapse('hide')});
    </script>

</body>

</html>
