<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giao Hàng</title>
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
        <div class="row">
            <h1 class="text-success text-center fw-bolder">CHÍNH SÁCH GIAO HÀNG</h1>
        </div>
    </div>
    <div class="container mt-3">
        Đơn hàng dưới 2.000.000 chúng tôi vận chuyển hàng theo phương thức giao nhanh qua grab hoặc nhân viên giao hàng tính phí theo phí giao hàng của grab.<br/>
        Quý khách thanh toán online phương thức giao hàng grab. gia hàng đơn giá từ 100.000 - dưới 2.000.0000 VNĐ.<br/> 
        Quý khách thanh toán khi nhận hàng thanh toán giao hàng theo grab đối với đơn hàng dưới 500.000 VNĐ.
    </div>
    <!-- Footer -->
    <jsp:include page="/WEB-INF/view/user/layout/footer.jsp"></jsp:include>
    <!-- /Footer -->
    <!-- JS -->
    <jsp:include page="/WEB-INF/view/user/layout/js.jsp"></jsp:include>
    <!-- /JS -->
</body>
</html>