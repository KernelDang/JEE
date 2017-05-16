<%-- 
    Document   : cart
    Created on : May 16, 2017, 1:58:42 PM
    Author     : Kernel Dang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="ltr" lang="en" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="ltr" lang="en" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->

<html dir="ltr" class="ltr" lang="en">
    <!--<![endif]-->

    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Giỏ hàng | Sportshop</title>

        <link href="image/catalog/cart.png" rel="icon" />
        <link href="catalog/view/theme/pav_sportshop/stylesheet/bootstrap.css" rel="stylesheet" />
        <link href="catalog/view/theme/pav_sportshop/stylesheet/stylesheet.css" rel="stylesheet" />
        <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
        <link href="catalog/view/javascript/jquery/magnific/magnific-popup.css" rel="stylesheet" />
        <link href="catalog/view/theme/pav_sportshop/stylesheet/pavreassurance.css" rel="stylesheet" />
        <link href="catalog/view/theme/pav_sportshop/stylesheet/pavblog.css" rel="stylesheet" />
        <link href="catalog/view/theme/pav_sportshop/stylesheet/pavnewsletter.css" rel="stylesheet" />
        <script type="text/javascript" src="catalog/view/javascript/jquery/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="catalog/view/javascript/jquery/magnific/jquery.magnific-popup.min.js"></script>
        <script type="text/javascript" src="catalog/view/javascript/bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="catalog/view/javascript/common.js"></script>
        <script type="text/javascript" src="catalog/view/theme/pav_sportshop/javascript/common.js"></script>
    </head>

    <body class="main-menu-fixed checkout-cart page-checkout-cart layout-fullwidth">
        <div class="row-offcanvas row-offcanvas-left">
            <div id="page">
                <div id="topbar">
                    <div class="container">
                        <div class="show-desktop">
                            <div class="quick-top-link pull-right">
                                <ul class="links hidden-xs">
                                    <li><a href="cart.jsp"><i class="fa fa-bookmark"></i>Giỏ hàng</a></li>
                                    <li><a class="last" href="cart.jsp"><i class="fa fa-share"></i>Thanh toán</a></li>
                                </ul>

                                <!-- Single button -->
                                <div class="btn-group setting">
                                    <div class="dropdown-toggle btn-theme-normal" data-toggle="dropdown">
                                        <i class="fa fa-cog"></i>
                                        <span class="text-label">Tùy chọn</span>
                                        <span class="fa fa-angle-down"></span>
                                    </div>
                                    <div class="quick-setting dropdown-menu">
                                        <div class="language">
                                            <form action="#" method="post" enctype="multipart/form-data" id="language">
                                                <div class=" box-language">
                                                    <label>Ngôn ngữ</label>
                                                    <ul class=" langs-wrapper">
                                                        <li>
                                                            <a href="ar"><img src="image/flags/ar.png" alt="Arabic" title="Arabic" /> Tiếng Việt</a>
                                                        </li>
                                                        <li>
                                                            <a href="en"><img src="image/flags/gb.png" alt="English" title="English" /> English</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="currency">
                                            <form action="#" method="post" id="currency">
                                                <div class="box-currency">
                                                    <label>Đơn vị</label>
                                                    <ul class="">
                                                        <li><button class="currency-select list-item" type="button" name="EUR">đ</button>: VNĐ</li>
                                                        <li><button class="currency-select list-item" type="button" name="USD">$ </button>: USD</li>
                                                    </ul>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="show-mobile hidden-lg hidden-md hidden-sm">
                            <div class="quick-access btn-group pull-right">
                                <div class="dropdown-toggle btn-theme-normal" data-toggle="dropdown">
                                    <i class="fa fa-shopping-cart"></i>
                                    <span>Giỏ hàng</span>
                                    <i class="fa fa-angle-down"></i>
                                </div>
                                <div class="inner-toggle dropdown-menu quick-setting">
                                    <ul class="links">
                                        <li><a href="cart.jsp"><i class="fa fa-bookmark"></i>Giỏ hàng</a></li>
                                        <li><a class="last" href="cart.jsp"><i class="fa fa-share"></i>Thanh toán</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- header -->
                <header id="header">
                    <div id="header-main">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 logo inner">
                                    <div id="logo-theme" class="logo-store pull-left">
                                        <a href="index.jsp" class="img-responsive"><span>SportShop</span></a>
                                    </div>
                                </div>

                                <div class="col-lg-6 col-md-6 hidden-xs hidden-sm inner">
                                    <div class="box-customer hidden-tablet pull-left">
                                        <div class="box-style service-1">
                                            <h4><a href="javascript:void(0);">Giao hàng miễn phí</a></h4>
                                            <p><a href="javascript:void(0);">Tất cả sản phẩm</a></p>
                                        </div>
                                        <div class="box-style service-2">
                                            <h4><a href="javascript:void(0);">Hoàn trả tiền</a></h4>
                                            <p><a href="javascript:void(0);">Nếu sản phẩm hư</a></p>
                                        </div>
                                        <div class="box-style service-3">
                                            <h4><a href="javascript:void(0);">Quà hàng tuần</a></h4>

                                            <p><a href="javascript:void(0);">Quà tặng</a></p>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 shopping-cart inner ">
                                    <div class="cart-top">
                                        <div id="cart" class="clearfix">
                                            <div data-toggle="dropdown" data-loading-text="Loading..." class="heading media text-center dropdown-toggle">
                                                <i class="fa fa-shopping-cart icon-cart"></i>
                                                <span id="cart-total">2 sản phẩm- 550.000đ</span>
                                            </div>
                                            <ul class="dropdown-menu">
                                                <li>
                                                    <div class="mini-cart-info">
                                                        <table class="">
                                                            <tr>
                                                                <td class="text-left">
                                                                    <a href="product.jsp"><img src="image/cache/catalog/demo/7-70x71.png" alt="Double layer super soft" title="Bóng rỗ FQGS2" class="img-thumbnail" /></a>
                                                                </td>
                                                                <td class="text-left"><a href="product.jsp">Bóng rỗ FQGS2</a>
                                                                </td>
                                                                <td class="text-right">x 1</td>
                                                                <td class="text-right">150.000đ</td>
                                                                <td class="text-center"><button type="button" onclick="cart.remove('26');" title="Xóa khỏi giỏ hàng" class="btn btn-default btn-xs"><i class="fa fa-times"></i></button></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="text-left">
                                                                    <a href="product.jsp"><img src="image/cache/catalog/demo/11-70x71.png" alt="Crossed Shirt - Belugas" title="Áo thun thể thao" class="img-thumbnail" /></a>
                                                                </td>
                                                                <td class="text-left"><a href="product.jsp">Áo thun thể thao</a>
                                                                </td>
                                                                <td class="text-right">x 1</td>
                                                                <td class="text-right">350.000đ</td>
                                                                <td class="text-center"><button type="button" onclick="cart.remove('25');" title="Xóa khỏi giỏ hàng" class="btn btn-default btn-xs"><i class="fa fa-times"></i></button></td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </li>

                                                <li>
                                                    <div class="mini-cart-total">
                                                        <table class="">
                                                            <tr>
                                                                <td class="text-right"><strong>Tổng</strong></td>
                                                                <td class="text-right">500.000đ</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="text-right"><strong>Thuế VAT (10%)</strong></td>
                                                                <td class="text-right">50.000đ</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="text-right"><strong>Tổng cộng</strong></td>
                                                                <td class="text-right">550.000đ</td>
                                                            </tr>
                                                        </table>

                                                        <p class="checkout text-right"><a href="cart.jsp"><strong class="button btn btn-outline-inverse"><i class="fa fa-shopping-cart"></i> Xem giỏ hàng</strong></a>&nbsp;&nbsp;&nbsp;<a href="checkout.html"><strong class="button btn btn-outline-inverse"><i class="fa fa-share"></i> Thanh toán</strong></a></p>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div id="pav-mainnav">
                        <div class="container">
                            <div class="inner">
                                <div class="row">
                                    <div class="col-lg-9 col-md-9 col-sm-9 col-sx-12">
                                        <div class="mainnav-wrap">
                                            <button data-toggle="offcanvas" class="btn btn-primary canvas-menu hidden-lg hidden-md" type="button">
                                                <span class="fa fa-bars"></span> Menu</button>
                                            <div class="pav-megamenu">
                                                <div class="navbar">
                                                    <div id="mainmenutop" class="megamenu" role="navigation">
                                                        <div class="navbar-header">
                                                            <a href="javascript:;" data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle">
                                                                <span class="icon-bar"></span>
                                                                <span class="icon-bar"></span>
                                                                <span class="icon-bar"></span>
                                                            </a>
                                                            <div class="collapse navbar-collapse navbar-ex1-collapse">
                                                                <ul class="nav navbar-nav megamenu">
                                                                    <li class="home"><a href="index.jsp"><span class="menu-title">Trang chủ</span></a></li>
                                                                    <li><a href="about.jsp"><span class="menu-title">Giới thiệu</span></a></li>
                                                                    <li class=" aligned-left parent dropdown "><a href="category.jsp" class="dropdown-toggle" data-toggle="dropdown"><span class="menu-title">Sản phẩm</span><b class="caret"></b></a>
                                                                        <div class="dropdown-menu" style="width:700px">
                                                                            <div class="dropdown-menu-inner">
                                                                                <div class="row">
                                                                                    <div class="mega-col col-xs-12 col-sm-12 col-md-3 ">
                                                                                        <div class="mega-col-inner">
                                                                                            <div class="pavo-widget" id="pavowid-50">
                                                                                                <div class="pavo-widget" id="pavowid-790836132">
                                                                                                    <div class="widget-heading box-heading">Áo thể thao</div>
                                                                                                    <div class="">
                                                                                                        <ul>
                                                                                                            <li><a href="category.jsp"><span class="title">Áo câu lạc bộ</span></a></li>
                                                                                                            <li><a href="category.jsp"><span class="title">Áo đội tuyển</span></a></li>
                                                                                                            <li><a href="category.jsp"><span class="title">Áo tay dài</span></a></li>
                                                                                                            <li><a href="category.jsp"><span class="title">Áo khoác</span></a></li>
                                                                                                            <li><a href="category.jsp"><span class="title">Áo nữ</span></a></li>
                                                                                                            <li><a href="category.jsp"><span class="title">Khác</span></a></li>
                                                                                                        </ul>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mega-col col-xs-12 col-sm-12 col-md-3 ">
                                                                                        <div class="mega-col-inner">
                                                                                            <div class="pavo-widget" id="pavowid-50">
                                                                                                <div class="pavo-widget" id="pavowid-790836132">
                                                                                                    <div class="widget-heading box-heading">Giày thể thao</div>

                                                                                                    <div class="">
                                                                                                        <ul>
                                                                                                            <li><a href="category.jsp"><span class="title">Giày bóng đá</span></a></li>
                                                                                                            <li><a href="category.jsp"><span class="title">Giày quần vợt</span></a></li>
                                                                                                            <li><a href="category.jsp"><span class="title">Giày Nike</span></a></li>
                                                                                                            <li><a href="category.jsp"><span class="title">Giày nam</span></a></li>
                                                                                                            <li><a href="category.jsp"><span class="title">Giày nữ</span></a></li>
                                                                                                            <li><a href="category.jsp"><span class="title">Khác</span></a></li>
                                                                                                        </ul>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mega-col col-xs-12 col-sm-12 col-md-3 ">
                                                                                        <div class="mega-col-inner">
                                                                                            <div class="pavo-widget" id="pavowid-50">
                                                                                                <div class="pavo-widget" id="pavowid-790836132">
                                                                                                    <div class="widget-heading box-heading">Dụng cụ thể thao</div>

                                                                                                    <div class="">
                                                                                                        <ul>
                                                                                                            <li><a href="category.jsp"><span class="title">Bóng đá</span></a></li>
                                                                                                            <li><a href="category.jsp"><span class="title">Bóng rổ</span></a></li>
                                                                                                            <li><a href="category.jsp"><span class="title">Bóng ném</span></a></li>
                                                                                                            <li><a href="category.jsp"><span class="title">Tạ tay</span></a></li>
                                                                                                            <li><a href="category.jsp"><span class="title">Vợt</span></a></li>
                                                                                                            <li><a href="category.jsp"><span class="title">Khác</span></a></li>
                                                                                                        </ul>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mega-col col-xs-12 col-sm-12 col-md-3 ">
                                                                                        <div class="mega-col-inner">
                                                                                            <div class="pavo-widget" id="pavowid-50">
                                                                                                <div class="pavo-widget" id="pavowid-790836132">
                                                                                                    <div class="widget-heading box-heading">Sản phẩm mới</div>

                                                                                                    <div class="">
                                                                                                        <ul>
                                                                                                            <li><a href="category.jsp"><span class="title">Máy chạy bộ</span></a></li>
                                                                                                            <li><a href="category.jsp"><span class="title">Máy xong hơi</span></a></li>
                                                                                                            <li><a href="category.jsp"><span class="title">Bộ tạ thể hình</span></a></li>
                                                                                                            <li><a href="category.jsp"><span class="title">Bóng bàn</span></a></li>
                                                                                                            <li><a href="category.jsp"><span class="title">Bóng chuyền</span></a></li>
                                                                                                            <li><a href="category.jsp"><span class="title">Khác</span></a></li>
                                                                                                        </ul>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                    <li class=" aligned-left parent dropdown "><a href="category.jsp" class="dropdown-toggle" data-toggle="dropdown"><span class="menu-title">Khuyến mãi</span><b class="caret"></b></a>
                                                                        <div class="dropdown-menu" style="width:350px">
                                                                            <div class="dropdown-menu-inner">
                                                                                <div class="row">
                                                                                    <div class="mega-col col-xs-12 col-sm-12 col-md-12 ">
                                                                                        <div class="mega-col-inner">
                                                                                            <div class="pavo-widget">
                                                                                                <div class="pavo-widget">
                                                                                                    <div class="widget-product-list sidebar">
                                                                                                        <div class="widget-inner">
                                                                                                            <div class="w-product clearfix col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                                                                                <div class="product-block">
                                                                                                                    <div class="image">
                                                                                                                        <a class="img" href="product.jsp"><img src="image/cache/catalog/demo/5-80x81.png" alt="Nulla vitae convallis" class="img-responsive" /></a>
                                                                                                                    </div>

                                                                                                                    <div class="product-meta">
                                                                                                                        <div class="left">
                                                                                                                            <div class="price">
                                                                                                                                <span class="special-price">250.000đ</span>
                                                                                                                            </div>
                                                                                                                        </div>
                                                                                                                        <h3 class="name"><a href="product.jsp">Giày đinh Nike</a></h3>
                                                                                                                    </div>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                            <div class="w-product clearfix col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                                                                                <div class="product-block">
                                                                                                                    <div class="image">
                                                                                                                        <a class="img" href="product.jsp"><img src="image/cache/catalog/demo/9-80x81.png" alt="Nulla vitae convallis" class="img-responsive" /></a>
                                                                                                                    </div>

                                                                                                                    <div class="product-meta">
                                                                                                                        <div class="left">
                                                                                                                            <div class="price">
                                                                                                                                <span class="special-price">250.000đ</span>
                                                                                                                                <span class="price-old">300.000đ</span>
                                                                                                                            </div>
                                                                                                                        </div>
                                                                                                                        <h3 class="name"><a href="product.jsp">Giày thể thao thời trang</a></h3>
                                                                                                                    </div>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                            <div class="w-product clearfix col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                                                                                <div class="product-block">
                                                                                                                    <div class="image">
                                                                                                                        <a class="img" href="product.jsp"><img src="image/cache/catalog/demo/3-80x81.png" alt="Nulla vitae convallis" class="img-responsive" /></a>
                                                                                                                    </div>

                                                                                                                    <div class="product-meta">
                                                                                                                        <div class="left">
                                                                                                                            <div class="price">
                                                                                                                                <span class="special-price">100.000đ</span>
                                                                                                                                <span class="price-old">130.000đ</span>
                                                                                                                            </div>
                                                                                                                        </div>
                                                                                                                        <h3 class="name"><a href="product.jsp">Nón len mùa đông</a></h3>
                                                                                                                    </div>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                            <div class="w-product clearfix col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                                                                                <div class="product-block">
                                                                                                                    <div class="image">
                                                                                                                        <a class="img" href="product.jsp"><img src="image/cache/catalog/demo/10-80x81.png" alt="Nulla vitae convallis" class="img-responsive" /></a>
                                                                                                                    </div>

                                                                                                                    <div class="product-meta">
                                                                                                                        <div class="left">
                                                                                                                            <div class="price">
                                                                                                                                <span class="special-price">350.000đ</span>
                                                                                                                                <span class="price-old">400.000đ</span>
                                                                                                                            </div>
                                                                                                                        </div>
                                                                                                                        <h3 class="name"><a href="product.jsp">Áo khoác đội tuyển</a></h3>
                                                                                                                    </div>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                    <li class=""><a href="blog.jsp"><span class="menu-title">Tin tức</span></a></li>
                                                                    <li class=""><a href="contact.jsp"><span class="menu-title">Liên hệ</span></a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 hidden-xs">
                                        <div id="search" class="search-box search-inline">
                                            <div class="input-group">
                                                <input type="text" name="search" placeholder="Tìm kiếm..." value="" class="input-search form-control" />
                                                <span class="input-group-addon">       
                                                    <button class="button-search fa fa-search" type="button"></button>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </header>
                <!-- /header -->

                <!-- sys-notification -->
                <div id="sys-notification">
                    <div class="container">
                        <div id="notification"></div>
                    </div>
                </div>
                <!-- /sys-notification -->

                <div class="container">
                    <ul class="breadcrumb">
                        <li><a href="index.jsp"><i class="fa fa-home"></i></a></li>
                        <li><a href="cart.jsp">Giỏ hàng - Thanh toán</a></li>
                    </ul>
                    <style>
                        .contact-content .fa {
                            width: 20px;
                            height: 20px;
                            line-height: 20px;
                            border-radius: 0%;
                        }
                    </style>
                    <div class="row">
                        <section id="sidebar-main" class="col-md-12">
                            <div id="content">
                                <div class="wrapper no-margin">
                                    <h1>Thông tin giỏ hàng</h1>
                                    <div class="row contact-content">
                                        <div class="col-xs-12">
                                            <div class="alert alert-warning">
                                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                                <strong>Nhắc nhở! </strong> Bạn vừa thêm một sản phẩm vào giỏ hàng của bạn
                                            </div>
                                            <div class="alert alert-success">
                                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                                <strong>Thông báo! </strong> Thanh toán giỏ hàng thành công
                                                <p>
                                                    <br>Tổng số tiền thanh toán: <span class="text-danger">550.000đ</span>. Cảm ơn bạn đã sử dụng dịch vụ của chúng tôi. Sản phẩm sẽ được chuyển đến nơi trong vòng 24 giờ kể từ lúc này.
                                                    <a href="index.jsp" class="alert-link">Tiếp tục mua sắm</a>
                                                </p>
                                            </div>
                                            <div class="alert alert-success">
                                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                                <strong>Thông báo! </strong> Đang có 0 sản phẩm trong giỏ hàng của bạn. <a href="index.jsp" class="alert-link">Tiếp tục mua sắm</a>
                                            </div>
                                            <div class="alert alert-warning">
                                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                                <strong>Nhắc nhở! </strong> Số lượng sản phẩm tối thiểu là 1. Xin cảm ơn!
                                            </div>
                                            <div class="alert alert-success">
                                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                                <strong>Thông báo! </strong> Giỏ hàng đã được cập nhật thành công
                                            </div>
                                            <div class="alert alert-danger">
                                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                                <strong>Cảnh báo! </strong> Sản phẩm đã được xóa khỏi giỏ hàng
                                            </div>
                                        </div>

                                        <div class="col-sm-12 col-md-7 col-xs-12">
                                            <p>Quý khách vui lòng điền địa chỉ nhận hàng trước khi thanh toán. Xin cảm ơn!</p>
                                            <div class="table-responsive">
                                                <table class="table table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <td>Hình</td>
                                                            <td>Tên</td>
                                                            <td>Mẫu</td>
                                                            <td>Số lượng</td>
                                                            <td>Đơn giá</td>
                                                            <td><strong>Tổng</strong></td>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td class="cart-page-img">
                                                                <a href="product.jsp"><img src="image/cache/catalog/demo/10-87x88.png" alt=""></a>
                                                            </td>
                                                            <td><a href="product.jsp" class="cart-pro-name">Túi xách du lịch</a></td>
                                                            <td>2016</td>
                                                            <td>
                                                                <div class="input-group btn-block">
                                                                    <input type="text" size="1" value="2" name="quantity[170]">
                                                                    <span>
                                                                        <a href="javascript:void(0);" title="Cập nhật giỏ hàng"><i class="fa fa-refresh"></i></a>
                                                                        <a href="javasript:void(0);" title="Xóa khỏi giỏ hàng"><i class="fa fa-remove fa-xs"></i></a>
                                                                    </span>
                                                                </div>
                                                            </td>
                                                            <td class="cart-price">200.000đ</td>
                                                            <td class="cart-price"><strong>400.000đ</strong></td>
                                                        </tr>
                                                        <tr>
                                                            <td class="cart-page-img">
                                                                <a href="product.jsp"><img src="image/cache/catalog/demo/12-87x88.png" alt="product.jsp"></a>
                                                            </td>
                                                            <td><a href="" class="cart-pro-name">Nón len mùa đông</a></td>
                                                            <td>DKGD230</td>
                                                            <td>
                                                                <div class="input-group btn-block">
                                                                    <input type="text" size="1" value="1" name="quantity[170]">
                                                                    <span>
                                                                        <a href="javascript:void(0);" title="Cập nhật giỏ hàng"><i class="fa fa-refresh"></i></a>
                                                                        <a href="javasript:void(0);" title="Xóa khỏi giỏ hàng"><i class="fa fa-remove fa-xs"></i></a>
                                                                    </span>
                                                                </div>
                                                            </td>
                                                            <td class="cart-price">100.000đ</td>
                                                            <td class="cart-price"><strong>100.000đ</strong></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="cart-bottom-total">
                                                <div class="table-total  col-sm-4 col-sm-offset-8 no-padding">
                                                    <table class=" table table-bordered">
                                                        <tbody>
                                                            <tr>
                                                                <td class="text-right"><strong>Tổng:</strong></td>
                                                                <td class="text-right"><strong>500.000đ</strong></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="text-right"><strong>Thuế VAT (10%):</strong></td>
                                                                <td class="text-right text-danger">50.000đ</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="text-right"><strong>Tổng cộng:</strong></td>
                                                                <td class="text-right text-danger"><strong>550.000đ</strong></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>

                                                </div>
                                                <p class="form-submit">
                                                    <input type="submit" class="btn btn-primary submit pull-right" value="Thanh toán" onclick="window.location.href = 'checkout.html'">
                                                </p>
                                                <p class="form-submit">
                                                    <input type="submit" class="btn btn-primary continue-shopping pull-left" value="Tiếp tục mua sắm" title="Quay về trang chủ">
                                                </p>
                                            </div>                                        
                                        </div>

                                        <div class="col-ld-4 col-md-5 col-sm-12 col-xs-12">
                                            <h3>Địa chỉ nhận hàng</h3>
                                            <form action="#" method="post" enctype="multipart/form-data" class="form-horizontal ">
                                                <fieldset class="">
                                                    <div class="content">
                                                        <div class="form-group required">
                                                            <label class="col-sm-3 control-label" for="input-name">Tên của bạn</label>
                                                            <div class="col-sm-9">
                                                                <input type="text" name="name" value="" id="input-name" class="form-control"  placeholder="Ví dụ: Phạm Ngọc Linh" />
                                                            </div>
                                                        </div>
                                                        <div class="form-group required">
                                                            <label class="col-sm-3 control-label" for="input-email">Số điện thoại</label>
                                                            <div class="col-sm-9">
                                                                <input type="text" name="email" value="" id="input-email" class="form-control" placeholder="Ví dụ: 0909 999 999" />
                                                            </div>
                                                        </div>
                                                        <div class="form-group required">
                                                            <label class="col-sm-3 control-label" for="input-email">Địa chỉ email</label>
                                                            <div class="col-sm-9">
                                                                <input type="text" name="email" value="" id="input-email" class="form-control" placeholder="Ví dụ: 12520228@gm.uit.edu.vn" />
                                                            </div>
                                                        </div>
                                                        <div class="form-group required">
                                                            <label class="col-sm-3 control-label" for="input-email">Tỉnh/Thành phố</label>
                                                            <div class="col-sm-9">
                                                                <select name="" id="" class="form-control">
                                                                    <option value="">Thành phố Hồ Chí Minh</option>
                                                                    <option value="">Hà Nội</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="form-group required">
                                                            <label class="col-sm-3 control-label" for="input-email">Quận/Huyện</label>
                                                            <div class="col-sm-9">
                                                                <select name="" id="" class="form-control">
                                                                    <option value="">Quận 1</option>
                                                                    <option value="">Quận 2</option>
                                                                    <option value="">Quận Bình Thạnh</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="form-group required">
                                                            <label class="col-sm-3 control-label" for="input-email">Xã/Phường</label>
                                                            <div class="col-sm-9">
                                                                <select name="" id="" class="form-control">
                                                                    <option value="">Xã Thị Trấn</option>
                                                                    <option value="">Xã Gia Lộc</option>
                                                                    <option value="">Phường Tân Đông Hiệp</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="form-group required">
                                                            <label class="col-sm-3 control-label" for="input-email">Số nhà, đường</label>
                                                            <div class="col-sm-9">
                                                                <input type="text" name="email" value="" id="input-email" class="form-control" placeholder="Ví dụ: 78/1 Phan Đình Phùng" />
                                                            </div>
                                                        </div>
                                                    </div>

                                                </fieldset>

                                            </form>
                                        </div>
                                        <!-- end1 -->
                                    </div>
                                    <!-- end -->
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
                <!-- 
      $ospans: allow overrides width of columns base on thiers indexs. format array( column-index=>span number ), example array( 1=> 3 )[value from 1->12]
                -->




                <footer id="footer">
                    <div class="footer-top " id="pavo-footer-top">
                        <div class="container">
                            <div class="inner">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
                                        <div class="box-module-pavreassurances ">
                                            <div class="row box-outer">
                                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 column">
                                                    <div class="reassurances-center red">
                                                        <span class="icon-name fa fa fa-refresh"></span>
                                                        <div class="description">
                                                            <h4>Dễ thay đổi</h4>
                                                            <p>Sản phẩm đổi trả<br> trong 30 ngày.</p>
                                                            <!-- Button trigger modal -->
                                                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal1"><i class="fa fa-long-arrow-right"></i></button>
                                                            <div class="mask" style="display:none;">
                                                                <p>Sản phẩm được đổi trả trong vòng 30 ngày kể từ ngay mua hàng<br> bibendum mauris.</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Modal -->
                                                <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-hidden="true">
                                                    <div class="modal-dialog">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                                                <span class="icon-name fa fa fa-refresh"></span>
                                                                <h4>Dễ thay đổi</h4>
                                                                <p>Sản phẩm đổi trả trong 30 ngày.</p>
                                                            </div>
                                                            <div class="modal-body">
                                                                <p>Sản phẩm được đổi trả trong vòng 30 ngày kể từ ngay mua hàng<br></p>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 column">
                                                    <div class="reassurances-center orange">
                                                        <span class="icon-name fa fa fa-usd"></span>
                                                        <div class="description">
                                                            <h4>Thưởng 5%</h4>
                                                            <p>Cho hóa đơn trên <br> 200.000đ</p>
                                                            <!-- Button trigger modal -->
                                                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal2"><i class="fa fa-long-arrow-right"></i></button>
                                                            <div class="mask" style="display:none;">
                                                                <p>Khi mua hàng tại cửa hàng chúng tôi. Quý khách sẽ nhận được một phiếu giảm giá 5% cho tất cả các mặt hàng khi có hóa đơn trên 200.000đ</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Modal -->
                                                <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-hidden="true">
                                                    <div class="modal-dialog">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                                                <span class="icon-name fa fa fa-usd"></span>
                                                                <h4>Thưởng 5%</h4>
                                                                <p>Cho hóa đơn trên 200.000đ</p>
                                                            </div>
                                                            <div class="modal-body">
                                                                <p>Khi mua hàng tại cửa hàng chúng tôi. Quý khách sẽ nhận được một phiếu giảm giá 5% cho tất cả các mặt hàng khi có hóa đơn trên 200.000đ</p>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 column">
                                                    <div class="reassurances-center green">
                                                        <span class="icon-name fa fa fa-dropbox fa-3x"></span>
                                                        <div class="description">
                                                            <h4>Khuyến mãi</h4>
                                                            <p>Tất cả sản phẩm từ<br> 22/2 đến 29/2</p>
                                                            <!-- Button trigger modal -->
                                                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal3"><i class="fa fa-long-arrow-right"></i></button>
                                                            <div class="mask" style="display:none;">
                                                                <p>Từ ngày 22/2 đến 29/2 cửa hàng chúng tôi khuyến mãi tất cả các mặt hàng</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Modal -->
                                                <div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-hidden="true">
                                                    <div class="modal-dialog">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                                                <span class="icon-name fa fa fa-dropbox fa-3x"></span>
                                                                <h4>Khuyến mãi</h4>
                                                                <p>Tất cả sản phẩm từ 22/2 đến 29/2</p>
                                                            </div>
                                                            <div class="modal-body">
                                                                <p>Từ ngày 22/2 đến 29/2 cửa hàng chúng tôi khuyến mãi tất cả các mặt hàng</p>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 column">
                                                    <div class="reassurances-center cyan">
                                                        <span class="icon-name fa fa fa fa-users fa-3x"></span>
                                                        <div class="description">
                                                            <h4>Hỗ trợ</h4>
                                                            <p>Hỗ trợ khách hàng 24/7 <br> chuyên nghiệp.</p>
                                                            <!-- Button trigger modal -->
                                                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal4"><i class="fa fa-long-arrow-right"></i></button>
                                                            <div class="mask" style="display:none;">
                                                                <p>Chúng tôi luôn hoạt động 24/7 để tư vấn, giải quyết các vấn đề về khách hàng!</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Modal -->
                                                <div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-hidden="true">
                                                    <div class="modal-dialog">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                                                <span class="icon-name fa fa fa fa-users fa-3x"></span>
                                                                <h4>Hỗ trợ</h4>
                                                                <p>Hỗ trợ khách hàng 24/7 một cách chuyên nghiệp.</p>
                                                            </div>
                                                            <div class="modal-body">
                                                                <p>Chúng tôi luôn hoạt động 24/7 để tư vấn, giải quyết các vấn đề về khách hàng!</p>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="footer-bottom">
                        <div class="container">
                            <div class="inner">
                                <div class="row">
                                    <div class="column col-xs-12 col-sm-6 col-lg-4 col-md-4">
                                        <div class="box info">
                                            <div class="box-heading"><span>Về chúng tôi</span></div>
                                            <div class="box-content">
                                                <p>Sportshop là hệ thống sẳn xuất, cung cấp các sản phẩm thể thao đầu tiên ở Việt Nam.
                                                    Thanh lập từ con số 0 nhưng đến nay Sportshop đã khẳng định được tên tuổi trên thị trường.</p>
                                            </div>
                                            <div class="box pav-newsletter-social">
                                                <ul>
                                                    <li class="blue"><a data-original-title="Facebook" data-placement="top" data-toggle="tooltip" href="#" title=""><i class="fa fa-facebook">&nbsp;</i></a></li>
                                                    <li class="sky"><a data-original-title="Twitter" data-toggle="tooltip" href="#" title=""><i class="fa fa-twitter">&nbsp;</i></a></li>
                                                    <li class="red"><a data-original-title="Google Plus" data-toggle="tooltip" href="#" title=""><i class="fa fa-google-plus">&nbsp;</i></a></li>
                                                    <li class="nored"><a data-original-title="Pinterest" data-toggle="tooltip" href="#" title=""><i class="fa fa-pinterest">&nbsp;</i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="column col-xs-12 col-sm-6 col-lg-2 col-md-2">
                                        <div class="box">
                                            <div class="box-heading"><span>Thông tin</span></div>
                                            <div class="box-content">
                                                <ul class="list bullet text-fill">
                                                    <li><a href="index.jsp" data-hover="Trang chủ">Trang chủ</a></li>
                                                    <li><a href="about.jsp" data-hover="Giới thiệu">Giới thiệu</a></li>
                                                    <li><a href="category.jsp" data-hover="Sản phẩm">Sản phẩm</a></li>
                                                    <li><a href="blog.jsp" data-hover="Tin tức">Tin tức</a></li>
                                                    <li><a href="contact.jsp" data-hover="Liên hệ">Liên hệ</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="column col-xs-12 col-sm-6 col-lg-2 col-md-2">
                                        <div class="box customer-service">
                                            <div class="box-heading"><span>Sản phẩm</span></div>
                                            <div class="box-content">
                                                <ul class="list bullet text-fill">
                                                    <li><a href="category.jsp">Áo thể thao</a></li>
                                                    <li><a href="category.jsp">Giày thể thao</a></li>
                                                    <li><a href="category.jsp">Dụng cụ thể thao</a></li>
                                                    <li><a href="category.jsp">Máy tập thể thao</a></li>
                                                    <li><a href="category.jsp">Sản phẩm dinh dưỡng</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="column col-xs-12 col-sm-6 col-lg-4 col-md-4">
                                        <div class="box">
                                            <div class="box-heading"><span>Liên hệ</span></div>
                                            <div class="box-content">
                                                <ul class="list bullet text-fill">
                                                    <li><a href="javascript:void(0);"><i class="fa fa-map-marker">&nbsp;</i>&nbsp;Địa chỉ: Số 78/1 đường Phan Đình Phùng, phường Tân Thành, quận Tân Phú, TP. Hồ Chí Minh</a></li>
                                                    <li><a href="javascript:void(0);"><i class="fa fa-phone">&nbsp;</i>&nbsp;Điện thoại: (+84) 1232 4343</a></li>
                                                    <li><a href="javascript:void(0);"><i class="fa fa-fax">&nbsp;</i>&nbsp;Fax: 23434 3434 34</li>
                                                    <li><a href="javascript:void(0);"><i class="fa fa-envelope">&nbsp;</i>&nbsp; Email: sportshop@domain.com</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>

                <div id="powered">
                    <div class="container">
                        <div class="inner">
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div id="top"><a class="scrollup" href="#"><i class="fa fa-angle-up"></i>Top</a></div>
                                    <div class="copyright pull-left">
                                        Sportshop - Copyright &copy; 2016. Phát triển bởi <a href="http://laziweb.com/" title="http://laziweb.com/" target="_blank">Laziweb.com</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="sidebar-offcanvas  visible-xs visible-sm">
                <div class="offcanvas-inner panel panel-offcanvas">
                    <div class="offcanvas-heading panel-heading">
                        <button type="button" class="btn btn-primary" data-toggle="offcanvas"> <span class="fa fa-times"></span></button>
                    </div>
                    <div class="offcanvas-body panel-body">
                        <div class="category box box-success">
                            <div class="box-heading"><span>Chuyên mục</span></div>
                            <div class="box-content tree-menu">
                                <ul class="box-category list-group accordion">
                                    <li class="list-group-item accordion-group">
                                        <a href="index.php?route=product/category&amp;path=17">Áo bóng đá (4)</a>
                                    </li>
                                    <li class="list-group-item accordion-group">
                                        <a href="index.php?route=product/category&amp;path=34">Áo câu lạc bộ (8)</a>
                                    </li>
                                    <li class="list-group-item accordion-group">
                                        <a href="index.php?route=product/category&amp;path=18">Áo đội tuyển (6)</a>
                                    </li>
                                    <li class="list-group-item accordion-group">
                                        <a href="index.php?route=product/category&amp;path=24">Mới (3)</a>
                                    </li>
                                    <li class="list-group-item accordion-group">
                                        <a href="index.php?route=product/category&amp;path=33">Giày đá bóng (6)</a>
                                    </li>
                                    <li class="list-group-item accordion-group">
                                        <a href="index.php?route=product/category&amp;path=26">Giày quần vợt (0)</a>
                                    </li>
                                    <li class="list-group-item accordion-group">
                                        <a href="index.php?route=product/category&amp;path=20">Giày Nike (11)</a>
                                    </li>
                                    <li class="list-group-item accordion-group">
                                        <a href="index.php?route=product/category&amp;path=25">Giày Tom (0)</a>
                                    </li>
                                    <li class="list-group-item accordion-group">
                                        <a href="index.php?route=product/category&amp;path=57">Dụng cụ thể thao (3)</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="offcanvas-footer panel-footer">
                        <div class="input-group" id="offcanvas-search">
                            <input type="text" class="form-control" placeholder="Tìm kiếm..." value="" name="search">
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button"><i class="fa fa-search"></i></button>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>