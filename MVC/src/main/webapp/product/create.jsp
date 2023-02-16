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
    <title>Create Product</title>
</head>
<body>
<h1>Create Product</h1>
<a href="products" class="btn btn-warning">Back to List Product</a>
<form method="post" action="create">
  <input name="name" placeholder="nhập name"><br>
  <input name="img" placeholder="nhập img"><br>
  <input name="price" placeholder="nhập price"><br>
<%--  <input name="status" placeholder="nhập status"><br>--%>
  <button type="submit">Create</button>
</form>
</body>
</html>
