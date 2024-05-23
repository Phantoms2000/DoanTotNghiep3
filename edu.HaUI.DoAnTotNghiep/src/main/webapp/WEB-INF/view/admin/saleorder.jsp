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
					<h1>Danh sách đơn hàng</h1>
					<form action="${base }/admin/user" method="get">
						<div class="d-flex justify-content-between">
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
									<th scope="col">Mã hóa đơn</th>
									<th scope="col">Tên khách hàng</th>
									<th scope="col">Địa chỉ khách hàng</th>
									<th scope="col">Số điện thoại khách hàng</th>
									<th scope="col">Email khách hàng</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="s" items="${saleorder }">
									<tr>
										<td>${s.code }</td>
										<td>${s.customerName }</td>
										<td>${s.customerAddress }</td>
										<td>${s.customerPhone }</td>
										<td>${s.customerEmail }</td>
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
								href="/admin/user?page=${1 }">First</a></li>
							<c:forEach begin="1" end="${totalPageUser }" var="i">
								<li class="page-item"><a class="page-link"
									href="/admin/user?page=${i }">${i }</a></li>
							</c:forEach>
							<li class="page-item"><a class="page-link"
								href="/admin/user?page=${totalPageUser }">Last</a></li>
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
