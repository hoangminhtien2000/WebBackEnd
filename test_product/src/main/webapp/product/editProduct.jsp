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
  <title>Edit Product</title>
</head>
<body>
<h1>Edit Product</h1>
<form method="post">
  <input name="product_name" placeholder="nhập name" value="${e.product_name}"><br>
  <input name="img" placeholder="nhập img" value="${e.img}"><br>
  <input name="price" placeholder="nhập price" value="${e.price}"><br>
  <select id="status" name="status" style="width: 170px">
    <option value="${e.status}" selected>STATUS</option>
    <option value="0">Hết hàng</option>
    <option value="1">Còn hàng</option>
  </select><br>
  <select id="size" name="size" style="width: 170px" >
    <option value="${e.size}" selected >${e.size}</option>
    <option value="XS">XS</option>
    <option value="S">S</option>
    <option value="M">M</option>
    <option value="L" >L</option>
    <option value="XL" >XL</option>
    <option value="XXL">XXL</option>
  </select><br>
  <select id="color" name="color" style="width: 170px">
    <option value="${e.color}" selected>${e.color}</option>
    <option value="Black">Black</option>
    <option value="White">White</option>
    <option value="Pink">Pink</option>
    <option value="Red" >Red</option>
    <option value="Purple">Purple</option>
    <option value="Brown">Brown</option>
  </select><br>
  <select id="type" name="type" style="width: 170px">
    <option value="${e.type}" selected>${e.type}</option>
    <option value="Sexy">Sexy</option>
    <option value="Quần sọt">Quần sọt</option>
    <option value="Váy">Váy</option>
    <option value="Lưng cao">Lưng cao</option>
    <option value="Kèm áo choàng">Kèm áo choàng</option>
  </select><br>
  <button type="submit">Edit</button>
</form>
</body>
</html>
