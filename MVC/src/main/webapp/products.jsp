<%--
  Created by IntelliJ IDEA.
  User: Hoàng Minh Tiến
  Date: 12/25/2022
  Time: 7:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <title>Product</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <h2>Danh sách sản phẩm</h2>
    <%--    <p>The .table class adds basic styling (light padding and only horizontal dividers) to a table:</p>--%>
    <a href="create" class="btn btn-success">Create</a>
    <table class="table">
        <thead>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>IMG</th>
            <th>PRICE</th>
            <th>STATUS</th>
            <th>EDIT</th>
            <th>DELETE</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="p" items="${products}">
        <tr>
            <td>${p.id}</td>
            <td>${p.name}</td>
            <td><img src="${p.img}" width="100px" height="100px"></td>
            <td>${p.price}</td>
            <c:if test="${p.status}"><td style="color: green">Sẵn sàng</td></c:if>
            <c:if test="${!p.status}"><td style="color: red">Hết hàng</td></c:if>
            <td><a href="edits?id=${p.id}" type="button" class="btn btn-warning">Edit</a></td>
            <td><a href="deletes?id=${p.id}" type="button" class="btn btn-danger">Delete</a></td>
        </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>