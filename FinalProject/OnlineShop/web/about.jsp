<%-- 
    Document   : about
    Created on : May 16, 2017, 1:55:13 PM
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
        <title>Giới thiệu | Sportshop</title>

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
                <%@include file="WEB-INF/jspf/topbar.jspf" %>

                <!-- header -->
                <header id="header">
                    <div id="header-main">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 logo inner">
                                    <div id="logo-theme" class="logo-store pull-left">
                                        <a href="home" class="img-responsive"><span>SportShop</span></a>
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
                                                                    <li class="home"><a href="home"><span class="menu-title">Trang chủ</span></a></li>
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
                        <li><a href="home"><i class="fa fa-home"></i></a></li>
                        <li><a href="about.jsp">Về chúng tôi</a></li>
                    </ul>
                    <div class="row">
                        <section id="sidebar-main" class="col-md-12">
                            <div id="content">
                                <div class="wrapper no-margin">
                                    <h1>Về chúng tôi</h1>
                                    <div class="row contact-content">
                                        <div class="col-ld-8 col-md-8 col-sm-12">
                                            <div class="contact-info">
                                                <h3>Giới thiệu chung</h3>
                                                <div class="content">
                                                    <p>Nhịp sống hiện đại ngày càng ảnh hưởng đến lối sống của mọi tầng lớp xã hội. Trong đó, giới trẻ là những người chịu ảnh hưởng nhiều nhất của lối sống mới này. Trong một cuộc điều tra nhỏ về nhu cầu mua sắm và chăm chút cho vẻ bề ngoài xinh đẹp của giới nữ thì có tới 99% cho kết quả thuận. Bởi vì đời sống ngày càng phát triền, những bộ trang phục và theo đó những phụ kiệm đi kèm, có thể nói lên phong cách và cá tính rất riêng của họ. Chúng tôi hiểu và đã cho ra đời website http://sportshop.com nhằm đáp ứng nhu cầu đấy, nhưng theo một cách khác, mới hơn và hoàn hảo hơn.</p>
                                                    <p>Hiện nay, xu hướng thương mại điện tử đang phát triển rất mạnh, trong tương lai sẽ là mô hình chủ đạo và tất yếu, Quanaoredep.com đã tạo nên sự khác biệt bởi chính hình thức này: Một mô hình cửa hàng trực tuyến, cung cấp mọi góc độ của sản phẩm nhằm giúp khách hàng dễ dàng chọn lựa sản phẩm yêu thích, liên tục cập nhật mẫu mã đa dạng và kèm theo đó là phong cách bán hàng chuyên nghiệp, chu đáo giúp cho bạn trẻ, những người bận rộn, những người làm việc văn phòng không có thời gian đi shopping vẫn có thể thỏa sức mua sắm. với mô hình này chúng tôi đã và đang làm hài lòng tất cả các Khách hàng. <br></p>
                                                    <p><strong>Hoạt động</strong> <br> <br>
                                                        <img src="image/catalog/demo/slider/3.png" alt="" class="img-responsive"></p>
                                                    <p>Kinh doanh quần áo là công việc không bao giờ buồn chán. Nếu ai đó nghĩ là làm nghề này thì sẽ có thời gian xem ti vi, đọc sách báo thì chắc họ chỉ đoán mò. Còn chúng tôi xin khẳng định rằng bạn sẽ phải ăn, ngủ, sinh hoạt ở cửa hàng, nhất là thời gian đầu.  </p>
                                                    <p>Sẽ có rất nhiều thứ cần đến quy chế khi bạn bước vào ngành kinh doanh thời trang, trong đó có những vấn đề liên quan đến thời gian mở cửa, giá cả, hàng ký gửi, mua sản phẩm ngoài ý muốn, cho nợ, đặt cọc, đồ trả lại, những đơn hàng đặc biệt, hư hại, trẻ em trong cửa hàng, loại thẻ tín dụng được áp dụng, gói quà,...</p>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- end1 -->
                                        <div class="col-ld-4 col-md-4 col-sm-12">
                                            <h2>Sứ mệnh</h2>
                                            <ol>
                                                <li>Đây có phải là mảng kinh doanh bạn đã nắm vững được phần nào?</li>
                                                <li>Liệu bạn có chịu nổi những rủi ro cố hữu của nghề kinh doanh thời trang?</li>
                                                <li>Có phải bạn đặt rất nhiều niềm tin vào ngành kinh doanh thời trang không?</li>
                                                <li>Có phải chỗ bạn định kinh doanh đã có quá nhiều cửa hàng hay bị một số cửa hàng lớn chiếm lĩnh rồi không?</li>
                                            </ol>
                                            <br>
                                            <h2>Mục tiêu</h2>
                                            <ul>
                                                <li>Mang đến sự năng động và quyến rũ đến từng người phụ nữ</li>
                                                <li>Đột phá khả năng mang lại sự lịch lãm cho cánh đàn ông</li>
                                                <li>Một môi trường thân thiện hòa đồng cùng các em nhỏ trên thế giới</li>
                                                <li>Trở thành hệ thống số 1 Việt Nam về lĩnh vực kinh doanh thể thao</li>
                                                <li>Mở rộng thị trường ra toàn thế giới với quy mô cực lớn trong hai năm tới</li>
                                            </ul>

                                            <br>
                                            <h2>Thành tích</h2>
                                            <ul class="list-unstyled row">
                                                <li class="col-xs-4"><img src="image/cache/catalog/demo/manufacturer/brand_1-150x53.png" alt="" class="img-responsive"></li>
                                                <li class="col-xs-4"><img src="image/cache/catalog/demo/manufacturer/brand_2-150x53.png" alt="" class="img-responsive"></li>
                                                <li class="col-xs-4"><img src="image/cache/catalog/demo/manufacturer/brand_3-150x53.png" alt="" class="img-responsive"></li>
                                            </ul>
                                            <ul class="list-unstyled row">
                                                <li class="col-xs-4"><img src="image/cache/catalog/demo/manufacturer/brand_4-150x53.png" alt="" class="img-responsive"></li>
                                                <li class="col-xs-4"><img src="image/cache/catalog/demo/manufacturer/brand_5-150x53.png" alt="" class="img-responsive"></li>
                                                <li class="col-xs-4"><img src="image/cache/catalog/demo/manufacturer/brand_8-150x53.png" alt="" class="img-responsive"></li>
                                            </ul>
                                            <ul class="list-unstyled row">
                                                <li class="col-xs-4"><img src="image/cache/catalog/demo/manufacturer/brand_3-150x53.png" alt="" class="img-responsive"></li>
                                                <li class="col-xs-4"><img src="image/cache/catalog/demo/manufacturer/brand_2-150x53.png" alt="" class="img-responsive"></li>
                                                <li class="col-xs-4"><img src="image/cache/catalog/demo/manufacturer/brand_1-150x53.png" alt="" class="img-responsive"></li>
                                            </ul>
                                        </div>
                                        <!-- end -->
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
                                                    <li><a href="home" data-hover="Trang chủ">Trang chủ</a></li>
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