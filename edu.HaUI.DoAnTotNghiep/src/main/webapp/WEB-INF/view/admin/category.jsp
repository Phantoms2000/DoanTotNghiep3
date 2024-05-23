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
<title>${AdminTitle }</title>
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
					<h1>Danh sách Category</h1>
					<form action="${base }/admin/category" method="get">
						<div class="d-flex justify-content-between">
							<div>
								<a href="${base }/admin/addcategory" class="btn btn-dark">Thêm
									danh mục</a>
							</div>
							<div>
								<input type="text" name="keyword" placeholder="Search..." />
								<button class="btn btn-dark" type="submit">
									<i class="fa-solid fa-magnifying-glass text-light"></i>
								</button>
							</div>
						</div>
						<table class="table">
							<thead>
								<tr>
									<th scope="col" width="200px">Tên danh mục</th>
									<th scope="col" width="800px">Mô tả</th>
									<th scope="col" width="300px">Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="c" items="${category }">
									<tr>
										<td width="200px">${c.name }</td>
										<td width="800px">${c.description }</td>
										<td width="300px"><a class="btn btn-primary"
											href="${base}/admin/editcategory/${c.id}" role="button">Edit</a>
											<button class="btn btn-danger" role="button"
												onclick="DeleteProduct()">Delete</button></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</form>
				</div>
				<div class="d-flex justify-content-center">
					<nav aria-label="Page navigation example">
						<ul class="pagination">
							<li class="page-item"><a class="page-link"
								href="/admin/category?page=${1 }">First</a></li>
							<c:forEach begin="1" end="${totalPageCategory }" var="i">
								<li class="page-item"><a class="page-link"
									href="/admin/category?page=${i }">${i }</a></li>
							</c:forEach>
							<li class="page-item"><a class="page-link"
								href="/admin/category?page=${totalPageCategory }">Last</a></li>
						</ul>
					</nav>
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
