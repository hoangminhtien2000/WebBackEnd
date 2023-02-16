<%--
  Created by IntelliJ IDEA.
  User: Hoàng Minh Tiến
  Date: 12/25/2022
  Time: 7:51 PM
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
  <input name="name" placeholder="nhập name" value="${e.name}" ><br>
  <input name="img" placeholder="nhập img" value="${e.img}" ><br>
  <input name="price" placeholder="nhập price" value="${e.price}" ><br>
  <button type="submit">Update</button>
</form>
</body>
</html>
