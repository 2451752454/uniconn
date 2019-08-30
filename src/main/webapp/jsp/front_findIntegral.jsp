<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/8/28
  Time: 16:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
﻿<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>FinArc Interior Design  : Home</title>
    <link rel="icon" href="<%=path%>/images/favicon.jpg" type="image/x-icon">
    <!-- Stylesheets-->
    <link rel="stylesheet" type="text/css"
          href="https://fonts.googleapis.com/css?family=Poppins:400,500%7CTeko:300,400,500%7CMaven+Pro:500">
    <link rel="stylesheet" href=<%=basePath + "css/bootstrap.css"%>>
    <link rel="stylesheet" href=<%=basePath + "css/fonts.css"%>>
    <link rel="stylesheet" href=<%=basePath + "css/style.css"%>
            id="main-styles-link">
    <link rel="stylesheet" href=<%=basePath + "css/front_findIntegral.css"%>>

    <!-- <script type="text/javascript" charset="utf-8" src="../jqgrid/js/form.min.js"></script> -->


</head>
<body>
<div class="page">
    <!-- Page Header Start -->
    <header class="section page-header">
        <!-- 菜单 -->
        <div class="rd-navbar-wrap rd-navbar-modern-wrap">
            <nav class="rd-navbar rd-navbar-modern" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed" data-md-layout="rd-navbar-fixed" data-md-device-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-static" data-lg-device-layout="rd-navbar-fixed" data-xl-layout="rd-navbar-static" data-xl-device-layout="rd-navbar-static" data-xxl-layout="rd-navbar-static" data-xxl-device-layout="rd-navbar-static" data-lg-stick-up-offset="46px" data-xl-stick-up-offset="46px" data-xxl-stick-up-offset="70px" data-lg-stick-up="true" data-xl-stick-up="true" data-xxl-stick-up="true">
                <div class="rd-navbar-main-outer">
                    <div class="rd-navbar-main">
                        <!-- RD Navbar Panel-->
                        <div class="rd-navbar-panel">
                            <!-- RD Navbar Toggle-->
                            <button class="rd-navbar-toggle" data-rd-navbar-toggle=".rd-navbar-nav-wrap"><span></span></button>
                            <!-- RD Navbar Brand-->
                            <div class="rd-navbar-brand"><a class="brand" href="index.html"><img src="../images/logos/liantong.jpg" class="logo-sticky" alt="" title=""></a></div>
                        </div>
                        <div class="rd-navbar-main-element">
                            <div class="rd-navbar-nav-wrap">
                                <!-- RD Navbar Basket-->
                                <div class="rd-navbar-basket-wrap">
                                    <button class="rd-navbar-basket fl-bigmug-line-shopping198" data-rd-navbar-toggle=".cart-inline"><span>2</span></button>
                                    <div class="cart-inline">
                                        <div class="cart-inline-header">
                                            <h5 class="cart-inline-title">In cart:<span> 2</span> Products</h5>
                                            <h6 class="cart-inline-title">Total price:<span> $524</span></h6>
                                        </div>
                                        <div class="cart-inline-body">
                                            <div class="cart-inline-item">
                                                <div class="unit align-items-center">
                                                    <div class="unit-left"><a class="cart-inline-figure" href="single-product.html"><img src="../images/products/products-mini-1.jpg" alt="" width="100" height="100"/></a></div>
                                                    <div class="unit-body">
                                                        <h6 class="cart-inline-name"><a href="single-product.html">Interior Design</a></h6>
                                                        <div>
                                                            <div class="group-xs group-middle-2">
                                                                <div class="table-cart-stepper">
                                                                    <input class="form-input" type="number" data-zeros="true" value="1" min="1" max="1000"/>
                                                                </div>
                                                                <h6 class="cart-inline-title">$289</h6>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="cart-inline-item">
                                                <div class="unit align-items-center">
                                                    <div class="unit-left"><a class="cart-inline-figure" href="single-product.html"><img src="../images/products/products-mini-2.jpg" alt="" width="100" height="100"/></a></div>
                                                    <div class="unit-body">
                                                        <h6 class="cart-inline-name"><a href="single-product.html">Interior Design</a></h6>
                                                        <div>
                                                            <div class="group-xs group-middle-2">
                                                                <div class="table-cart-stepper">
                                                                    <input class="form-input" type="number" data-zeros="true" value="1" min="1" max="1000"/>
                                                                </div>
                                                                <h6 class="cart-inline-title">$235</h6>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="cart-inline-footer">
                                            <div class="group-sm"><a class="button button-md button-default-outline button-wapasha" href="cart-page.html">Go to cart</a><a class="button button-md button-secondary button-pipaluk" href="checkout.html">Checkout</a></div>
                                        </div>
                                    </div>
                                </div>
                                <a class="rd-navbar-basket rd-navbar-basket-mobile fl-bigmug-line-shopping198" href="cart-page.html"><span>2</span></a>
                                <!-- RD Navbar Search-->

                                <!-- RD Navbar Nav-->
                                <ul class="rd-navbar-nav">
                                    <li class="rd-nav-item active"><a class="rd-nav-link"
                                                                      href="<%=path%>/jsp/front_Main.jsp">首页</a></li>
                                    <li class="rd-nav-item"><a class="rd-nav-link" href="#">查询</a>
                                        <!-- RD Navbar Dropdown-->
                                        <ul class="rd-menu rd-navbar-dropdown">
                                            <li class="rd-dropdown-item"><a
                                                    class="rd-dropdown-link" href="index.html">实时话费</a></li>
                                            <li class="rd-dropdown-item"><a
                                                    class="rd-dropdown-link" href="index-1.html">账户余额</a></li>
                                            <li class="rd-dropdown-item"><a
                                                    class="rd-dropdown-link" href="index-2.html">历史账单</a></li>
                                            <li class="rd-dropdown-item"><a
                                                    class="rd-dropdown-link" href="#">积分明细</a></li>
                                            <li class="rd-dropdown-item"><a
                                                    class="rd-dropdown-link" href="index-4.html">收获地址</a></li>
                                            <li class="rd-dropdown-item"><a
                                                    class="rd-dropdown-link" href="index-5.html">我的订单</a></li>
                                        </ul></li>
                                    <li class="rd-nav-item"><a class="rd-nav-link"
                                                               href="grid-gallery.html">号码/套餐</a> <!-- RD Navbar Dropdown-->
                                        <ul class="rd-menu rd-navbar-dropdown">
                                            <li class="rd-dropdown-item"><a
                                                    class="rd-dropdown-link" href="grid-gallery.html">选号码</a></li>
                                            <li class="rd-dropdown-item"><a
                                                    class="rd-dropdown-link" href="<%=path%>/jsp/card_combo.jsp">更换套餐</a></li>
                                            <li class="rd-dropdown-item"><a
                                                    class="rd-dropdown-link" href="masonry-gallery.html">业务查询退订</a></li>
                                        </ul></li>
                                    <li class="rd-nav-item"><a class="rd-nav-link"
                                                               href="classic-blog.html">充值交费</a> <!-- RD Navbar Dropdown-->
                                        <ul class="rd-menu rd-navbar-dropdown">
                                            <li class="rd-dropdown-item"><a
                                                    class="rd-dropdown-link" href="classic-blog.html">话费充值</a></li>
                                            <li class="rd-dropdown-item"><a
                                                    class="rd-dropdown-link" href="<%=path%>/jsp/card_combo.jsp">流量充值</a></li>
                                            <li class="rd-dropdown-item"><a
                                                    class="rd-dropdown-link" href="grid-blog-2.html">Grid
                                                Blog 2</a></li>
                                            <li class="rd-dropdown-item"><a
                                                    class="rd-dropdown-link" href="grid-blog-3.html">Grid
                                                Blog 3</a></li>
                                            <li class="rd-dropdown-item"><a
                                                    class="rd-dropdown-link" href="blog-post.html">Blog
                                                Post</a></li>
                                        </ul></li>
                                    <li class="rd-nav-item"><a class="rd-nav-link"
                                                               href="shop.html">我的联通</a> <!-- RD Navbar Dropdown-->
                                        <ul class="rd-menu rd-navbar-dropdown">
                                            <li class="rd-dropdown-item"><a
                                                    class="rd-dropdown-link" href="shop.html">商城</a></li>
                                            <li class="rd-dropdown-item"><a
                                                    class="rd-dropdown-link" href="single-product.html">积分商城</a></li>
                                            <li class="rd-dropdown-item"><a
                                                    class="rd-dropdown-link" href="cart-page.html">手机卡充值</a></li>
                                            <li class="rd-dropdown-item"><a
                                                    class="rd-dropdown-link" href="checkout.html">Checkout</a></li>
                                        </ul></li>
                                    <li class="rd-nav-item"><a class="rd-nav-link"
                                                               href="contact-us.html">-暂无-</a></li>
                                    <li class="rd-nav-item"><a class="rd-nav-link" href="#">商城</a>
                                        <!-- RD Navbar Megamenu-->
                                        <ul class="rd-menu rd-navbar-megamenu">
                                            <li class="rd-megamenu-item">
                                                <div>
                                                    <h5 class="rd-megamenu-title">手机</h5>
                                                    <ul class="rd-megamenu-list">
                                                        <li class="rd-megamenu-list-item"><a
                                                                class="rd-megamenu-list-link" href="typography.html">Xiaomi/小米</a></li>
                                                        <li class="rd-megamenu-list-item"><a
                                                                class="rd-megamenu-list-link" href="buttons.html">三星</a></li>
                                                        <li class="rd-megamenu-list-item"><a
                                                                class="rd-megamenu-list-link" href="forms.html">Apple/苹果</a></li>
                                                        <li class="rd-megamenu-list-item"><a
                                                                class="rd-megamenu-list-link"
                                                                href="tabs-and-accordions.html">OnePlues/一加</a></li>
                                                        <li class="rd-megamenu-list-item"><a
                                                                class="rd-megamenu-list-link" href="counters.html">华为</a></li>
                                                        <li class="rd-megamenu-list-item"><a
                                                                class="rd-megamenu-list-link"
                                                                href="icons-with-text.html">中兴</a></li>
                                                        <li class="rd-megamenu-list-item"><a
                                                                class="rd-megamenu-list-link" href="progress-bars.html">OPPO</a></li>
                                                        <li class="rd-megamenu-list-item"><a
                                                                class="rd-megamenu-list-link"
                                                                href="calls-to-action.html">VIVO</a></li>
                                                        <li class="rd-megamenu-list-item"><a
                                                                class="rd-megamenu-list-link" href="grid-system.html" style="color:#3399cc">更多></a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li class="rd-megamenu-item">
                                                <div>
                                                    <h5 class="rd-megamenu-title">手机配件</h5>
                                                    <ul class="rd-megamenu-list">
                                                        <li class="rd-megamenu-list-item"><a
                                                                class="rd-megamenu-list-link" href="services.html">数据线</a></li>
                                                        <li class="rd-megamenu-list-item"><a
                                                                class="rd-megamenu-list-link" href="single-service.html">手机卡</a></li>
                                                        <li class="rd-megamenu-list-item"><a
                                                                class="rd-megamenu-list-link" href="our-team.html">手机耳机</a></li>
                                                        <li class="rd-megamenu-list-item"><a
                                                                class="rd-megamenu-list-link" href="testimonials.html">充电宝</a></li>
                                                        <li class="rd-megamenu-list-item"><a
                                                                class="rd-megamenu-list-link" href="404-page.html">手机贴纸</a></li>
                                                        <li class="rd-megamenu-list-item"><a
                                                                class="rd-megamenu-list-link" href="503-page.html">手机挂件</a></li>
                                                        <li class="rd-megamenu-list-item"><a
                                                                class="rd-megamenu-list-link" href="pricing.html">手机贴膜</a></li>
                                                        <li class="rd-megamenu-list-item"><a
                                                                class="rd-megamenu-list-link" href="coming-soon.html">手机支架</a></li>
                                                        <li class="rd-megamenu-list-item"><a
                                                                class="rd-megamenu-list-link" href="contact-us-2.html">手机充电器</a></li>
                                                        <li class="rd-megamenu-list-item"><a
                                                                class="rd-megamenu-list-link" href="faq.html">车载支架</a></li>
                                                        <li class="rd-megamenu-list-item"><a
                                                                class="rd-megamenu-list-link" href="search-results.html" style="color:#3399cc">更过></a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li class="rd-megamenu-item rd-megamenu-carousel">
                                                <div>
                                                    <h5 class="rd-megamenu-title">热门手机图片展示</h5>
                                                    <!-- Owl Carousel-->
                                                    <div class="owl-carousel owl-navbar" data-loop="false"
                                                         data-items="1" data-xl-items="2" data-xxl-items="2"
                                                         data-margin="16" data-dots="true">
                                                        <!-- Thumbnail Classic-->
                                                        <article class="thumbnail thumbnail-mary thumbnail-xxs">
                                                            <div class="thumbnail-mary-figure">
                                                                <img src="<%=path%>/images/products/pingguo1.jpg"
                                                                     alt="" width="272" height="288" />

                                                            </div>
                                                            <div class="thumbnail-mary-caption">
                                                                <a class="icon fl-bigmug-line-zoom60"
                                                                   href="<%=path%>/images/products/pingguo1.jpg"
                                                                   data-lightgallery="item"><img
                                                                        src="<%=path%>/images/products/pingguo1.jpg"
                                                                        alt="" width="272" height="288" />
                                                                </a>
                                                                <h6 class="thumbnail-mary-title">
                                                                    <a href="single-project.html">苹果</a>
                                                                </h6>
                                                            </div>
                                                        </article>
                                                        <!-- Thumbnail Classic-->
                                                        <article class="thumbnail thumbnail-mary thumbnail-xxs">
                                                            <div class="thumbnail-mary-figure">
                                                                <img src="<%=path%>/images/products/huawei1.jpeg" alt=""
                                                                     width="272" height="288" />
                                                            </div>
                                                            <div class="thumbnail-mary-caption">
                                                                <a class="icon fl-bigmug-line-zoom60"
                                                                   href="<%=path%>/images/products/huawei1.jpeg"
                                                                   data-lightgallery="item"><img
                                                                        src="<%=path%>/images/products/huawei1.jpeg" alt=""
                                                                        width="272" height="288" /></a>
                                                                <h6 class="thumbnail-mary-title">
                                                                    <a href="single-project.html">华为</a>
                                                                </h6>
                                                            </div>
                                                        </article>
                                                        <!-- Thumbnail Classic-->
                                                        <article class="thumbnail thumbnail-mary thumbnail-xxs">
                                                            <div class="thumbnail-mary-figure">
                                                                <img src="<%=path%>/images/products/oppo1.jpg" alt=""
                                                                     width="272" height="288" />
                                                            </div>
                                                            <div class="thumbnail-mary-caption">
                                                                <a class="icon fl-bigmug-line-zoom60"
                                                                   href="<%=path%>/images/products/oppo1.jpg"
                                                                   data-lightgallery="item"><img
                                                                        src="<%=path%>/images/products/oppo1.jpg" alt=""
                                                                        width="272" height="288" /></a>
                                                                <h6 class="thumbnail-mary-title">
                                                                    <a href="single-project.html">oppo</a>
                                                                </h6>
                                                            </div>
                                                        </article>
                                                        <!-- Thumbnail Classic-->
                                                        <article class="thumbnail thumbnail-mary thumbnail-xxs">
                                                            <div class="thumbnail-mary-figure">
                                                                <img src="<%=path%>/images/products/vivo1.jpg" alt=""
                                                                     width="272" height="288" />
                                                            </div>
                                                            <div class="thumbnail-mary-caption">
                                                                <a class="icon fl-bigmug-line-zoom60"
                                                                   href="<%=path%>/images/products/vivo1.jpg"
                                                                   data-lightgallery="item"><img
                                                                        src="<%=path%>/images/products/vivo1.jpg" alt=""
                                                                        width="272" height="288" /></a>
                                                                <h6 class="thumbnail-mary-title">
                                                                    <a href="single-project.html">vivo</a>
                                                                </h6>
                                                            </div>
                                                        </article>
                                                        <!-- Thumbnail Classic-->
                                                        <article class="thumbnail thumbnail-mary thumbnail-xxs">
                                                            <div class="thumbnail-mary-figure">
                                                                <img src="<%=path%>/images/products/xiaomi1.jpg" alt=""
                                                                     width="272" height="288" />
                                                            </div>
                                                            <div class="thumbnail-mary-caption">
                                                                <a class="icon fl-bigmug-line-zoom60"
                                                                   href="<%=path%>/images/products/xiaomi1.jpg"
                                                                   data-lightgallery="item"><img
                                                                        src="<%=path%>/images/products/xiaomi1.jpg" alt=""
                                                                        width="272" height="288" /></a>
                                                                <h6 class="thumbnail-mary-title">
                                                                    <a href="single-project.html">xiaomi/小米</a>
                                                                </h6>
                                                            </div>
                                                        </article>
                                                        <!-- Thumbnail Classic-->
                                                        <article class="thumbnail thumbnail-mary thumbnail-xxs">
                                                            <div class="thumbnail-mary-figure">
                                                                <img src="<%=path%>/images/products/yijia1.jpg" alt=""
                                                                     width="272" height="288" />
                                                            </div>
                                                            <div class="thumbnail-mary-caption">
                                                                <a class="icon fl-bigmug-line-zoom60"
                                                                   href="<%=path%>/images/products/yijia1.jpg"
                                                                   data-lightgallery="item"><img
                                                                        src="<%=path%>/images/products/yijia1.jpg" alt=""
                                                                        width="272" height="288" /></a>
                                                                <h6 class="thumbnail-mary-title">
                                                                    <a href="single-project.html">一加</a>
                                                                </h6>
                                                            </div>
                                                        </article>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul></li>
                                </ul>
                                <ul>
                                    <li>
                                        <div>
                                            <a href="www.login.com" style="color:red">亲，请登录</a>
                                        </div>
                                    </li>
                                    <li>
                                        <div>
                                            <a href="www.reg.com">免费注册</a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
        <!-- RD Navbar End -->
    </header>

    <!-- slider section end -->
    <section class="section section-sm bg-default">
        <div class="container">    </div>
    </section>



    <!--界面内容-->
    <section class="section section-sm bg-default bg_second_cl">


        <div id="div_tableintegel">
            <div>


                <table id="tableintegel">
                    <tr>
                        <th style="width:100px">积分余额：</th>
                        <th style="width:200px">
                            <a href="#" id="a_residueIntegel">0</a>
                        </th>
                    </tr>
                </table>
            </div>
            <div>
                <section class="section section-sm bg-default bg_second_cl">
                    <div class="container">    </div>
                </section>
                <table id="historyintegel">
                    <tr >
                        <th colspan="4">积分明细</th>
                    </tr>
                    <tr>
                        <th>操作时间</th>
                        <th>积分变换</th>
                        <th>积分类型</th>
                        <th>操作类型</th>
                    </tr>
                    <tr>
                        <td>无</td>
                        <td>无</td>
                        <td>无</td>
                        <td>无</td>
                    </tr>
                    <tr>
                        <td>无</td>
                        <td>无</td>
                        <td>无</td>
                        <td>无</td>
                    </tr>
                </table>
            </div>
        </div>




    </section>





    <!-- Footer section end -->
</div>
<!-- Javascript-->
<script src="../js/core.min.js"></script>
<!-- <script src="../js/color-switcher.js"></script>
<script src="../js/colorJS.js"></script> -->
<script src="../js/script.js"></script>
</body>
</html>
