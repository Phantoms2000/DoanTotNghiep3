<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giỏ hàng</title>
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
            <h1 class="text-center text-success fw-bolder">Giỏ hàng</h1>
        </div>
    </div>
    <div class="container mt-3">
        <div class="row">
            <div class="table-responsive-md">
                <table class="table table-bordered table-hover">
                    <thead class="bg-success text-light">
                        <tr>
                            <th scope="col">STT</th>
                            <th scope="col">Ảnh sản phẩm</th>
                            <th scope="col">Tên sản phẩm</th>
                            <th scope="col">Giá</th>
                            <th scope="col">Số lượng</th>
                            <th scope="col">Tổng tiền</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td width="200px">
                                <img src="${base }/user/images/HoaXuongRong.jpg" class="img-fluid" alt="">
                            </td>
                            <td>Hoa Xương Rồng</td>
                            <td>70000</td>
                            <td>2</td>
                            <td>140000</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>
                                <img src="${base }/user/images/CayDuongXi2.jpg" class="img-fluid" alt="">
                            </td>
                            <td>Cây Dương Xỉ</td>
                            <td>70000</td>
                            <td>2</td>
                            <td>140000</td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>
                                <img src="${base }/user/images/CayKimTien.jpg" class="img-fluid" alt="">
                            </td>
                            <td>Cây Kim Tiền</td>
                            <td>70000</td>
                            <td>2</td>
                            <td>140000</td>
                        </tr>
                    </tbody>
                </table>
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