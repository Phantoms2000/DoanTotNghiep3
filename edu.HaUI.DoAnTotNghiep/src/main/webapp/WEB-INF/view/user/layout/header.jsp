<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<header>
	<nav class="navbar navbar-expand-lg navbar-dark bg-success">
		<div class="container">
			<a class="navbar-brand" href="${base }/home">CayCanhShop</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active" aria-current="page" href="${base }/home">Trang chủ</a></li>
					<li class="nav-item"><a class="nav-link active" aria-current="page" href="${base }/aboutUs">Giới thiệu</a></li>
					<li class="nav-item dropdown">
						<a class="nav-link active dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Chính sách - Điều khoản</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="${base }/dieuKhoan">Các điều khoản</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="${base }/baoMat">Chính sách bảo mật</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="${base }/giaoHang">Chính sách vận chuyển, giao nhận</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="${base }/hoanTra">Chính sách đổi trả hoàn tiền</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="${base }/thanhToan">Chính sách thanh toán</a></li>
						</ul>
					</li>
					<li class="nav-item"><a class="nav-link active" aria-current="page" href="${base }/contact">Liên hệ</a></li>
				</ul>
				<form action="#" class="d-flex search-bar">
					<input placeholder="Search...">
					<button type="submit">
						<i class="fa-solid fa-magnifying-glass"></i>
					</button>
				</form>
				<a href="#" class="mt-2"><i class="fa-solid fa-user"></i></a>
				<a href="${base }/cart" class="mt-2"><i class="fa-solid fa-cart-shopping"></i></a>
			</div>
		</div>
	</nav>
</header>