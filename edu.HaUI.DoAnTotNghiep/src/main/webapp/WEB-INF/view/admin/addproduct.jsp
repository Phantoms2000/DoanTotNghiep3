<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

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
					<h1 class="mt-4">Thêm sản phẩm</h1>
					<div>
						<sf:form method="post" action="${base}/admin/addproduct"
							modelAttribute="product" enctype="multipart/form-data">
							<sf:hidden path="id" />
							<div class="form-group">
								<label for="category">Loại cây</label>
								<sf:select path="category.id" class="form-control" id="category">
									<sf:options items="${category }" itemValue="id"
										itemLabel="name" />
								</sf:select>
							</div>
							<div class="form-group">
								<label for="title">Tên cây</label>
								<sf:input path="title" autocomplete="off" type="text"
									class="form-control" id="title" placeholder="Title"
									required="required"></sf:input>
							</div>
							<div class="form-group">
								<label for="price">Giá</label>
								<sf:input path="price" autocomplete="off" type="number"
									class="form-control" id="price" placeholder="Price"
									required="required"></sf:input>
							</div>
							<div class="form-group">
								<label for="priceSale">Giảm giá</label>
								<sf:input path="priceSale" autocomplete="off" type="number"
									class="form-control" id="priceSale" placeholder="Price Sale"
									required="required"></sf:input>
							</div>
							<div class="form-group">
								<label for="short_description">Mô tả ngắn</label>
								<sf:textarea path="shortDescription" autocomplete="off"
									class="form-control" placeholder="Short Description"
									id="shortDescription" rows="3" required="required"></sf:textarea>
							</div>
							<div class="form-group">
								<label for="detail_description">Đặc điểm</label>
								<sf:textarea path="dacdiem" autocomplete="off"
									class="form-control" placeholder="Detail Description"
									id="detailDescription" rows="3" required="required"></sf:textarea>
							</div>
							<div class="form-group">
								<label for="detail_description">Ý nghĩa</label>
								<sf:textarea path="ynghia" autocomplete="off"
									class="form-control" placeholder="Detail Description"
									id="detailDescription" rows="3" required="required"></sf:textarea>
							</div>
							<div class="form-group">
								<label for="detail_description">Tác dụng</label>
								<sf:textarea path="tacdung" autocomplete="off"
									class="form-control" placeholder="Detail Description"
									id="detailDescription" rows="3" required="required"></sf:textarea>
							</div>
							<div class="form-group">
								<label for="detail_description">Cách trồng</label>
								<sf:textarea path="cachtrong" autocomplete="off"
									class="form-control" placeholder="Detail Description"
									id="detailDescription" rows="3" required="required"></sf:textarea>
							</div>
							<div class="form-group">
								<label for="detail_description">Cách chăm sóc</label>
								<sf:textarea path="cachchamsoc" autocomplete="off"
									class="form-control" placeholder="Detail Description"
									id="detailDescription" rows="3" required="required"></sf:textarea>
							</div>
							<div class="form-group form-check">
								<sf:checkbox path="isHot" class="form-check-input" id="isHot" />
								<label class="form-check-label" for="isHot">Is hot?</label>
							</div>
							<div class="form-group">
								<label for="fileProductAvatar">Avatar</label> <input
									id="fileProductAvatar" name="productAvatar" type="file"
									class="form-control-file">
							</div>
							<div class="form-group">
								<label for="fileProductPictures">Products</label> <input
									id="fileProductPictures" name="productPictures" type="file"
									class="form-control-file" multiple="multiple">
							</div>
							<br />
							<a href="/admin/product" class="btn btn-dark active"
								role="button" aria-pressed="true">Back To List</a>
							<button type="submit" class="btn btn-primary">Save
								Product</button>
						</sf:form>
					</div>
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
