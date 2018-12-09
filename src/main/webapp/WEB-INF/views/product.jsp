
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Product</title>
</head>
<body>
<h1 align="center" style="font-size: 25px; margin-top: 10%" >PRODUCT ID: ${product.id}</h1>
<div align="center" class="container">
    <div  class="jumbotron" style="width: 50%" align="center">
        <h5>Product: ${product.name}</h5>
        <h5>Price: ${product.price}</h5>
        <a class="btn btn-primary btn-lg" href="/" role="button">Menu</a>
        <a class="btn btn-primary btn-lg" href="/showAllProducts" role="button">Show All Products</a>
    </div>
</div>
</body>
</html>
