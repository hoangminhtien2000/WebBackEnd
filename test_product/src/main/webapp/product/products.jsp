<%--
  Created by IntelliJ IDEA.
  User: johntoan98gmail.com
  Date: 23/12/2022
  Time: 09:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>PRODUCTS</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container mt-3">
    <div class="row">
        <h2 class="col-9">Xin chào ${account.username}</h2>
        <c:if test="${sessionScope.account != null}">
            <a href="/logout" class="btn btn-danger col-3">Logout</a>
        </c:if>
    </div>

    <a href="/product/createProduct.jsp" class="btn btn-success">Create</a>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>IMG</th>
            <th>PRICE</th>
            <th>STATUS</th>
            <th>SIZE</th>
            <th>COLOR</th>
            <th>TYPE</th>
            <th>EDIT</th>
            <th>DELETE</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="p" items="${products}">
            <tr>
                <td>${p.product_id}</td>
                <td>${p.product_name}</td>
                <td><img src="${p.img}" width="100px" height="100px"></td>
                <td>${p.price}</td>
                <c:if test="${p.status==1}"><td style="color: green">Còn Hàng</td></c:if>
                <c:if test="${p.status==0}"><td style="color: red">Hết hàng</td></c:if>
                <td>${p.size}</td>
                <td>${p.color}</td>
                <td>${p.type}</td>
                <td><a href="edits?product_id=${p.product_id}" type="button" class="btn btn-warning">Edit</a></td>
                <td><a href="deletes?product_id=${p.product_id}" type="button" class="btn btn-danger">Delete</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>

