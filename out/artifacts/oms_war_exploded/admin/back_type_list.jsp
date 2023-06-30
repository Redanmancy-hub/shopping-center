<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>类目列表</title>
	<meta charset="utf-8"/>
	<link rel="stylesheet" href="css/bootstrap.css"/>
</head>
<body style="background-color: rgb(245,235,235);">
<div class="container-fluid" >

	<jsp:include page="/admin/back_header.jsp"></jsp:include>

	<br>

	<div>
		<form class="form-inline" method="post" action="/admin/type_add">
			<input type="text" class="form-control" id="input_name" name="name" placeholder="输入类目名称" required="required" style="width: 500px">
			<input type="submit" class="btn btn-warning" value="添加类别"/>
		</form>
	</div>
	<br/>
	<c:if test="${!empty msg }">
		<div class="alert alert-success">${msg }</div>
	</c:if>
	<c:if test="${!empty failMsg }">
		<div class="alert alert-danger">${failMsg }</div>
	</c:if>
	<br>

	<table class="table table-bordered table-hover">

		<tr>
			<th >名称</th>
			<th >操作</th>
		</tr>

		<c:forEach items="${list }" var="t">
			<tr>
				<td><p>${t.name }</p></td>
				<td>
					<a class="btn btn-primary" href="/admin/back_type_edit.jsp?id=${t.id }&name=${t.encodeName }">修改</a>
					<a class="btn btn-danger" href="/admin/type_delete?id=${t.id }" onclick="return confirm('确定要删除该信息吗？')">删除</a>
				</td>
			</tr>
		</c:forEach>


	</table>

</div>
</body>
</html>