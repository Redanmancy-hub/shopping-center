<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>商品列表</title>
	<meta charset="utf-8"/>
	<link rel="stylesheet" href="css/bootstrap.css"/>
</head>
<body  style="background-color: rgb(245,235,235);">
<div class="container-fluid">

	<jsp:include page="/admin/back_header.jsp"></jsp:include>

	<div class="text-right"><a class="btn btn-warning" href="/admin/back_goods_add.jsp">添加商品</a></div>

	<br>

	<ul role="tablist" class="nav nav-tabs">
		<li <c:if test="${type==0 }">class="active"</c:if> role="presentation"><a href="/admin/goods_list">全部商品</a></li>
<%--		<li <c:if test="${type==1 }">class="active"</c:if> role="presentation"><a href="/admin/goods_list?type=1">条幅推荐</a></li>--%>
		<li <c:if test="${type==2 }">class="active"</c:if> role="presentation"><a href="/admin/goods_list?type=2">个人推荐</a></li>
		<li <c:if test="${type==3 }">class="active"</c:if> role="presentation"><a href="/admin/goods_list?type=3">新品推荐</a></li>
	</ul>





	<br>

	<table class="table table-bordered table-hover">

		<tr>

			<th width="10%">图片</th>
			<th width="10%">名称</th>
			<th width="20%">介绍</th>
			<th width="10%">价格</th>
			<th width="10%">分类</th>
			<th width="25%">操作</th>
		</tr>

		<c:forEach items="${p.list }" var="g">
			<tr>
				<td><p><a href="/goods_detail?id=${g.id}" target="_blank"><img src="${g.cover}" width="100px" height="100px"></a></p></td>
				<td><p><a href="/goods_detail?id=${g.id}" target="_blank">${g.name}</a></p></td>
				<td><p>${g.intro}</p></td>
				<td><p>${g.price}</p></td>
				<td><p>${g.type.name}</p></td>
				<td>
					<p>
						<c:choose>
							<c:when test="${g.isHot }">
								<a class="btn btn-info" href="/admin/goods_recommend?id=${g.id }&method=remove&typeTarget=2&pageNumber=${p.pageNumber}&type=${type}">移出个人</a>
							</c:when>
							<c:otherwise>
								<a class="btn btn-primary" href="/admin/goods_recommend?id=${g.id }&method=add&typeTarget=2&pageNumber=${p.pageNumber}&type=${type}">加入个人</a>
							</c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${g.isNew }">
								<a class="btn btn-info" href="/admin/goods_recommend?id=${g.id }&method=remove&typeTarget=3&pageNumber=${p.pageNumber}&type=${type}">移出新品</a>
							</c:when>
							<c:otherwise>
								<a class="btn btn-primary" href="/admin/goods_recommend?id=${g.id }&method=add&typeTarget=3&pageNumber=${p.pageNumber}&type=${type}">加入新品</a>
							</c:otherwise>
						</c:choose>

					</p>
					<a class="btn btn-success" href="/admin/goods_editshow?id=${g.id }& pageNumber=${p.pageNumber}&type=${type}">修改</a>
					<a class="btn btn-danger" href="/admin/goods_delete?id=${g.id }&pageNumber=${p.pageNumber}&type=${type}" onclick="return confirm('确定要删除该信息吗？')">删除</a>
				</td>
			</tr>
		</c:forEach>


	</table>

	<br>
	<jsp:include page="/page.jsp">
		<jsp:param value="/admin/goods_list" name="url"/>
		<jsp:param value="&type=${type }" name="param"/>
	</jsp:include>
	<br>
</div>
</body>
</html>