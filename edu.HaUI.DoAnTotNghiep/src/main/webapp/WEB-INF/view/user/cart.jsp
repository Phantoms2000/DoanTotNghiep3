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
							<th scope="col">Tên sản phẩm</th>
							<th scope="col">Giá</th>
							<th scope="col">Số lượng</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${cart.cartItems }" var="cartItem">
							<tr>
								<td>${cartItem.productName }</td>
								<td>${cartItem.priceUnit }</td>
								<td>${cartItem.quality }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<div class="row mt-1">
			<form action="${base }/cart/finish" method="post">
				<div class="row justify-content-center">
					<div
						class="col-xxl-4 col-xl-4 col-lg-4 col-md-4 col-sm-12 col-xs-12">
						<div class="mb-3">
							<label for="CustomerName" class="form-label">Họ và tên khách hàng</label>
							<input type="text" class="form-control" id="CustomerName"
								name="customerName" placeholder="Customer Name" />
						</div>
					</div>
					<div
						class="col-xxl-4 col-xl-4 col-lg-4 col-md-4 col-sm-12 col-xs-12">
						<div class="mb-3">
							<label for="CustomerAddress" class="form-label">Địa chỉ khách hàng</label> 
							<input type="text" class="form-control" id="CustomerAddress"
								name="customerAddress" placeholder="Customer Address" />
						</div>
					</div>
				</div>
				<div class="row justify-content-center">
					<div
						class="col-xxl-4 col-xl-4 col-lg-4 col-md-4 col-sm-12 col-xs-12">
						<div class="mb-3">
							<label for="CustomerPhone" class="form-label">Số điện thoại khách hàng</label> 
							<input type="text" class="form-control" id="CustomerPhone" name="customerPhone"
								placeholder="Customer Phone Number" />
						</div>
					</div>
					<div
						class="col-xxl-4 col-xl-4 col-lg-4 col-md-4 col-sm-12 col-xs-12">
						<div class="mb-3">
							<label for="CustomerEmail" class="form-label">Email khách hàng</label>
							<input type="email" class="form-control" id="CustomerEmail"
								name="customerEmail" aria-describedby="emailHelp" placeholder="Customer Email" />
						</div>
					</div>
				</div>
				<c:if test="${not empty alert }">
					<div class="row justify-content-center">
						<div
							class="col-xxl-8 col-xl-8 col-lg-8 col-md-8 col-sm-12 col-xs-12">
							<div class="alert alert-success" role="alert">
								${alert}</div>
						</div>
					</div>
				</c:if>
				<div class="row justify-content-center">
					<div class="col-xxl-1 col-xl-1 col-lg-1 col-md-1 col-sm-1 col-xs-1">
						<button type="submit" class="btn btn-success"
							onclick="Notification();">Mua</button>
					</div>
				</div>
			</form>
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