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


<!--gallery-->
<%--<div class="gallery" style="background-color: rgb(245,235,235);">
    <div class="container">
        <div class="alert alert-danger">
            <button style="border: none;background-color: #f2dede;display: block">猜你喜欢</button>
        </div>
        <div class="gallery-grids">
            <c:forEach items="${hotList}" var="g">
                <div class="col-md-4 gallery-grid glry-two">
                    <a href="/goods_detail?id=${g.id}">
                        <img src="/goods_detail?id=${g.id}" class="img-responsive" alt="${g.name}"/>
                    </a>
                    <div class="gallery-info galrr-info-two">
                        <p>
                            <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                            <a href="/goods_detail?id=${g.id}">查看详情</a>
                        </p>
                        <a class="shop" href="javascript:;" onclick="buy(${g.id})">立刻购买</a>
                        <div class="clearfix"></div>
                    </div>
                    <div class="galy-info">
                        <p>${g.typeName} > ${g.name}</p>
                        <div class="galry">
                            <div class="prices">
                                <h5 class="item_price">¥ ${g.price}</h5>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </c:forEach>


        </div>

        <div class="clearfix"></div>
        <div class="alert alert-info">新品推荐</div>
        <div class="gallery-grids">
            <c:forEach items="${newList}" var="g">
                <div class="col-md-3 gallery-grid">
                    <a href="/goods_detail?id=${g.id}">
                        <img src="${g.cover}" class="img-responsive" alt="${g.name}"/>
                    </a>
                    <div class="gallery-info">
                        <p>
                            <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                            <a href="/goods_detail?id=${g.id}">查看详情</a>
                        </p>
                        <a class="shop" href="javascript:;" onclick="buy(${g.id})">立刻购买</a>
                        <div class="clearfix"></div>
                    </div>
                    <div class="galy-info">
                        <p>${g.typeName} > ${g.name}</p>
                        <div class="galry">
                            <div class="prices">
                                <h5 class="item_price">¥ ${g.price}</h5>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </c:forEach>


        </div>
    </div>
</div>--%>

<!--//gallery-->


<!--footer-->
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>