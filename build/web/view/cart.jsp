<%-- 
    Document   : cart
    Created on : Feb 29, 2024, 12:39:30 PM
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

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="js/html5shiv.js"></script>
            <script src="js/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <nav id="top">
            <div class="container">
                <div class="row">
                    <div class="col-xs-6">
                        <select class="language">
                            <option value="English" selected>English</option>
                            <option value="France">France</option>
                            <option value="Germany">Germany</option>
                        </select>
                        <select class="currency">
                            <option value="USD" selected>USD</option>
                            <option value="EUR">EUR</option>
                            <option value="DDD">DDD</option>
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
                    <div id="cart"><a class="btn btn-1" href="show"><span class="glyphicon glyphicon-shopping-cart"></span>Giỏ Hàng : <c:out value="${sessionScope.size}"/> ITEM</a></div>
                </div>
            </div>
        </header>
        <!--Navigation-->
        <nav id="menu" class="navbar">
            <div class="container">
                <div class="navbar-header"><span id="heading" class="visible-xs">Categories</span>
                    <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
                </div>
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="home">Trang chủ</a></li>
                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Sản Phẩm</a>
                            <div class="dropdown-menu">
                                <div class="dropdown-inner">
                                    <ul class="list-unstyled">
                                        <c:forEach items="${requestScope.infobrand}" var="b">
                                            <li><a href="category?id=${b.brand_id}">${b.brand_name}</a></li>
                                            
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
        <!--///////////////////Cart Page//////////////////////-->
        <!--//////////////////////////////////////////////////-->
        <div id="page-content" class="single-page">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <ul class="breadcrumb">
                            <li><a href="home">Home</a></li>
                            <li><a href="cart">Cart</a></li>
                        </ul>
                    </div>
                </div>

                <div class="row">
                    <div class="product well">
                        <c:set var="o" value="${requestScope.cart}"></c:set>
                        <c:set var="tt" value="0"></c:set>
                        <c:forEach items="${o.items}" var="i">
                            <c:set var="tt" value="${tt+1}"/>
                            <div class="col-md-2">
                                <div class="image">
                                    <img src="images/${i.racketSpecs.image_url}" />
                                </div>
                            </div>
                            <div class="col-md-9">
                                <div class="caption">

                                    <div class="name"><h3><a href="product?id3=${i.racketSpecs.racket_id}">${i.racketSpecs.racket_name}</a></h3></div>
                                    <div class="info">
                                        <ul>
                                            <li>Brand:${i.racketSpecs.brand.brand_name} </li>
                                            <li>ID: ${i.racketSpecs.racket_id}</li>
                                        </ul>
                                    </div>
                                    <div class="price">${i.price * i.quantity}<span>${i.price * 1.5}</span></div>
                                    <form action="process">
                                        <input type="hidden" name="productId" value="${i.racketSpecs.racket_id}" />
                                        <label>Qty:</label> <input class="form-inline quantity" type="text" name="quantity" value="${i.quantity}">
                                        <button type="submit"class="btn btn-2 " >Update</button>
<!--                                        <a href="#" class="btn btn-2 ">Update</a>-->
                                    </form>
                                   
                                    <hr>
                                    <form action="process" method="post">
                                        <input type="hidden" name="id" value="${i.racketSpecs.racket_id}">
                                        <input  class="btn btn-default pull-right" type="submit" value="REMOVE">
<!--                                        <a href="#" class="btn btn-default pull-right">REMOVE</a>-->
                                    </form>
                                    
                                </div>
                            </div>
                            <div class="clear"></div>
                        </c:forEach>
                    </div>	
                </div>

                <div class="row">
                    <div class="col-md-4 col-md-offset-8 ">
                        <center><a href="home" class="btn btn-1">Continue To Shopping</a></center>
                    </div>
                </div>
                <div class="row">
                    <div class="pricedetails">
                        <div class="col-md-4 col-md-offset-8">
                            <table>
                                <h6>Chi tiết hoá đơn</h6>
<!--                                <tr>
                                    <td>Fullname<input type="text"></td>
                                </tr>-->
<!--                                <tr>
                                    <td>Phone<input type="number"></td>
                                </tr>
                                <tr>
                                    <td>Email<input type="text"></td>
                                </tr>
                                <tr>
                                    <td>Address<input type="text"></td>
                                </tr>-->
                                <tr>
                                    <td>Total</td>
                                    <td>${o.totalMoney}</td>
                                </tr>
                                <tr>
                                    <td>Discount</td>
                                    <td>-----</td>
                                </tr>
                                <tr>
                                    <td>Delivery Charges</td>
                                    <td>30000</td>
                                </tr>
                                <tr style="border-top: 1px solid #333">
                                    <td><h5>Tổng Tiền</h5></td>
                                    <td>${o.totalMoney + 30000}</td>
                                </tr>
                            </table>
                            <form action="checkout" method="post">
                                <center><input class="btn btn-1" type="submit" value="Checkout"></center>
                            </form>
                            <c:if test="${not empty out}">
                                <h3 style="color: #398439"><c:out value="${out}"/></h3>
                            </c:if>
                            
                            <!--                            <center><a href="#" class="btn btn-1">Checkout</a></center>-->
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
