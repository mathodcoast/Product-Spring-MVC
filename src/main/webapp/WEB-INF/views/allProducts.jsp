<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Coast
  Date: 08.12.2018
  Time: 22:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>All Products</title>
</head>
<body>
<h1 align="center" style="font-size: 25px; margin-top: 10%" >ALL PRODUCTS</h1>
<div align="center" class="container">
    <div  class="jumbotron" style="width: 50%" align="center">
        <c:forEach items="${list}" var="product">
        <a href="/product?productId=${product.id}">Product: ${product.name}</a>
            <hr>
        </c:forEach>
        <a class="btn btn-primary btn-lg" href="/" role="button">Menu</a>
    </div>
</div>
</body>
</html>
