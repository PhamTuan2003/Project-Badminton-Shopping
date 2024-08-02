<%-- 
    Document   : management
    Created on : Mar 3, 2024, 10:14:24 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .body {
                background-color: #f2f2f2; /* Màu nền cho trang web */
                margin: 0;
                padding: 0;
                font-family: Arial, sans-serif;
            }
            .container {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }
            .button {
                display: inline-block;
                padding: 10px 20px;
                font-size: 16px;
                cursor: pointer;
                text-align: center;
                text-decoration: none;
                outline: none;
                color: #fff;
                background-color: orange;
                border: none;
                border-radius: 5px;
                box-shadow: 0 5px #0056b3;
            }
            .button:hover {
                background-color: #0056b3;
            }
            .button:active {
                background-color: #0056b3;
                box-shadow: 0 3px #0056b3;
                transform: translateY(2px);
            }
        </style>
    </head>
    <body>
        <div class="container">
            <button class="button" onclick="location.href='delete'">Xoá Sản Phẩm</button>
            <button class="button" onclick="location.href='add'">Thêm Sản Phẩm</button>
            <button class="button" onclick="location.href='update'">Sửa Thông Tin Sản Phẩm</button>
        </div>
    </body>
</html>
