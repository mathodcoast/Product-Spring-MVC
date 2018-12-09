<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Find Product</title>
</head>
<body>
<h1 align="center" style="font-size: 25px; margin-top: 10%">INSERT PRODUCT ID</h1>
<div align="center" class="container">
    <div class="jumbotron" style="width: 50%" align="center">
        <form method="get" action="/product">
            <div class="form-group" style="width: 20%">
                <input id="idInput" name="productId" type="text" class="form-control" placeholder="id" required/>
            </div>
            <input class="btn btn-primary btn-lg" type="submit" value="Find"/>
        </form>
        <a class="btn btn-primary btn-lg" href="/" role="button">Menu</a>

    </div>
</div>
</body>
</html>
