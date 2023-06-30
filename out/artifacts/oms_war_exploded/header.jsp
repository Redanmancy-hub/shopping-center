<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--header-->
<div class="header">
    <c:if test="${empty user}">
        <h1 style="color: rgb(245,215,235)">欢迎来到在线商城系统</h1>
    </c:if>
    <c:if test="${not empty user}">
        <h1 style="color: rgb(245,215,235)">欢迎来到在线商城系统</h1>
        <h3>${user.username}&nbsp;&nbsp;您好:</h3>
    </c:if>
    <div class="container">
        <nav class="navbar navbar-default" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <h1 class="navbar-brand"><a href="/index"></a></h1>
            </div>
            <!--navbar-header-->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav" style="border: none">
                    <li><a href="/index" style="border: none" <c:if test="${param.flag==1}">class="active"</c:if>>首页</a></li>
                    <li class="dropdown">
                        <a href="/goods_list" style="border: none">商品详情</a>

                    </li>
                    <li><a href="/goodsrecommend_list?type=2" style="border: none" <c:if test="${param.flag==3 && t==2}">class="active"</c:if>>个人推荐</a></li>
                    <li><a href="/goodsrecommend_list?type=3" style="border: none" <c:if test="${param.flag==3 && t==3}">class="active"</c:if>>新品推荐</a></li>
                    <c:choose><c:when test="${empty user }">
                        <li><a href="/user_register.jsp" style="border: none" <c:if test="${param.flag==10 }">class="active"</c:if>>注册</a></li>
                        <li><a href="/user_login.jsp" style="border: none" <c:if test="${param.flag==9 }">class="active"</c:if>>登录</a></li>
                    </c:when><c:otherwise>
                        <li><a href="/order_list" style="border: none" <c:if test="${param.flag==5 }">class="active"</c:if>>我的订单</a></li>
                        <li><a href="/user_center.jsp" style="border: none" <c:if test="${param.flag==4 }">class="active"</c:if>>个人信息</a></li>
                        <li><a href="/user_logout" style="border: none">退出登录</a></li>
                    </c:otherwise>
                    </c:choose>

                    <c:if test="${!empty user && user.isadmin }">
                        <li><a href="/admin/back_index.jsp" target="_blank" style="border: none">后台管理</a></li>
                    </c:if>
                </ul>
                <!--/.navbar-collapse-->
            </div>
            <!--//navbar-header-->
        </nav>
        <div class="header-info">
           <%-- <div class="header-right search-box" style="margin-right: 40px">
                <a href="javascript:;"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a>
                <div class="search">
                    <form class="navbar-form" action="/goods_search">
                        <input type="text" class="form-control" name="keyword">
                        <input type="submit" class="btn btn-default <c:if test="${param.flag==7 }">active</c:if>" aria-label="Left Align">搜索</input>
                    </form>
                </div>
            </div>--%>

            <div class="header-right cart" style="border:none;">
                <a href="goods_cart.jsp" style="border:none">
                    <span class="glyphicon glyphicon-shopping-cart<c:if test="${param.flag==8 }">active</c:if>" aria-hidden="true">
                        <span class="card_num">
                            <c:choose>
                                <c:when test="${empty order}">0</c:when>
                                <c:otherwise>${order.amount}</c:otherwise>
                            </c:choose></span></span>
                </a>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!--//header-->