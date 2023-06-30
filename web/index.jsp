<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>商品列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link type="text/css" rel="stylesheet" href="css/bootstrap.css">
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="layer/layer.js"></script>
    <script type="text/javascript" src="js/cart.js"></script>
</head>

<body style="background-color: rgb(245,235,235);">
<!--header-->
<jsp:include page="/header.jsp">
    <jsp:param name="flag" value="1"></jsp:param>
</jsp:include>
<!--banner-->

<div class="banner">
    <div class="container">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <div class="container">
                <div class="product-list-left" style="border:none;text-align: center;margin-right: 20px;">
                    <h1><a href="/goods_list">商品分类</a></h1>
                    <ul style="list-style: none; padding: 0;font-size: 24px">
                        <li>
                            <a href="/goods_list?typeid=1">男装</a>
                        </li>
                        <li>
                            <a href="/goods_list?typeid=2">女装</a>
                        </li>
                        <li>
                            <a href="/goods_list?typeid=3">男鞋</a>
                        </li>
                        <li>
                            <a href="/goods_list?typeid=4">女鞋</a>
                        </li>
                        <li>
                            <a href="/goods_list?typeid=14">运动</a>
                        </li>
                        <li>
                            <a href="/goods_list?typeid=15">洗护</a>
                        </li>
                    </ul>

                </div>

                <div class="carousel-inner" role="listbox" id="lunbotu">
                    <div class="item active">
                        <div class="banner-text">
                            <a href="/goods_detail?id=200">
                                <img src="images/3.png">
                            </a>
                        </div>
                    </div>

                    <div class="item">
                        <div class="banner-text">
                            <a href="/goods_detail?id=199">
                                <img src="images/44.png">
                            </a>
                        </div>
                    </div>

                    <div class="item">
                        <div class="banner-text">
                            <a href="/goods_detail?id=186">
                                <img src="images/55.png">
                            </a>
                        </div>
                    </div>

                    <div class="item">
                        <div class="banner-text">
                            <a href="/goods_detail?id=190">
                                <img src="images/66.png">
                            </a>
                        </div>
                    </div>

                    <div class="item">
                        <div class="banner-text">
                            <a href="/goods_detail?id=191">
                                <img src="images/77.png">
                            </a>
                        </div>
                    </div>
                </div>

                <div class="product-list-right" style="border:none;text-align: center;margin-left: 10px">
                    <h1>
                        <a href="/goods_list">商品分类</a>
                    </h1>
                    <ul style="list-style: none; padding: 0;font-size: 24px">
                        <li>
                            <a href="/goods_list?typeid=5">家电</a>
                        </li>
                        <li>
                            <a href="/goods_list?typeid=8">食品</a>
                        </li>
                        <li>
                            <a href="/goods_list?typeid=11">医药</a>
                        </li>
                        <li>
                            <a href="/goods_list?typeid=12">保健</a>
                        </li>
                        <li>
                            <a href="/goods_list?typeid=13">进口</a>
                        </li>
                        <li>
                            <a href="/goods_list?typeid=16">百货</a>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
    </div>
</div>

<!--//banner-->




<!--footer-->
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>