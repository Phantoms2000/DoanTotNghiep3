<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hoa Sen Đá</title>
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
    <div class="container mt-3">
        <div class="row">
            <h3 class="text-success fw-bolder text-decoration-underline">Hoa Sen Đá</h3>
        </div>
    </div>
    <div class="container mt-3">
        <div class="row">
            <div class="col-xxl-4 col-xl-4 col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <img src="${base }/user/images/CaySenDa2.jpg" class="img-fluid" alt="...">
            </div>
            <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12 mt-5">
                <div><h4>Mô tả ngắn</h4></div>
                <div>
                    Một loài cây mới lạ với màu sắc đẹp. cây thường có kích thước từ 6-8cm. 
                    Mọc thành bụi khi trưởng thành.
                </div>
                <div class="mt-3">
                    <div><h4>Giá: <span class="fw-bolder text-danger fs-3">70000 đồng</span></h4></div>
                </div>
                <div class="mt-3"><strong>Giá chưa gồm chậu sứ hoặc bình thủy tinh</strong></div>
                <div class="mt-3">Bảo Hành từ 7 đến 14 ngày - Tư vấn chăm sóc trọn đời</div>
                <button type="button" class="mt-3 btn btn-success">Thanh Toán</button>
            </div>
        </div>
    </div>
    <div class="container"><hr></div>
    <div class="container mt-3">
        <h3 class="text-success fw-bolder text-decoration-underline">Bài viết</h3>
    </div>
    <div class="container mt-3">
        <h4 class="text-success fw-bolder">1. Đặc điểm</h4>
        <div>
            <ul>
                <li>
                    <strong>Tên thường gọi:</strong> Cây sen đá
                </li>
                <li>
                    <strong>Tên tiếng anh:</strong> Succulent
                </li>
                <li>
                    <strong>Họ thực vật:</strong> Là dòng thực vật mọng nước (Succulent plant) thuộc chi 
                    Echeveria họ thuốc bỏng (Crassulaceae)
                </li>
                <li>
                    <strong>Sen đá rất dễ chăm sóc: </strong> bởi đây là loại cây ưa nắng, 
                    thích hợp trồng ở các vùng khô cằn.
                </li>
                <li>
                    <strong>Sen đá là giống cây mọng nước,</strong> bạn sẽ thấy các nhánh lá của nó rất 
                    tươi, căng tròn để duy trì sự sống qua những ngày hạn kéo dài.
                </li>
                <li>
                    Sen đá có khả năng sống sót cả những nơi khô cằn và lá mọc thành hình như những bông 
                    hoa nên mới được gọi là hoa sen đá.
                </li>
            </ul>
        </div>
        <h4 class="text-success fw-bolder mt-3">2. Ý nghĩa</h4>
        <div>
            Cây sen đá là biểu tượng cho ý chí kiên cường, phấn đấu vươn lên trong cuộc sống bởi sức sống 
            mãnh liệt của nó - thích nghi với mọi loại khí hậu, mọi địa hình và sống quanh năm và khi lá 
            rụng có thể nảy chồi từ đó và mọc lên cây mới.<br/>
            Ngoài ra, sen đá cũng có ý nghĩa là mang sự bình an, điềm lành đến cho gia chủ bởi lá thường 
            xếp thành hình như những bông hoa sen giống như đài sen mà Phật Bà Quan Âm hay ngồi.<br/>
            Còn đối với các bạn trẻ thì sen đá mang ý nghĩa tượng trưng cho tình bạn bền chặt, tình yêu vĩnh 
            cửu, hoặc mối quan hệ tương thân bên nhau khi hoạn nạn, cũng như những cánh lá đan vào nhau.
        </div>
        <h4 class="text-success fw-bolder mt-3">3. Tác dụng</h4>
        <div>
            Sen đá là loại cây có hình dáng và sức sống rất đặc biệt phải không nào! Bởi vậy mà lợi ích của 
            sen đá cũng đặc biệt không kém đâu nhé!<br/>
            Chúng ta có thể sử dụng sen đá để trồng làm cảnh, trưng bày: Sen đá có sức sống mãnh liệt nên 
            ít tốn công chăm sóc, được nhiều người trồng trang trí trong nhà, khách sạn hay văn phòng. 
            Hơn nữa, trồng sen đá còn mang đến mang sự bình an, điềm lành.<br/>
            Sử dụng sen đá làm quà tặng cũng rất ý nghĩa: Sen đá tượng trưng cho sự bền lâu, vĩnh cửu, 
            thích hợp để tặng cho người thân thiết với mình. Khi tặng một chậu sen đá là người tặng còn 
            muốn gửi gắm tâm ý cũng như mong ước về sự thân thiết, bất tử trong tình cảm.
        </div>
        <h4 class="text-success fw-bolder mt-3">4. Cách trồng</h4>
        <div>
            <ul>
                <li>Bước 1: Xới đất phù hợp với kích thước bầu cây.</li>
                <li>Bước 2: Đặt cây con hoặc lá mới nhú mầm xuống đất.</li>
                <li>Bước 3: Vùi đất lại, nén vừa phải đất ở xung quanh gốc cây vừa trồng.</li>
                <li>Bước 4: Tưới nước luôn cho ẩm đất và cho chậu cây vào nơi có mái che.</li>
            </ul>
        </div>
        <h4 class="text-success fw-bolder mt-3">5. Cách chăm sóc</h4>
        <div>
            <ul>
                <li>Không nên tưới nhiều, không nên tưới lên lá làm đọng nước gây thối bẹ lá</li>
                <li>Mỗi ngày cần cho cây ra nắng khoảng 6 – 8 giờ mỗi ngày</li>
                <li>Nếu muốn cây ra hoa để trang trí thì nên dừng bón phân, tưới nước làm cây cằn cỗi để ép cây ra hoa.</li>
                <li>Dùng thêm phân tan chậm hoặc phân hữu cơ vi lượng để cung cấp đầy đủ dinh dưỡng.</li>
                <li>Một năm nên thay đất cho cây một lần để cây ra rễ mới và kéo dài tuổi thọ của cây.</li>
            </ul>
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