<%-- 
    Document   : order.jsp
    Created on : Jul 14, 2024, 3:58:32 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <h1>Order Details for Customer</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>Fullname</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Address</th>
                    <th>Order Date</th>
                    <th>Status</th>
                    <th>Total Money</th>
                    <th>Quantity</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach var="o" items="${requestScope.orderDetails}">
                    <tr>
                        <td>${o.order.customer.fullname}</td>
                        <td>${o.order.customer.email}</td>
                        <td>${o.order.customer.phone}</td>
                        <td>${o.order.customer.address}</td>
                        <td>${o.order.orderDate}</td>
                        <td>${o.order.status ? "Completed" : "Pending"}</td>
                        <td>${o.order.total_money}</td>
                        <td>${o.quantity}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
