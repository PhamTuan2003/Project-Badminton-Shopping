<%-- 
    Document   : delete
    Created on : Mar 4, 2024, 3:51:55 PM
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

        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f4f4f4;
            }
            .container {
                max-width: 600px;
                margin: 20px auto;
                padding: 20px;
                background-color: #fff;
                border-radius: 8px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }
            h1 {
                text-align: center;
                margin-bottom: 20px;
            }
            form {
                text-align: center;
            }
            label {
                display: block;
                margin-bottom: 10px;
            }
            input[type="text"] {
                width: 100%;
                padding: 10px;
                margin-bottom: 20px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
            }
            input[type="submit"],
            button {
                padding: 10px 20px;
                background-color: #4caf50;
                color: #fff;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }
            input[type="submit"]:hover,
            button:hover {
                background-color: #45a049;
            }
            .button {
                display: block;
                margin: 20px auto;
            }
        </style>
    </head>
    <body>
        <h1>Delete Sản Phẩm</h1>
        <form method="post">
            <label>Nhập ID Sản Phẩm Muốn Xoá</label><br/>
            <input type="text" name="id"><br/>
            <input type="submit" value="DELETE"><br/>
        </form>
        <form action="delete">
            <button name="all">Xem tất Cả Sản Phẩm</button>
        </form>
        <button class="button" onclick="location.href = 'home'">Trở Về Trang Chính </button>
        <c:if test="${not empty sucess}">
            <h3 style="color: #2b542c"> <c:out value="${sucess}"/></h3>
        </c:if>
        <c:if test="${not empty falsed}">
            <h3 style="color: red"> <c:out value="${falsed}"/></h3>
        </c:if>   

        <c:forEach items="${requestScope.all}" var="a">
            <div class="col-lg-4 col-md-4 col-xs-12">

                <div class="product">

                    <div class="image"><a href="#"><img style="width: 210px; height: 250px;" src="images/${a.image_url}" /></a></div>   

                    <div class="buttons">
                        <a class="btn cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a>
                        <a class="btn wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a>
                        <a class="btn compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a>
                    </div>
                    <div class="caption">
                        <div class="name"><h3><a href="product?id3=${a.racket_id}">${a.racket_name}</a></h3></div>
                        <div class="price"><span>${a.price * 1.5}</span></div>
                        <div><span>${a.price}</span></div>
                        <div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span></div>
                    </div>

                </div>

            </div>
        </c:forEach>
    </body>
</html>
