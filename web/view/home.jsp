<%-- 
    Document   : home
    Created on : Feb 28, 2024, 11:18:02 PM
    Author     : ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta name="description" content="Free Bootstrap Themes by Zerotheme dot com - Free Responsive Html5 Templates">
        <meta name="author" content="https://www.Zerotheme.com">

        <title>Phạm Tuấn Badmintion</title>

        <!-- Bootstrap Core CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">

        <!-- Custom CSS -->
        <link rel="stylesheet" href="css/style.css">


        <!-- Custom Fonts -->
        <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="fonts/font-slider.css" type="text/css">

        <!-- jQuery and Modernizr-->
        <script src="js/jquery-2.1.1.js"></script>

        <!-- Core JavaScript Files -->
        <script src="js/bootstrap.min.js"></script>

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
    <![endif]-->
    </head>
    <body>
        <!--Top-->
        <nav id="top">
            <div class="container">
                <div class="row">
                    <div class="col-xs-6">
                        <select class="language">
                            <option value="English" selected>English</option>
                            <option value="France">Việt Nam</option>

                        </select>
                        <select class="currency">
                            <option value="USD" selected>USD</option>
                            <option value="EUR">VND</option>

                        </select>
                    </div>
                    <div class="col-xs-6">
                        <ul class="top-link">

                            <li><a href="account"><span class="glyphicon glyphicon-user"></span>${sessionScope.account.username}</a></li>
                            <li><a href="logout"><span  class="fa fa-sign-out"></span> Logout</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        <!--Header-->
        <header class="container">
            <div class="row">
                <div class="col-md-4">
                    <div id="logo"><img src="images/logo.png" /></div>
                </div>
                <div class="col-md-4">
                    <form class="form-search" method="post" action="category">
                        <input type="text" class="input-medium search-query" name="names">
                        <button type="submit" class="btn"><span class="glyphicon glyphicon-search"></span></button>
                    </form>

                </div>
                <div class="col-md-4">
                    <div id="cart"><a class="btn btn-1" href="show"><span
                                class="glyphicon glyphicon-shopping-cart"></span>Giỏ hàng : ${requestScope.size}ITEM</a></div>
                </div>
            </div>
        </header>
        <!--Navigation-->
        <nav id="menu" class="navbar">
            <div class="container">
                <div class="navbar-header"><span id="heading" class="visible-xs">Categories</span>
                    <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse"
                            data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
                </div>
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="home">Trang Chủ</a></li>
                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Sản Phẩm</a>
                            <div class="dropdown-menu">
                                <div class="dropdown-inner">

                                    <ul class="list-unstyled">
                                        <c:forEach items="${requestScope.infobrand}" var="b">
                                            <li>
                                                <a href="category?id=${b.brand_id}" value="" name="brandd">${b.brand_name}</a>
                                            </li>
                                            
                                        </c:forEach>
                                    </ul>


                                </div>
                            </div>
                        </li>
                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Các Dòng Vợt</a>
                            <div class="dropdown-menu">
                                <div class="dropdown-inner">
                                    <ul class="list-unstyled">
                                        <c:forEach items="${requestScope.infotype}" var="c">
                                            <li><a href="category?id2=${c.rackettype_id}">${c.rackettype_name}</a></li>
                                           
                                        </c:forEach>

                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Tin Tức Vợt Mới
                                Nhất</a>
                            <div class="dropdown-menu" style="margin-left: -203.625px;">
                                <div class="dropdown-inner">
                                    <ul class="list-unstyled">
                                        <li><a href="category.html">Các mẫu yonex mới sắp ra mắt.</a></li>
                                        <li><a href="category.html">Siêu phẩm Linning cập bến việt nam.</a></li>
                                        <li><a href="category.html">Chiến thần victor.</a></li>
                                        <li><a href="category.html">Dòng vợt linh hoạt cho người mới.</a></li>
                                        <li><a href="category.html">Công thủ toàn diện với dòng vợt linning mới.</a></li>
                                    </ul>
                                    <ul class="list-unstyled">
                                        <li><a href="category.html">Cây vợt được nhiều tuyển thủ lựa chọn thi đấu</a></li>
                                        <li><a href="category.html">Trận đấu kinh điển giữa hai tay vợt số 1 TG</a></li>
                                        <li><a href="category.html">Cầu lông nữ việt nam đi lên.</a></li>
                                        <li><a href="category.html">Giải cầu lông trẻ Hà Nội mở rộng</a></li>
                                    </ul>
                                    <ul class="list-unstyled">
                                        <li><a href="category.html">Nguyễn Tiến Minh ra mắt hãng vợt riêng cho mình.</a></li>
                                        <li><a href="category.html">Cây vợt làm lên tên tuổi của chen long</a></li>
                                        <li><a href="category.html">Mẫu vợt bắt mắt của nhà Yonex</a></li>
                                        <li><a href="category.html">Trận đấu căng thẳng của đôi nam nữ Việt Nam</a></li>
                                        <li><a href="category.html">Cách nhận biết vợt chính hãng cho người mới.</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <c:if test="${sessionScope.account.role == 1}">
                            <li><a href="mana">Quản Lý Sản Phẩm</a></li>
                            <li><a href="order">Danh Sách Đơn Hàng</a></li>
                        </c:if>
                            
                         <c:if test="${sessionScope.account.role == 2}">
                            <li><a href="order">Thông Tin Đơn Hàng</a></li>
                        </c:if>   
                    </ul>
                </div>
            </div>
        </nav>
        <!--//////////////////////////////////////////////////-->
        <!--///////////////////HomePage///////////////////////-->
        <!--//////////////////////////////////////////////////-->
        <div id="page-content" class="home-page">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <!-- Carousel -->
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators hidden-xs">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>
                            <!-- Wrapper for slides -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img src="images/banner1.jpg" alt="First slide">
                                    <!-- Static Header -->
                                    <div class="header-text hidden-xs">
                                        <div class="col-md-12 text-center">
                                        </div>
                                    </div><!-- /header-text -->
                                </div>
                                <div class="item">
                                    <img src="images/banner2.jpg" alt="Second slide">
                                    <!-- Static Header -->
                                    <div class="header-text hidden-xs">
                                        <div class="col-md-12 text-center">
                                        </div>
                                    </div><!-- /header-text -->
                                </div>
                                <div class="item">
                                    <img src="images/banner3.jpg" alt="Third slide">
                                    <!-- Static Header -->
                                    <div class="header-text hidden-xs">
                                        <div class="col-md-12 text-center">
                                        </div>
                                    </div><!-- /header-text -->
                                </div>
                            </div>
                            <!-- Controls -->
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div><!-- /carousel -->
                    </div>
                </div>
                <div class="row">
                    <div class="banner">
                        <div class="col-sm-4">
                            <img src="images/sub-banner1.jpg" />
                        </div>
                        <div class="col-sm-4">
                            <img src="images/sub-banner2.jpg" />
                        </div>
                        <div class="col-sm-4">
                            <img src="images/sub-banner3.jpg" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="heading">
                            <h2>Các Loại Vợt Cầu Lông Hot Trend</h2>
                        </div>
                        <div class="products">
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="product">
                                    <div class="image"><a href="#"><img src="images/yonex.png" /></a></div>
                                    
                                                                           <div class="name">
                                        <h3><a href="product">Vợt Yonex Astrox 100zz 2021 Kurenai(Sắp ra mắt)</a></h3>
                                    </div>
                                   
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="product">
                                    <div class="image"><a href="#"><img src="images/yonex1.png" /></a></div>
                                                                            <div class="name">
                                        <h3><a href="product">Vợt Cầu Lông Yonex Astrox 88D Pro(Sắp ra mắt)</a></h3>
                                    </div>
                                   
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="product">
                                    <div class="image"><a href="#"><img src="images/Linning.png" /></a></div>
                                                                            <div class="name">
                                        <h3><a href="product">Vợt Cầu Lông Lining Aeronaut 9000C| Phiên bản xanh
                                                ngọc(Sắp ra mắt)</a></h3>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="product">
                                    <div class="image"><a href="#"><img src="images/victor.png" /></a></div>
                                                                         <div class="name">
                                        <h3><a href="product">Vợt Cầu Lông Victor DriveX 5H-Cực Phẩm(Sắp ra mắt)</a></h3>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="banner">
                        <div class="col-sm-6">
                            <img src="images/sub-banner4.png" />
                        </div>
                        <div class="col-sm-6">
                            <img src="images/sub-banner5.png" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="heading">
                            <h2>Các Loại Vợt Các Tay Vợt Tin Dùng</h2>
                        </div>
                        <div class="products">
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="product">
                                    <div class="image"><a href="#"><img src="images/mizzuno.png" /></a></div>
                                                                            <div class="name">
                                        <h3><a href="product">Vợt Cầu Lông Mizuno Speedflex 9.1(Sắp ra mắt)</a></h3>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="product">
                                    <div class="image"><a href="#"><img src="images/linning1.png" /></a></div>
                                                                            <div class="name">
                                        <h3><a href="product">Vợt Cầu Lông Lining 3D CALIBAR 300C(Sắp ra mắt)</a></h3>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="product">
                                    <div class="image"><a href="#"><img src="images/yonex2.png" /></a></div>
                                                                            <div class="name">
                                        <h3><a href="product">Vợt Cầu Lông Yonex ArcSaber 11 Play(Sắp ra mắt)</a></h3>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="product">
                                    <div class="image"><a href="#"><img src="images/linning2.png" /></a></div>
                                                                            <div class="name">
                                        <h3><a href="product">Vợt Cầu Lông Linning Axforce 90 Tiger Max(Sắp ra mắt)</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer>
            <div class="container">
                <div class="wrap-footer">
                    <div class="row">
                        <div class="col-md-3 col-footer footer-1">
                            <img src="images/logofooter.png" />
                            <p>Công ty TNHH PT Sport Việt Nam,Giấy phép kinh doanh số,010181721892,đăng ký thay đổi lần 1
                                ngày 21/10/2020</p>
                        </div>
                        <div class="col-md-3 col-footer footer-2">
                            <div class="heading">
                                <h4>Hướng dẫn khách hàng</h4>
                            </div>
                            <ul>
                                <li><a href="#">Chính sách bảo hành</a></li>
                                <li><a href="#">Chính sách đổi trả hành</a></li>
                                <li><a href="#">Chính sách vận chuyển</a></li>
                                <li><a href="#">Chính sách thanh toán</a></li>
                                <li><a href="#">Chính sách bảo mật</a></li>
                            </ul>
                        </div>
                        <div class="col-md-3 col-footer footer-3">
                            <div class="heading">
                                <h4>Hỗ trợ khách hàng</h4>
                            </div>
                            <ul>
                                <li><a href="#">Hướng dẫn mua hàng</a></li>
                                <li><a href="#">Hình Thức giao hành</a></li>
                                <li><a href="#">Hình thức thanh toán</a></li>
                                <li><a href="#">Chuyển khoản</a></li>
                                <li><a href="#">Ship COD</a></li>
                            </ul>
                        </div>
                        <div class="col-md-3 col-footer footer-4">
                            <div class="heading">
                                <h4>Địa chỉ chính chi nhánh Hà Nội</h4>
                            </div>
                            <ul>
                                <li><span class="glyphicon glyphicon-home"></span>Địa chỉ 12/70, ngõ 102 Trường Chinh,Đống
                                    Đa,Hà Nội</li>
                                <li><span class="glyphicon glyphicon-earphone"></span>+91 8866888111</li>
                                <li><span class="glyphicon glyphicon-envelope"></span>caulongptshop@gmail.com</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="copyright">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            Danh sách ngân hành chính của shop <a href="https://www.Zerotheme.com">Zerotheme</a>
                        </div>
                        <div class="col-md-6">
                            <div class="pull-right">
                                <ul>
                                    <li><img src="images/visa-curved-32px.png" /></li>
                                    <li><img src="images/paypal-curved-32px.png" /></li>
                                    <li><img src="images/discover-curved-32px.png" /></li>
                                    <li><img src="images/maestro-curved-32px.png" /></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </body>
</html>
