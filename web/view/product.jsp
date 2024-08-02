<%-- 
    Document   : product
    Created on : Feb 29, 2024, 12:48:48 PM
    Author     : ASUS
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        <link rel="stylesheet" href="css/bootstrap.min.css"  type="text/css">

        <!-- Custom CSS -->
        <link rel="stylesheet" href="css/style.css">


        <!-- Custom Fonts -->
        <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css"  type="text/css">
        <link rel="stylesheet" href="fonts/font-slider.css" type="text/css">

        <!-- jQuery and Modernizr-->
        <script src="js/jquery-2.1.1.js"></script>

        <!-- Core JavaScript Files -->  	 
        <script src="js/bootstrap.min.js"></script>

        <script src="js/photo-gallery.js"></script>

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
                    <form class="form-search">
                        <input type="text" class="input-medium search-query">
                        <button type="submit" class="btn"><span class="glyphicon glyphicon-search"></span></button>
                    </form>
                </div>
                <div class="col-md-4">
                    <div id="cart"><a class="btn btn-1" href="show"><span
                                class="glyphicon glyphicon-shopping-cart"></span>Giỏ hàng : <c:out value="${sessionScope.size}"/>  ITEM</a></div>
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
                                                <a href="category?id=${b.brand_id}" >${b.brand_name}</a>
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
                            </c:if>
                    </ul>
                </div>
            </div>
        </nav>
        <!--//////////////////////////////////////////////////-->
        <!--///////////////////Product Page///////////////////-->
        <!--//////////////////////////////////////////////////-->
        <div id="page-content" class="single-page">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <ul class="breadcrumb">
                            <li><a href="home">Home</a></li>
                            <li><a href="category">Category</a></li>
                            <!--                            <li><a href="#">Samsung Galaxy</a></li>-->
                        </ul>
                    </div>
                </div>
                <div class="row">
                    <div id="main-content" class="col-md-8">
                        <div class="product">
                            <c:forEach items="${requestScope.product}" var="p">
                                <div class="col-md-6">
                                    <div class="image">
                                        <img src="images/${p.image_url}" />

                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="caption">
                                        <div class="name"><h3>${p.racket_name}</h3></div>
                                        <div class="info">
                                            <ul>
                                                <li>Brand: ${p.brand.getBrand_name()}</li>
                                                <li>ID: ${p.racket_id}</li>
                                                <li>Year: ${p.year_value}<li>
                                                <li>Origin: ${p.origin_country}</li>
                                                <li>Quantity: ${p.quantity}</li>
                                            </ul>
                                        </div>
                                        <div class="price">${p.price}<span>$122</span></div>

                                        <div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span></div>
                                        <form action="cart" method="post">
                                            <div class="well">
                                                <label>Qty: </label> 
                                                <input class="form-inline quantity" type="number" name="num" value="1">
                                                <!--                                                <input type="submit" value="Add">-->
                                                <input type="hidden" name="ids" value="${p.racket_id}">
                                                <c:if test="${p.quantity > 0}">
                                                    <input class="btn btn-2" type="submit" value="ADD">
                                                </c:if>
                                                <c:if test="${p.quantity <= 0}">
                                                    <button disabled>None</button>
                                                </c:if>

                                            </div> 
                                        </form>


                                        <div class="share well">
                                            <strong style="margin-right: 13px;">Share :</strong>
                                            <a href="#" class="share-btn" target="_blank">
                                                <i class="fa fa-twitter"></i>
                                            </a>
                                            <a href="#" class="share-btn" target="_blank">
                                                <i class="fa fa-facebook"></i>
                                            </a>
                                            <a href="#" class="share-btn" target="_blank">
                                                <i class="fa fa-linkedin"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="clear"></div>
                            </c:forEach>
                        </div>	
                        <div class="product-desc">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#description">Description</a></li>
                                <li><a href="#review">Review</a></li>
                            </ul>
                            <div class="tab-content">
                                <div id="description" class="tab-pane fade in active">
                                    <h4>Sample Lorem Ipsum Text</h4>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed at ante. Mauris eleifend, quam a vulputate dictum, massa quam dapibus leo, eget vulputate orci purus ut lorem. In fringilla mi in ligula. Pellentesque aliquam quam vel dolor. Nunc adipiscing. Sed quam odio, tempus ac, aliquam molestie, varius ac, tellus. Vestibulum ut nulla aliquam risus rutrum interdum. Pellentesque lorem. Curabitur sit amet erat quis risus feugiat viverra. Pellentesque augue justo, sagittis et, lacinia at, venenatis non, arcu. Nunc nec libero. In cursus dictum risus. Etiam tristique nisl a</p>
                                    <h4>Sample Lorem Ipsum Text</h4>
                                    <p>Sed eget turpis a pede tempor malesuada. Vivamus quis mi at leo pulvinar hendrerit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque aliquet lacus vitae pede. Nullam mollis dolor ac nisi. Phasellus sit amet urna. Praesent pellentesque sapien sed lacus. Donec lacinia odio in odio. In sit amet elit. Maecenas gravida interdum urna. Integer pretium, arcu vitae imperdiet facilisis, elit tellus tempor nisi, vel feugiat ante velit sit amet mauris. Vivamus arcu. Integer pharetra magna ac lacus. Aliquam vitae sapien in nibh vehicula auctor. Suspendisse leo mauris, pulvinar sed, tempor et, consequat ac, lacus. Proin velit. Nulla semper lobortis mauris. Duis urna erat, ornare et, imperdiet eu, suscipit sit amet, massa. Nulla nulla nisi, pellentesque at, egestas quis, fringilla eu, diam.</p>
                                </div>
                                <div id="review" class="tab-pane fade">
                                    <div class="review-text">
                                        <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                    </div>
                                    <div class="review-form">
                                        <h4>Write a review</h4>
                                        <form name="form1" id="ff" method="post" action="review.php">
                                            <label>
                                                <span>Enter your name:</span>
                                                <input type="text"  name="name" id="name" required>
                                            </label>
                                            <label>
                                                <span>Your message here:</span>
                                                <textarea name="message" id="message"></textarea>
                                            </label>
                                            <div class="text-right">
                                                <input class="btn btn-default" type="reset" name="reset" value="Reset">
                                                <input class="btn btn-default" type="submit" name="Submit" value="Submit">
                                            </div>
                                        </form>
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

        <!-- IMG-thumb -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">         
                    <div class="modal-body">                
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->

        <script>
            $(document).ready(function () {
                $(".nav-tabs a").click(function () {
                    $(this).tab('show');
                });
                $('.nav-tabs a').on('shown.bs.tab', function (event) {
                    var x = $(event.target).text();         // active tab
                    var y = $(event.relatedTarget).text();  // previous tab
                    $(".act span").text(x);
                    $(".prev span").text(y);
                });
            });
        </script>

    </body>
</html>
