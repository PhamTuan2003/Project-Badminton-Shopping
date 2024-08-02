<%-- 
    Document   : update
    Created on : Mar 4, 2024, 5:50:25 PM
    Author     : ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                margin: 0;
                padding: 0;
            }
            form {
                max-width: 600px;
                margin: 20px auto;
                padding: 20px;
                background-color: #fff;
                border-radius: 8px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }
            label {
                display: block;
                margin-bottom: 10px;
            }
            input[type="text"],
            select {
                width: 100%;
                padding: 10px;
                margin-bottom: 20px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
            }
            input[type="submit"] {
                padding: 10px 20px;
                background-color: #4caf50;
                color: #fff;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }
            input[type="submit"]:hover {
                background-color: #45a049;
            }
        </style>
    </head>
    <body>
        <h1>Update new a Product</h1>
        <form method="post" action="search">
            <label>Enter id:</label>
            <input type="text" name="id">
            <input type="submit" value="Search">
        </form>
        <c:if test="${not empty infomod}">
            <form method="post" action="update">
                ID:<input type="text" name="id" value="${infomod.racket_id}" readonly>
                <select name="brand" required="">
                    <option value="1">Vợt Cầu Lông Yonex</option>
                    <option value="2">Vợt Cầu Lông Linning</option>
                    <option value="3">Vợt Cầu Lông Victor</option>
                    <option value="4">Vợt Cầu Lông Mizzuno</option>
                </select>

                <select name="type" required="">
                    <option value="1">Thiên Công</option>
                    <option value="2">Phòng Thủ</option>
                    <option value="3">Công Thủ Toàn Diện</option>
                </select>

                <label>Tên sản phẩm:</label> 
                <input type="text" name="name" value="${infomod.racket_name}"><br/>
                <label>Giá Sản Phẩm</label>
                <input type="text" name="price" value="${infomod.price}">
                <label>Nhập Đường Link Ảnh Sản Phẩm </label>
                <input type="text" name="image" value="${infomod.image_url}">
                <label>Năm Sản Xuất</label>
                <input type="text" name="year" value="${infomod.year_value}">
                <label>Xuất sứ</label>
                <input type="text" name="origin" value="${infomod.origin_country}">
                <label>Số lượng sản phẩm</label>
                <input type="text" name="quantity" value="${infomod.quantity}">
                <input type="submit" value="Sửa Sản Phẩm">
            </form>
        </c:if>
        <c:if test="${not empty sucess}">
            <h3 style="color: #4caf50"> <c:out value="${sucess}"/></h3>
        </c:if>
        <c:if test="${not empty errors}">
            <h3 style="color: red"><c:out value="${errors}"/></h3>
        </c:if>
        <c:if test="${not empty error}">
            <h3 style="color: red"><c:out value="${error}"/></h3>
        </c:if>
        <button onclick="location.href = 'home'">Back to the Home</button>
    </body>
</html>
