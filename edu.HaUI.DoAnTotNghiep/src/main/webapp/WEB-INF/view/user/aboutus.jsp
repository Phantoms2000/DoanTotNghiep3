<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>About Us</title>
<jsp:include page="/WEB-INF/view/common/variable.jsp"></jsp:include>
<!-- CSS -->
<jsp:include page="/WEB-INF/view/user/layout/css.jsp"></jsp:include>
<!-- /CSS -->
</head>
<body>
	<!-- Header -->
	<jsp:include page="/WEB-INF/view/user/layout/header.jsp"></jsp:include>
	<!-- /Header -->

	<div class="container mt-3">
		<div class="row">
			<h1 class="text-success text-center fw-bolder">Website
				CayCanhShop</h1>
		</div>
	</div>
	<div class="container mt-3">
		<div class="row">
			<h4 class="text-success text-center fw-bolder">CayCanhShop là 1
				website chuyên cung cấp cây xanh, mang không gian xanh tới cuộc
				sống của bạn</h4>
		</div>
	</div>
	<div class="container mt-3 d-flex justify-content-center">
		<div
			class="row col-xxl-8 col-xl-8 col-lg-8 col-md-8 col-sm-12 col-xs-12">
			<img src="${base }/user/images/CayCanhDep.jpg" alt=""
				style="vertical-align: middle;" width="500px;">
		</div>
	</div>
	<div class="container mt-3">Nhằm quảng bá rộng rãi đến mọi đối
		tượng khách hàng nên chúng tôi đã lựa chọn hình thức kinh doanh cửa
		tiệm và chú trọng kết hợp kinh doanh trên mạng, tạo sự tiện lợi tối đa
		cho khách hàng trên toàn quốc. Trong nhiều năm qua, CayCanhShop đang
		không ngừng nâng cao chất lượng phục vụ, tập trung tìm tòi các giống
		cây mới lạ, mang đến cho khách hàng sự thoải mái cũng như tiện lợi
		nhất trong việc mua hàng tại website</div>
	<div class="container mt-3">CayCanhShop luôn hoan nghênh Quý
		khách ghé thăm! Nếu có bất cứ thắc mắc hay ý kiến đóng góp, xin đừng
		ngừng ngại liên hệ ngay với chúng tôi.</div>
	<div class="container mt-3">
		<div class="text-center text-success">CAYCANHSHOP</div>
		<div class="text-center">Văn phòng: Số 10, đường Hồ Tùng Mậu,
			phường Mai Dịch, quận Cầu Giấy, TP. Hà Nội</div>
		<div class="text-center">Email: caycanhshop@gmail.com</div>
		<div class="text-center">Điện thoại: 096433214</div>
		<div class="text-center">Fanpage: CAYCANHSHOP</div>
	</div>
	<!-- Footer -->
	<jsp:include page="/WEB-INF/view/user/layout/footer.jsp"></jsp:include>
	<!-- /Footer -->
	<!-- JS -->
	<jsp:include page="/WEB-INF/view/user/layout/js.jsp"></jsp:include>
	<!-- /JS -->
</body>
</html>