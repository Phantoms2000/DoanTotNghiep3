<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Static Navigation - SB Admin</title>
<jsp:include page="/WEB-INF/view/common/variable.jsp"></jsp:include>
<!-- CSS -->
<jsp:include page="/WEB-INF/view/admin/layout/css.jsp"></jsp:include>
<!-- /CSS -->
</head>
<body>
	<!-- Header -->
	<jsp:include page="/WEB-INF/view/admin/layout/header.jsp"></jsp:include>
	<!-- /Header -->
	<div id="layoutSidenav">
		<!-- Menu -->
		<jsp:include page="/WEB-INF/view/admin/layout/menu.jsp"></jsp:include>
		<!-- /Menu -->
		<div id="layoutSidenav_content">
			<main>
				<div class="container">
					<h1>Danh sách sản phẩm</h1>
					<a href="/admin/addproduct" class="btn btn-dark">Thêm
						sản phẩm</a>
					<table class="table table-striped">
						<thead>
							<tr>
								<th scope="col">#</th>
								<th scope="col">Title</th>
								<th scope="col">Price</th>
								<th scope="col">Category</th>
								<th scope="col">Status</th>
								<th scope="col">Avatar</th>
								<!-- <th scope="col">Action</th> -->
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${products}" var="product" varStatus="loop">
								<tr>
									<th scope="row">${loop.index + 1}</th>
									<td>${product.title}</td>
									<td>${product.price}</td>
									<td>${product.category.name}</td>
									<td><img alt="" src="${base}/uploads/${product.avatar}"
										width="100px" height="100px" /></td>
									<td><a class="btn btn-primary"
										href="${base}/admin/editproduct/${product.id}" role="button">Edit</a>
										<button class="btn btn-danger" role="button"
											onclick="DeleteProduct(${product.id})">Delete</button></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</main>
			<!-- Footer -->
			<jsp:include page="/WEB-INF/view/admin/layout/footer.jsp"></jsp:include>
			<!-- /Header -->
		</div>
	</div>
	<!-- JS -->
	<jsp:include page="/WEB-INF/view/admin/layout/js.jsp"></jsp:include>
	<!-- /JS -->
</body>
</html>
