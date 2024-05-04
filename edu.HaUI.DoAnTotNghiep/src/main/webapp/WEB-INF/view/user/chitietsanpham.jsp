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
				Sở hữu phần thân cây dài và mềm mại, đi kèm với nhiều lá kép nhỏ
				xanh bao quanh, dương xỉ là một loại cây dễ sống và phát triển.
				Chúng thường được trồng nhiều trong không gian nhà ở và vườn tược.
				Cây dương xỉ có tên khoa học là Polypodiopsida, ngoài ra còn được
				biết đến với nhiều tên gọi khác nhau như rau dớn, thái quyết, cẩu
				tích, v.v.<br /> Dương xỉ có thể sống trong môi trường khô nắng, ẩm
				ướt hay bóng râm. Đặc biệt, chúng còn có khả năng giảm thiểu bức xạ
				điện từ phát ra từ các thiết bị điện tử trong nhà, giúp cải thiện
				không khí và làm giảm căng thẳng cho gia chủ
			</div>
			<h4 class="text-success fw-bolder mt-3">2. Ý nghĩa</h4>
			<div>
				Theo phong thủy, cây dương xỉ được coi là một trong những loại cây
				mang lại may mắn khi trồng trong nhà. Người đời tin rằng chúng có
				khả năng tăng cường năng lượng tích cực và giảm căng thẳng trong
				không khí. Cây dương xỉ cũng cho phép tài lộc và may mắn đến với gia
				chủ.<br /> Ngoài ra, cây dương xỉ còn được gắn liền với một truyền
				thuyết về "9 đồng xu". Theo truyền thuyết, nếu như có 9 đồng xu được
				chôn dưới gốc cây dương xỉ thì sau một thời gian, 9 đồng xu đó sẽ
				mang lại nhiều tài lộc cho người chủ.<br /> Sở dĩ có truyền thuyết
				này là bởi vì trong quan niệm xưa, đồng xu mang theo Thiên khí của
				trời đất, khi qua tay người chủ, nó được cộng hưởng thêm Nhân khí,
				và khi được người chủ đó đem chôn dưới gốc cây dương xỉ thì nó sẽ có
				thêm Địa khí. Với sự tụ hội của Thiên - Địa - Nhân, 9 đồng xu được
				chôn dưới gốc cây dương xỉ sẽ được coi là hòa hợp phong thủy và vì
				vậy, nó thu hút nhiều may mắn và tài lộc cho chủ nhân.<br /> Ngoài
				ra, cây dương xỉ được coi là một trong những loại cây có khả năng
				lọc không khí tốt nhất, và giúp cải thiện chất lượng không khí trong
				nhà. Nó cũng có thể giúp giảm căng thẳng và mang lại cảm giác thoải
				mái cho những thành viên trong gia đình.
			</div>
			<h4 class="text-success fw-bolder mt-3">3. Tác dụng</h4>
			<div>
				<ul>
					<li><strong>Thanh lọc không khí:</strong> Có thể bạn không
						biết, cây dương xỉ là một trong số những loài cây thanh lọc không
						khí tốt nhất. Không giống như các loại cây cảnh khác, cây dương xỉ
						có thể thanh lọc được cả những chất độc hại trong không khí như
						xylene, thủy ngân, asen, toluene,...</li>
					<li><strong>Thuốc trong y học:</strong>Thân của cây dương xỉ
						là một loại thảo dược quý trong việc điều trị các bệnh ngoài da
						như vảy nến, viêm da,...Ngoài ra tác dụng cầm máu của cây dương xỉ
						cũng được đánh giá rất cao.</li>
				</ul>
			</div>
			<h4 class="text-success fw-bolder mt-3">4. Cách trồng</h4>
			<div>
				Để trồng cây dương xỉ trong chậu, người dùng cần làm theo các bước
				sau:
				<ul>
					<li><strong>Bước 1: </strong>Chọn một chậu cây đủ lớn và rửa
						sạch.</li>
					<li><strong>Bước 2: </strong>Nếu chậu chưa có lỗ thoát nước,
						người dùng có thể cẩn thận dùng dao hoặc kéo để cắt những lỗ nhỏ
						dưới đáy chậu.</li>
					<li><strong>Bước 3: </strong>Đổ đất vào chậu và tưới ướt đất
						trước khi trồng cây.</li>
					<li><strong>Bước 4: </strong>Đặt cây dương xỉ vào chậu và đắp
						thêm một lớp đất lên trên để đảm bảo rễ cây được phủ đầy.</li>
				</ul>
			</div>
			<h4 class="text-success fw-bolder mt-3">5. Cách chăm sóc</h4>
			<div>
				Cây dương xỉ là loại cây dễ trồng và dễ chăm sóc. Sau khi trồng, cây
				chỉ cần được tưới nước một lần mỗi tuần để đảm bảo độ xanh tươi. Tuy
				nhiên, nếu muốn cây phát triển tốt hơn, gia chủ có thể bón phân định
				kỳ cho cây sau mỗi 3 tháng.<br /> Lưu ý, khi lá cây dương xỉ khô,
				bạn cần cắt bỏ lá đó để giữ cho cây luôn xanh tươi và đẹp.
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