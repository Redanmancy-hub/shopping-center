<%--
  Created by IntelliJ IDEA.
  User: 19767
  Date: 2018/11/30
  Time: 17:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid" style="background-image: url('./img/2.jpg')">
        <div class="navbar-header">
            <a class="navbar-brand" href="../index.jsp">在线商城系统前台</a>
        </div>
        <div>
            <ul class="nav navbar-nav">
                <li ><a href="/admin/order_list">订单管理</a></li>
                <li ><a href="/admin/user_list">客户管理</a></li>
                <li ><a href="/admin/goods_list">商品管理</a></li>
                <li ><a href="/admin/type_list">分类管理</a></li>
                <li><a href="/user_logout">退出登录</a></li>
            </ul>
        </div>
    </div>
</nav>