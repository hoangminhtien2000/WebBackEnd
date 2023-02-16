<%--
  Created by IntelliJ IDEA.
  User: johntoan98gmail.com
  Date: 23/12/2022
  Time: 09:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Product</title>
</head>
<body>
<h1>Create Product</h1>
<form method="post" action="/createProduct">
    <input name="product_id" placeholder="nhập id"><br>
    <input name="product_name" placeholder="nhập name"><br>
    <input name="price" placeholder="nhập price"><br>
    <select id="size_id" name="size_id" style="width: 170px">
        <option value="1" selected>SIZE</option>
        <option value="1">S</option>
        <option value="2">M</option>
        <option value="3">L</option>
        <option value="4">XL</option>
        <option value="5">XXL</option>
    </select><br>
    <select id="color_id" name="color_id" style="width: 170px">
        <option value="1" selected>COLOR</option>
        <option value="1">Black</option>
        <option value="2">White</option>
        <option value="3">Pink</option>
        <option value="4" >Red</option>
        <option value="5">Purple</option>
        <option value="6">Brown</option>
    </select><br>
    <select id="type_id" name="type_id" style="width: 170px">
        <option value="1" selected>TYPE</option>
        <option value="1">Sexy</option>
        <option value="2">Quần sọt</option>
        <option value="3">Váy</option>
        <option value="4">Lưng cao</option>
        <option value="5">Kèm áo choàng</option>
    </select><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
