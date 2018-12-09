<%--
  Created by IntelliJ IDEA.
  User: Coast
  Date: 08.12.2018
  Time: 19:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>ProductInsert</title>
</head>
<body>
<h1 align="center" style="font-size: 25px; margin-top: 10%">INSERT PRODUCT INFORMATION</h1>
<div align="center" class="container">
    <div class="jumbotron" style="width: 50%" align="center">
        <form method="post" action="/saveProduct">
            <div class="form-group" style="width: 50%">
                <input id="nameInput" name="productName" type="text" class="form-control" placeholder="Name" required/>
                <input id="costInput" name="productCoast" type="text" class="form-control" placeholder="Price" required/>
            </div>
            <input class="btn btn-primary btn-lg" type="submit" value="Save"/> <br>
            <a>${message}</a>
        </form>
        <a class="btn btn-primary btn-lg" href="/showAllProducts" role="button">Show All Products</a>
        <a class="btn btn-primary btn-lg" href="/" role="button">Menu</a>
    </div>
</div>
</body>
</html>
