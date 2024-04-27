<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Thêm Danh Mục</title>
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
					<h1 class="mt-4">Thêm danh mục</h1>
					<sf:form method="post" action="${base}/admin/addcategory"
						modelAttribute="addcategory" enctype="multipart/form-data">
						<sf:hidden path="id" />
						<div class="form-group">
							<label for="title">Name</label>
							<sf:input path="name" autocomplete="off" type="text"
								class="form-control" id="name" placeholder="Name"
								required="required"></sf:input>
						</div>
						<div class="form-group">
							<label for="price">Description</label>
							<sf:input path="description" autocomplete="off" type="text"
								class="form-control" id="description" placeholder="Description"
								required="required"></sf:input>
						</div>
						<br />
						<a href="${base }/admin/category" class="btn btn-dark active"
							role="button" aria-pressed="true">Back To List</a>
						<button type="submit" class="btn btn-primary">Save
							Category</button>
					</sf:form>
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