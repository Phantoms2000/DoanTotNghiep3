<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thanh Toán</title>
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
            <h1 class="text-success text-center fw-bolder">CHÍNH SÁCH THANH TOÁN</h1>
        </div>
    </div>
    <div class="container mt-3">
        <h2 class="text-success fw-bold">Có 02 cách để Quý Khách hàng thanh toán tiền mặt cho chúng tôi:</h2>
    </div>
    <div class="container mt-2">
        <h3 class="text-success fw-bold">Cách 1</h3>
        <div>
            CayCanhShop sẽ trực tiếp cử nhân viên đến nơi thu tiền. Vui lòng cho chúng tôi thông tin của Quý khách:
        </div>
        <ul>
            <li>Thông tin người trả tiền, số điện thoại</li>
            <li>Thời gian nhận tiền</li>
            <li>Địa chỉ thu tiền</li>
        </ul>
        <div>
            Lưu ý: Nhân viên thu tiền của Công ty chúng tôi phải xuất trình đầy đủ chứng từ: 
            Giấy giới thiệu, phiếu thu, hóa đơn (nếu có) thì Quý khách mới thanh toán!
        </div>
    </div>
    <div class="container mt-2">
        <h3 class="text-success fw-bold">Cách 2</h3>
        <div>
            Quý khách đến trực tiếp văn phòng công ty chúng tôi: 
            Số 10, đường Hồ Tùng Mậu, phường Mai Dịch, quận Cầu Giấy, TP. Hà Nội.
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