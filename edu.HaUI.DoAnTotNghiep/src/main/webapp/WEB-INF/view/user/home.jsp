<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
<jsp:include page="/WEB-INF/view/common/variable.jsp"></jsp:include>
<!-- CSS -->
<jsp:include page="/WEB-INF/view/user/layout/css.jsp"></jsp:include>
<!-- /CSS -->
</head>
<body>
	<!-- Header -->
	<jsp:include page="/WEB-INF/view/user/layout/header.jsp"></jsp:include>
	<!-- /Header -->
	<div class="container mt-1">
		<div class="row">
			<div class="col-xxl-9 col-xl-9 col-lg-9 col-md-9 col-sm-12 col-xs-12">
				<div id="carouselExampleCaptions" class="carousel slide"
					data-bs-ride="carousel">
					<div class="carousel-indicators">
						<button type="button" data-bs-target="#carouselExampleCaptions"
							data-bs-slide-to="0" class="active" aria-current="true"
							aria-label="Slide 1"></button>
						<button type="button" data-bs-target="#carouselExampleCaptions"
							data-bs-slide-to="1" class="active" aria-current="true"
							aria-label="Slide 2"></button>
						<button type="button" data-bs-target="#carouselExampleCaptions"
							data-bs-slide-to="2" class="active" aria-current="true"
							aria-label="Slide 3"></button>
					</div>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="${base }/user/images/CayDuongXi.jpg" height="450px"
								class="d-block w-100" alt="...">
							<div class="carousel-caption d-none d-md-block">
								<h5>Cây Dương Xỉ</h5>
							</div>
						</div>
						<div class="carousel-item">
							<img src="${base }/user/images/CayLuoiHo.jpg" height="450px"
								class="d-block w-100" alt="...">
							<div class="carousel-caption d-none d-md-block">
								<h5>Cây Lưỡi Hổ</h5>
							</div>
						</div>
						<div class="carousel-item">
							<img src="${base }/user/images/CaySenDa.jpeg" height="450px"
								class="d-block w-100" alt="...">
							<div class="carousel-caption d-none d-md-block">
								<h5>Cây Sen Đá</h5>
							</div>
						</div>
					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
			</div>
			<div
				class="col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-12 col-xs-12 border border-success">
				<h4 class="text-decoration-underline text-success">Tiện ích khi
					mua cây</h4>
				<div class="d-flex lh-lg mt-4 sidebar">
					<i class="fa-solid fa-truck"></i>
					<div>
						<h5 class="text-decoration-underline text-success">Giao hàng
							nhanh</h5>
						<p>Giao nhanh qua Grab</p>
					</div>
				</div>
				<div class="d-flex lh-lg mt-4 sidebar">
					<i class="fa-regular fa-clock"></i>
					<div>
						<h5 class="text-decoration-underline text-success">Hỗ trợ
							24/7</h5>
						<p>Nhanh chóng tiện lợi</p>
					</div>
				</div>
				<div class="d-flex lh-lg mt-4 sidebar">
					<i class="fa-solid fa-dollar-sign"></i>
					<div>
						<h5 class="text-decoration-underline text-success">Giá cạnh
							tranh</h5>
						<p>Tiết kiệm 20% so với thị trường</p>
					</div>
				</div>
				<div class="d-flex lh-lg mt-4 sidebar">
					<i class="fa-regular fa-credit-card"></i>
					<div>
						<h5 class="text-decoration-underline text-success">Thanh toán
							an toàn</h5>
						<p>Thanh toán an toàn 100%</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container mt-5">
		<div class="row">
			<h2 class="text-success text-center fw-bolder">CayCanhShop</h2>
		</div>
		<div class="row">
			<p class="text-center">CayCanhShop là một trong những shop bán
				cây cảnh uy tín tại Thành phố Hà Nội với nhiều năm kinh nghiệm trong
				ngành bán cây cảnh. Chúng tôi chuyên cung cấp đầy đủ các loại cây,
				đảm bảo chất lượng sản phẩm, mang không gian xanh đến cho khách
				hàng.</p>
		</div>
	</div>
	<h2 class="text-success text-center fw-bolder mt-5">Sản phẩm của
		shop</h2>
	<div class="container mt-3">
		<div class="row">
			<c:forEach var="lp" items="${listproduct }">
				<div
					class="col-xxl-3 col-xl-3 col-lg-3 col-md-4 col-sm-12 col-xs-12 mb-3">
					<div class="card" style="width: 18rem;">
						<img src="${base }/uploads/${lp.avatar}" height="285px"
							class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">${lp.title }</h5>
							<p class="card-text">Giá: ${lp.price } đồng</p>
							<a href="${base }/chitietsanpham/${lp.id}"
								class="btn btn-success">Xem Thêm</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<div class="container mt-3">
		<div class="row">
			<div class="d-flex justify-content-center">
				<nav aria-label="Page navigation example">
					<ul class="pagination">
						<li class="page-item"><a class="page-link"
							href="/home?page=${1 }">First</a></li>
						<c:forEach begin="1" end="${totalPageHome }" var="i">
							<li class="page-item"><a class="page-link"
								href="/home?page=${i }">${i }</a></li>
						</c:forEach>
						<li class="page-item"><a class="page-link"
							href="/home?page=${totalPageHome }">Last</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
	<!-- Footer -->
	<jsp:include page="/WEB-INF/view/user/layout/footer.jsp"></jsp:include>
	<!-- /Footer -->
	<!-- JS -->
	<jsp:include page="/WEB-INF/view/user/layout/js.jsp"></jsp:include>
	<!-- /JS -->
</body>
</html>