<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Cây Dương Xỉ</title>
<jsp:include page="/WEB-INF/view/common/variable.jsp"></jsp:include>
<!-- CSS -->
<jsp:include page="/WEB-INF/view/user/layout/css.jsp"></jsp:include>
<!-- /CSS -->
</head>
<body>
	<!-- Header -->
	<jsp:include page="/WEB-INF/view/user/layout/header.jsp"></jsp:include>
	<!-- /Header -->
	<div class="container mt-5">
		<h1 class="text-center text-success fw-bolder">Chi tiết sản phẩm</h1>
	</div>
	<div>
		<div class="container mt-3">
			<div class="row">
				<h3 class="text-success fw-bolder text-decoration-underline">${productDetails.category.name }</h3>
			</div>
		</div>
		<div class="container mt-3">
			<div class="row">
				<div
					class="col-xxl-4 col-xl-4 col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<img src="${base }/uploads/${productDetails.avatar }"
						class="img-fluid" alt="...">
				</div>
				<div
					class="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12 mt-5">
					<div>
						<h4>Mô tả ngắn</h4>
					</div>
					<div>${productDetails.shortDescription }</div>
					<div class="mt-3">
						<div>
							<h4>
								Giá: <span class="fw-bolder text-danger fs-3">${productDetails.price }
									đồng</span>
							</h4>
						</div>
					</div>
					<div class="mt-3">
						<strong>Giá chưa gồm chậu sứ hoặc bình thủy tinh</strong>
					</div>
					<div class="mt-3">Bảo Hành từ 7 đến 14 ngày - Tư vấn chăm sóc
						trọn đời</div>
					<div>
						<a class="mt-3 btn btn-success text-light text-decoration-none"
							href="#" onclick="addToCart(${productDetails.id}, 1)">Thêm
							vào giỏ hàng</a>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<hr>
		</div>
		<div class="container mt-3">
			<h3 class="text-success fw-bolder text-decoration-underline">Bài
				viết</h3>
		</div>
		<div class="container mt-3">
			<h4 class="text-success fw-bolder">1. Đặc điểm</h4>
			<div>
				${productDetails.dacdiem }
			</div>
			<h4 class="text-success fw-bolder mt-3">2. Ý nghĩa</h4>
			<div>
				${productDetails.ynghia }
			</div>
			<h4 class="text-success fw-bolder mt-3">3. Tác dụng</h4>
			<div>
				${productDetails.tacdung }
			</div>
			<h4 class="text-success fw-bolder mt-3">4. Cách trồng</h4>
			<div>
				${productDetails.cachtrong }
			</div>
			<h4 class="text-success fw-bolder mt-3">5. Cách chăm sóc</h4>
			<div>
				${productDetails.cachchamsoc }
			</div>
			<a href="${base }/home" class="btn btn-success text-white text-decoration-none">Trở lại</a>
		</div>
	</div>
	<script type="text/javascript">
		addToCart = function(productId, quality) {
			let data = {
				productId: productId,
				quality: quality
			};
			jQuery.ajax({
				url: "/cart/add",
				type: "post",
				contentType: "application/json",
				data: JSON.stringify(data),
				dataType: "json",
				success:function(jsonResult) {
					let totalItems = jsonResult.totalItems;
					$("#totalCartItemId").html(totalItems);
				},
				error:function(jqXhr, textStatus, errorMessenger) {
				
				}
			});
		}
	</script>
	<!-- Footer -->
	<jsp:include page="/WEB-INF/view/user/layout/footer.jsp"></jsp:include>
	<!-- /Footer -->
	<!-- JS -->
	<jsp:include page="/WEB-INF/view/user/layout/js.jsp"></jsp:include>
	<!-- /JS -->
</body>
</html>