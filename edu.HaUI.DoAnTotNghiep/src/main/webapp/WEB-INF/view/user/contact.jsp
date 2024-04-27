<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Liên hệ</title>
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
		<h1 class="text-center text-success fw-bolder">LIÊN HỆ</h1>
	</div>
	<div class="container mt-3">
		<sf:form action="${base }/contact" method="post"
			modelAttribute="contact">
			<div class="row justify-content-center">
				<div
					class="col-xxl-4 col-xl-4 col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="mb-3">
						<label for="exampleInputEmail1" class="form-label">Họ đệm</label>
						<sf:input path="fname" type="text" class="form-control"
							id="formGroupInput1" name="fname" placeholder="Fitst Name" />
					</div>
				</div>
				<div
					class="col-xxl-4 col-xl-4 col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="mb-3">
						<label for="exampleInputEmail1" class="form-label">Tên</label>
						<sf:input path="lname" type="text" class="form-control"
							id="formGroupInput2" name="lname" placeholder="Last Name" />
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div
					class="col-xxl-4 col-xl-4 col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="mb-3">
						<label for="exampleInputEmail1" class="form-label">Số điện
							thoại</label>
						<sf:input path="phoneNumber" type="text" class="form-control"
							id="formGroupInput3" name="phoneNumber" placeholder="Phone Number" />
					</div>
				</div>
				<div
					class="col-xxl-4 col-xl-4 col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="mb-3">
						<label for="exampleInputEmail1" class="form-label">Email</label>
						<sf:input path="email" type="email" class="form-control"
							id="InputEmail" name="email" aria-describedby="emailHelp"
							placeholder="Email" />
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div
					class="col-xxl-8 col-xl-8 col-lg-8 col-md-8 col-sm-12 col-xs-12">
					<div class="mb-3">
						<label for="exampleFormControlTextarea1" class="form-label">Message</label>
						<sf:textarea path="message" class="form-control"
							id="FormControlTextarea" name="message" rows="7"
							placeholder="Your message"></sf:textarea>
					</div>
				</div>
			</div>
			<c:if test="${not empty notification }">
				<div class="row justify-content-center">
					<div
						class="col-xxl-8 col-xl-8 col-lg-8 col-md-8 col-sm-12 col-xs-12">
						<div class="alert alert-success" role="alert">
							${notification}</div>
					</div>
				</div>
			</c:if>
			<div class="row justify-content-center">
				<div class="col-xxl-1 col-xl-1 col-lg-1 col-md-1 col-sm-1 col-xs-1">
					<button type="submit" class="btn btn-success"
						onclick="sendMessage();">Gửi</button>
				</div>
			</div>
		</sf:form>
	</div>
	<!-- Footer -->
	<jsp:include page="/WEB-INF/view/user/layout/footer.jsp"></jsp:include>
	<!-- /Footer -->
	<!-- JS -->
	<jsp:include page="/WEB-INF/view/user/layout/js.jsp"></jsp:include>
	<!-- /JS -->
</body>
</html>