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

<form method="post" action="/createWarehouse?product_id=${id.getProduct_id()}">

    <input name="quantity" placeholder="nhập quantity"><br>

    <button type="submit">Create</button>
</form>
</body>
</html>
