<%@ page import="com.unicon.entity.MYUSER" %>
<%@ page import="com.unicon.entity.PHONE_CARD_TABLE" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!doctype html>
<html>
<head>
    <title>中国联通</title>
    <!-- favicon -->
    <link rel="icon" href="<%=path%>/images/favicon.jpg" type="image/x-icon">
    <!-- Stylesheets-->
    <link rel="stylesheet" type="text/css"
          href="https://fonts.googleapis.com/css?family=Poppins:400,500%7CTeko:300,400,500%7CMaven+Pro:500">
    <link rel="stylesheet" href=<%=basePath + "css/bootstrap.css"%>>
    <link rel="stylesheet" href=<%=basePath + "css/fonts.css"%>>
    <link rel="stylesheet" href=<%=basePath + "css/style.css"%>
            id="main-styles-link">
    <!--Color Switcher Mockup-->

</head>
<body>
<div class="page">
    <!-- Page Header Start -->
    <header class="section page-header">
        <!-- RD Navbar-->
        <div class="rd-navbar-wrap">
            <nav class="rd-navbar rd-navbar-modern"
                 data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed"
                 data-md-layout="rd-navbar-fixed"
                 data-md-device-layout="rd-navbar-fixed"
                 data-lg-layout="rd-navbar-static"
                 data-lg-device-layout="rd-navbar-fixed"
                 data-xl-layout="rd-navbar-static"
                 data-xl-device-layout="rd-navbar-static"
                 data-xxl-layout="rd-navbar-static"
                 data-xxl-device-layout="rd-navbar-static"
                 data-lg-stick-up-offset="46px" data-xl-stick-up-offset="46px"
                 data-xxl-stick-up-offset="70px" data-lg-stick-up="true"
                 data-xl-stick-up="true" data-xxl-stick-up="true">
                <div class="rd-navbar-main-outer">
                    <div class="rd-navbar-main">
                        <!-- RD Navbar Panel-->
                        <div class="rd-navbar-panel">
                            <!-- RD Navbar Toggle-->
                            <button class="rd-navbar-toggle"
                                    data-rd-navbar-toggle=".rd-navbar-nav-wrap">
                                <span></span>
                            </button>
                            <!-- RD Navbar Brand-->
                            <div class="rd-navbar-brand">
                                <a class="brand" href="<%=path %>/jsp/front_Main.jsp">
                                    <img src="<%=path%>/images/logos/liantong.jpg" class="logo-sticky"  alt="">
                                </a>
                            </div>
                        </div>
                        <%--内容--%>
                        <div class="rd-navbar-main-element">
                            <div class="rd-navbar-nav-wrap">
                                <!-- RD Navbar Basket-->
                                <div class="rd-navbar-basket-wrap">
                                    <button class="rd-navbar-basket fl-bigmug-line-shopping198"
                                            data-rd-navbar-toggle=".cart-inline">
                                        <span>2</span>
                                    </button>
                                    <div class="cart-inline">
                                        <div class="cart-inline-header">
                                            <h5 class="cart-inline-title">
                                                In cart:<span> 2</span> Products
                                            </h5>
                                            <h6 class="cart-inline-title">
                                                Total price:<span> $524</span>
                                            </h6>
                                        </div>
                                        <div class="cart-inline-body">
                                            <div class="cart-inline-item">
                                                <div class="unit align-items-center">
                                                    <div class="unit-left">
                                                        <a class="cart-inline-figure" href="single-product.html"><img
                                                                src="<%=path%>/images/products/products-mini-1.jpg"
                                                                alt="" width="100" height="100" /></a>
                                                    </div>
                                                    <div class="unit-body">
                                                        <h6 class="cart-inline-name">
                                                            <a href="single-product.html">Interior Design</a>
                                                        </h6>
                                                        <div>
                                                            <div class="group-xs group-middle-2">
                                                                <div class="table-cart-stepper">
                                                                    <input class="form-input" type="number"
                                                                           data-zeros="true" value="1" min="1" max="1000" />
                                                                </div>
                                                                <h6 class="cart-inline-title">$289</h6>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="cart-inline-item">
                                                <div class="unit align-items-center">
                                                    <div class="unit-left">
                                                        <a class="cart-inline-figure" href="single-product.html"><img
                                                                src="<%=path%>/images/products/products-mini-2.jpg" alt=""
                                                                width="100" height="100" /></a>
                                                    </div>
                                                    <div class="unit-body">
                                                        <h6 class="cart-inline-name">
                                                            <a href="single-product.html">Interior Design</a>
                                                        </h6>
                                                        <div>
                                                            <div class="group-xs group-middle-2">
                                                                <div class="table-cart-stepper">
                                                                    <input class="form-input" type="number"
                                                                           data-zeros="true" value="1" min="1" max="1000" />
                                                                </div>
                                                                <h6 class="cart-inline-title">$235</h6>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="cart-inline-footer">
                                            <div class="group-sm">
                                                <a
                                                        class="button button-md button-default-outline button-wapasha"
                                                        href="cart-page.html">Go to cart</a><a
                                                    class="button button-md button-secondary button-pipaluk"
                                                    href="checkout.html">Checkout</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <a
                                        class="rd-navbar-basket rd-navbar-basket-mobile fl-bigmug-line-shopping198"
                                        href="cart-page.html"><span>2</span></a>
                                <!-- RD Navbar Search-->
                                <div class="rd-navbar-search">
                                    <button class="rd-navbar-search-toggle"
                                            data-rd-navbar-toggle=".rd-navbar-search">
                                        <span></span>
                                    </button>
                                    <form class="rd-search" action="search-results.html"
                                          data-search-live="rd-search-results-live" method="GET">
                                        <div class="form-wrap">
                                            <label class="form-label" for="rd-navbar-search-form-input">Search...</label>
                                            <input class="rd-navbar-search-form-input form-input"
                                                   id="rd-navbar-search-form-input" type="text" name="s"
                                                   autocomplete="off" />
                                            <div class="rd-search-results-live"
                                                 id="rd-search-results-live"></div>
                                            <button
                                                    class="rd-search-form-submit fl-bigmug-line-search74"
                                                    type="submit"></button>
                                        </div>
                                    </form>
                                </div>
                                <!-- 菜单栏 -->
                                <ul class="rd-navbar-nav">
                                    <li class="rd-nav-item active"><a class="rd-nav-link"
                                                                      href="<%=path%>/jsp/front_Main.jsp">首页</a></li>
                                    <li class="rd-nav-item"><a class="rd-nav-link" href="#">查询</a>
                                        <!-- RD Navbar Dropdown-->
                                        <ul class="rd-menu rd-navbar-dropdown">
                                            <li class="rd-dropdown-item"><a
                                                    class="rd-dropdown-link" href="<%=path%>/jsp/front_balance.jsp">实时话费</a></li>
                                            <li class="rd-dropdown-item"><a
                                                    class="rd-dropdown-link" href="<%=path%>/jsp/front_balance.jsp">账户余额</a></li>
                                            <li class="rd-dropdown-item"><a
                                                    class="rd-dropdown-link" href="index-2.html">历史账单</a></li>
                                            <li class="rd-dropdown-item"><a
                                                    class="rd-dropdown-link" href="<%=path%>/jsp/front_findIntegral.jsp">积分明细</a></li>
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
                                        <div id="user_message">

                                                <%
                                                    PHONE_CARD_TABLE loginPhoneUser = (PHONE_CARD_TABLE) session.getAttribute("loginPhoneUser");
                                                %>
                                                <% if (loginPhoneUser==null){ %>
                                                    <h6><a href="<%=path%>/jsp/login.jsp" style="color:red">登陆</a></h6>
                                                    <p></p>
                                                    <h6><a href="www.reg.com">注册</a></h6>
                                                <% }else{ %>
                                                    <a href="个人中心.jsp" style="width: 300px;">你好：${sessionScope.loginPhoneUserCardIDName}</a>
                                                    <input type="hidden" name="loginPhoneUserCardIDENTITYCARDID" value="${sessionScope.loginPhoneUserCardIDENTITYCARDID}" >
                                                <% } %>


                                        </div>
                                    </li>
                                    <li>
                                        <div>

                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
    </header>
    <!-- Page Header End -->
    <!-- slider section start -->
    <section
            class="section swiper-container swiper-slider swiper-slider-modern"
            data-loop="true" data-autoplay="5000" data-simulate-touch="true"
            data-nav="true" data-slide-effect="fade">
        <div class="swiper-wrapper text-left">
            <!-- slide 1 start -->
            <div class="swiper-slide" data-slide-bg="<%=path%>/images/banner/banner-1.jpg">
                <div class="swiper-slide-caption">
                    <div class="container">
                        <div class="row">
                            <div
                                    class="col-11 col-sm-9 col-md-8 col-lg-7 col-xl-6 col-xxl-5">
                                <div class="slider-modern-box">
                                    <h2 class="oh slider-modern-title">
											<span data-caption-animate="slideInDown"
                                                  data-caption-delay="0">孝敬长辈</span><span
                                            data-caption-animate="slideInUp" data-caption-delay="0"></span>
                                    </h2>
                                    <p data-caption-animate="fadeInRight" data-caption-delay="400">送爸妈的手机   就得大屏幕大音量好</p>
                                    <div class="oh button-wrap">
                                        <a class="button button-default-outline-2 button-ujarak"
                                           href="shop.html" data-caption-animate="slideInLeft"
                                           data-caption-delay="400">前往孝敬</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- slide 2 start -->
            <div class="swiper-slide" data-slide-bg="<%=path%>/images/banner/banner-2.jpg">
                <div class="swiper-slide-caption">
                    <div class="container">
                        <div class="row">
                            <div
                                    class="col-10 col-sm-8 col-md-7 col-lg-6 col-xl-5 col-xxl-4">
                                <div class="slider-modern-box">
                                    <h2 class="oh slider-modern-title">
											<span data-caption-animate="slideInLeft"
                                                  data-caption-delay="0">商务人士</span><span
                                            data-caption-animate="slideInUp" data-caption-delay="0"></span>
                                    </h2>
                                    <p data-caption-animate="fadeInRight" data-caption-delay="400">谦谦君子 温润如玉 成功人士首选</p>
                                    <div class="oh button-wrap">
                                        <a class="button button-default-outline-2 button-ujarak"
                                           href="shop.html" data-caption-animate="slideInLeft"
                                           data-caption-delay="400">前往商城2</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- slide 3 start -->
            <div class="swiper-slide" data-slide-bg="<%=path%>/images/banner/banner-3.jpg">
                <div class="swiper-slide-caption">
                    <div class="container">
                        <div class="row">
                            <div class="col-11 col-sm-8 col-md-7 col-lg-5 col-xxl-4">
                                <div class="slider-modern-box">
                                    <h2 class="oh slider-modern-title">
											<span data-caption-animate="slideInDown"
                                                  data-caption-delay="0">青春风暴</span><span
                                            data-caption-animate="slideInLeft" data-caption-delay="0"></span>
                                    </h2>
                                    <p data-caption-animate="fadeInRight" data-caption-delay="400">年轻人的手机 每一台都有一台的脾气</p>
                                    <div class="oh button-wrap">
                                        <a class="button button-default-outline-2 button-ujarak"
                                           href="shop.html" data-caption-animate="slideInUp"
                                           data-caption-delay="400">前往商城3</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Swiper Navigation-->
        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>
        <!-- Swiper Pagination-->
        <div class="swiper-pagination swiper-pagination-style-2"></div>
    </section>
    <!-- slider section end -->
    <!-- Offer section start -->
    <section class="section section-sm bg-default bg_second_cl">
        <div class="container">
            <div class="headingTitle">
                <h1>
                    <span>优惠专区</span>
                </h1>
                <p id="beatText">我可是会跳的哦，但看我跳，你要把鼠标移上来。</p>
            </div>
            <div class="row row-30 justify-content-center">
                <div class="col-md-12 col-lg-8">
                    <div class="oh">
                        <article class="box-sportlight">
                            <a class="box-sportlight-figure" href="www.baidu.com"><img
                                    src="<%=path%>/images/offer/offer-imag-1.jpg" alt="" width="770"
                                    height="332" /></a>
                            <div class="box-sportlight-caption">
                                <h5 class="box-sportlight-title">
                                    <a href="www.baidu.com">Office Room</a>
                                </h5>
                            </div>
                            <div class="box-sportlight-badge box-sportlight-new">HOT</div>
                        </article>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="oh-desktop">
                        <article class="box-sportlight box-sportlight-sm">
                            <a class="box-sportlight-figure" href="#"><img
                                    src="<%=path%>/images/offer/offer-imag-2.jpg" alt="" width="370"
                                    height="339" /></a>
                            <div class="box-sportlight-caption">
                                <h5 class="box-sportlight-title">
                                    <a href="#">Drawing Room</a>
                                </h5>

                            </div>
                            <div class="box-sportlight-badge box-sportlight-sale">-30%</div>
                        </article>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="oh-desktop">
                        <article class="box-sportlight box-sportlight-sm">
                            <a class="box-sportlight-figure" href="#"><img
                                    src="<%=path%>/images/offer/offer-imag-3.jpg" alt="" width="370"
                                    height="332" /></a>
                            <div class="box-sportlight-caption">
                                <h5 class="box-sportlight-title">
                                    <a href="#">Get New & Amazing Dsign</a>
                                </h5>

                            </div>
                        </article>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="oh">
                        <article class="box-sportlight">
                            <a class="box-sportlight-figure" href="#"><img
                                    src="<%=path%>/images/offer/offer-imag-4.jpg" alt="" width="370"
                                    height="332" /></a>
                            <div class="box-sportlight-caption">
                                <h5 class="box-sportlight-title">
                                    <a href="#">Kichen</a>
                                </h5>

                            </div>
                        </article>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="oh-desktop">
                        <article class="box-sportlight box-sportlight-sm">
                            <a class="box-sportlight-figure" href="#"><img
                                    src="<%=path%>/images/offer/offer-imag-5.jpg" alt="" width="370"
                                    height="332" /></a>
                            <div class="box-sportlight-caption">
                                <h5 class="box-sportlight-title">
                                    <a href="#">Sleeping Room</a>
                                </h5>

                            </div>
                        </article>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Projects section end -->
    <!-- call section start -->
    <section class="section bg-default text-md-center">
        <div class="parallax-container"
             data-parallax-img="<%=path%>/images/bg-cta-2.jpg">
            <div class="parallax-content section-sm context-dark">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-md-12 col-lg-7">
                            <h3 class="oh font-weight-normal">
                                <span class="d-inline-block">抖音爽卡</span>
                            </h3>
                            <p class="text-spacing-75">Duis ornare diam purus, ac
                                malesuada ante congue in. Cras gravida ex elit, vel bibendum
                                mauris efficitur non. Sed ut massa a dui iaculis pretium eu a
                                nunc.</p>
                            <a class="button button-secondary button-ujarak"
                               href="shop.html">Shop now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>



    <!-- call2 section end -->
    <!-- clients section start -->
    <section class="section section-sm bg-default">
        <div class="container">
            <!-- Owl Carousel-->
            <div class="owl-carousel owl-clients" data-items="1"
                 data-sm-items="2" data-md-items="3" data-lg-items="4"
                 data-margin="30" data-dots="true" data-animation-in="fadeIn"
                 data-animation-out="fadeOut" data-autoplay="true">
                <a class="clients-modern" href="<%=path%>/jsp/game1.jsp"><img
                        src="<%=path%>/images/clients/1.jpg" alt="" width="270" height="145" /></a> <a
                    class="clients-modern" href="<%=path%>/jsp/game1.jsp"><img
                    src="<%=path%>/images/clients/2.jpg" alt="" width="270" height="145" /></a> <a
                    class="clients-modern" href="<%=path%>/jsp/game1.jsp"><img
                    src="<%=path%>/images/clients/3.jpg" alt="" width="270" height="145" /></a> <a
                    class="clients-modern" href="<%=path%>/jsp/game1.jsp"><img
                    src="<%=path%>/images/clients/4.jpg" alt="" width="270" height="145" /></a> <a
                    class="clients-modern" href="<%=path%>/jsp/game1.jsp"><img
                    src="<%=path%>/images/clients/5.jpg" alt="" width="270" height="145" /></a> <a
                    class="clients-modern" href="<%=path%>/jsp/game1.jsp"><img
                    src="<%=path%>/images/clients/6.jpg" alt="" width="270" height="145" /></a> <a
                    class="clients-modern" href="<%=path%>/jsp/game1.jsp"><img
                    src="<%=path%>/images/clients/7.jpg" alt="" width="270" height="145" /></a> <a
                    class="clients-modern" href="<%=path%>/jsp/game1.jsp"><img
                    src="<%=path%>/images/clients/8.jpg" alt="" width="270" height="145" /></a>
            </div>
        </div>
    </section>
    <!-- clients section end -->
    <!-- Footer section start -->
    <footer class="section footer-variant-2 footer-modern context-dark">
        <div class="footer-variant-2-content">
            <div class="container">
                <div class="row row-40 justify-content-between">
                    <div class="col-sm-6 col-lg-4 col-xl-3">
                        <div class="oh-desktop">
                            <div class="">
                                <div class="footer-brand">
                                    <a href="<%=path %>/jsp/front_Main.jsp"> <img class="logo-footer"
                                                                             src="<%=path%>/images/logos/liantong.jpg" alt="Footer Logo" /></a>
                                </div>
                                <p>
                                    <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2512661700&site=qq&menu=yes"> <img src="<%=path%>/images/qq.jpg" /><br />客服QQ</a>

                                </p>
                                <ul class="footer-contacts d-inline-block d-md-block">
                                    <li>
                                        <div class="unit unit-spacing-xs">
                                            <div class="unit-left">
                                                <span class="icon fa fa-phone"></span>
                                            </div>
                                            <div class="unit-body">
                                                <a class="link-phone" href="tel:#">10010</a>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="unit unit-spacing-xs">
                                            <div class="unit-left">
                                                <span class="icon fa fa-clock-o"></span>
                                            </div>
                                            <div class="unit-body">
                                                <p>Mon-Sat: 07:00AM - 05:00PM</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="unit unit-spacing-xs">
                                            <div class="unit-left">
                                                <span class="icon fa fa-location-arrow"></span>
                                            </div>
                                            <div class="unit-body">
                                                <a class="link-location" href="#">厦门市软件园二期观日路 56号 一楼101</a>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-4 col-xl-4">
                        <div class="oh-desktop">
                            <div class="inset-top-18">
                                <h5 class="text-spacing-75">更换的div(可以放联系qq等)</h5>
                                <p>Join our email list for tips and useful information.</p>
                                <form class="rd-form rd-mailform"
                                      data-form-output="form-output-global"
                                      data-form-type="subscribe" method="post" action="#">
                                    <div class="form-wrap">
                                        <input class="form-input" id="subscribe-form-5-email"
                                               type="email" name="email"
                                               data-constraints="@Email @Required"> <label
                                            class="form-label" for="subscribe-form-5-email">Enter
                                        Your E-mail</label>
                                    </div>
                                    <button
                                            class="button button-block button-secondary button-ujarak"
                                            type="submit">Subscribe</button>
                                </form>
                                <div class="group-lg group-middle">
                                    <p class="footer-social-list-title">Follow Us</p>
                                    <div>
                                        <ul class="list-inline list-inline-xs footer-social-list-2">
                                            <li><a class="icon fa fa-facebook" href="#"></a></li>
                                            <li><a class="icon fa fa-twitter" href="#"></a></li>
                                            <li><a class="icon fa fa-google-plus" href="#"></a></li>
                                            <li><a class="icon fa fa-instagram" href="#"></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-xl-4">
                        <div class="oh-desktop">
                            <div class="inset-top-18">
                                <h5 class="text-spacing-75">Gallery</h5>
                                <div class="row row-10 gutters-10">
                                    <div class="col-4 col-sm-2 col-lg-4">
                                        <article class="thumbnail thumbnail-mary">
                                            <div class="thumbnail-mary-figure">
                                                <img src="<%=path%>/images/products/products-img-6.jpg" alt=""
                                                     width="128" height="120" />
                                            </div>
                                            <div class="thumbnail-mary-caption">
                                                <a class="icon fl-bigmug-line-zoom60"
                                                   href="<%=path%>/images/products/products-img-6.jpg"
                                                   data-lightgallery="item"><img
                                                        src="<%=path%>/images/products/products-img-6.jpg" alt=""
                                                        width="370" height="303"></a>
                                            </div>
                                        </article>
                                    </div>
                                    <div class="col-4 col-sm-2 col-lg-4">
                                        <article class="thumbnail thumbnail-mary">
                                            <div class="thumbnail-mary-figure">
                                                <img src="<%=path%>/images/products/products-img-5.jpg" alt=""
                                                     width="128" height="120" />
                                            </div>
                                            <div class="thumbnail-mary-caption">
                                                <a class="icon fl-bigmug-line-zoom60"
                                                   href="<%=path%>/images/products/products-img-5.jpg"
                                                   data-lightgallery="item"><img
                                                        src="<%=path%>/images/products/products-img-5.jpg" alt=""
                                                        width="128" height="120" /></a>
                                            </div>
                                        </article>
                                    </div>
                                    <div class="col-4 col-sm-2 col-lg-4">
                                        <article class="thumbnail thumbnail-mary">
                                            <div class="thumbnail-mary-figure">
                                                <img src="<%=path%>/images/products/products-img-4.jpg" alt=""
                                                     width="128" height="120" />
                                            </div>
                                            <div class="thumbnail-mary-caption">
                                                <a class="icon fl-bigmug-line-zoom60"
                                                   href="<%=path%>/images/products/products-img-4.jpg"
                                                   data-lightgallery="item"><img
                                                        src="<%=path%>/images/products/products-img-4.jpg" alt=""
                                                        width="128" height="120" /></a>
                                            </div>
                                        </article>
                                    </div>
                                    <div class="col-4 col-sm-2 col-lg-4">
                                        <article class="thumbnail thumbnail-mary">
                                            <div class="thumbnail-mary-figure">
                                                <img src="<%=path%>/images/products/products-img-3.jpg" alt=""
                                                     width="128" height="120" />
                                            </div>
                                            <div class="thumbnail-mary-caption">
                                                <a class="icon fl-bigmug-line-zoom60"
                                                   href="<%=path%>/images/products/products-img-3.jpg"
                                                   data-lightgallery="item"><img
                                                        src="<%=path%>/images/products/products-img-3.jpg" alt=""
                                                        width="128" height="120" /></a>
                                            </div>
                                        </article>
                                    </div>
                                    <div class="col-4 col-sm-2 col-lg-4">
                                        <article class="thumbnail thumbnail-mary">
                                            <div class="thumbnail-mary-figure">
                                                <img src="<%=path%>/images/products/products-img-2.jpg" alt=""
                                                     width="128" height="120" />
                                            </div>
                                            <div class="thumbnail-mary-caption">
                                                <a class="icon fl-bigmug-line-zoom60"
                                                   href="<%=path%>/images/products/products-img-2.jpg"
                                                   data-lightgallery="item"><img
                                                        src="<%=path%>/images/products/products-img-2.jpg" alt=""
                                                        width="128" height="120" /></a>
                                            </div>
                                        </article>
                                    </div>
                                    <div class="col-4 col-sm-2 col-lg-4">
                                        <article class="thumbnail thumbnail-mary">
                                            <div class="thumbnail-mary-figure">
                                                <img src="<%=path%>/images/products/products-img-1.jpg" alt=""
                                                     width="128" height="120" />
                                            </div>
                                            <div class="thumbnail-mary-caption">
                                                <a class="icon fl-bigmug-line-zoom60"
                                                   href="<%=path%>/images/products/products-img-1.jpg"
                                                   data-lightgallery="item"><img
                                                        src="<%=path%>/images/products/products-img-1.jpg" alt=""
                                                        width="128" height="120" /></a>
                                            </div>
                                        </article>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </footer>
    <!-- Footer section end -->
</div>
<!-- Javascript-->
<script src=<%=path+"/js/core.min.js"%>></script>
<%--<script src=<%=path+"/js/color-switcher.js"%>></script>
<script src=<%=path+"/js/colorJS.js"%>></script>--%>
<script src=<%=path+"/js/script.js"%>></script>
</body>
</html>

