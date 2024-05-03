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
				<h1>Liên Hệ</h1>
				<table class="table">
					<thead>
						<tr>
							<th scope="col">First Name</th>
							<th scope="col">Last Name</th>
							<th scope="col">Phone</th>
							<th scope="col">Email</th>
							<th scope="col">Message</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="c" items="${contactadmin }">
							<tr>
								<td>${c.fname }</td>
								<td>${c.lname }</td>
								<td>${c.phoneNumber }</td>
								<td>${c.email }</td>
								<td>${c.message }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
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
