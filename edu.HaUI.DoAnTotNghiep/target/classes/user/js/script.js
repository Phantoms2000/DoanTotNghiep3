function sendMessage() {
    var fname = document.getElementById('formGroupInput1').value;
    var lname = document.getElementById('formGroupInput2').value;
    var phoneNumber = document.getElementById('formGroupInput3').value;
    var email = document.getElementById('InputEmail').value;
    var message = document.getElementById('FormControlTextarea').value;
    if (fname == "" || lname == "" || phoneNumber == "" || email == "" || message == "") {
        alert("Bạn phải nhập đầy đủ thông tin");
    } else {
        alert("Gửi thành công!");
    }
}

function Notification() {
	var customerName = document.getElementById('CustomerName').value;
	var customerAddress = document.getElementById('CustomerAddress').value;
	var customerPhone = document.getElementById('CustomerPhone').value;
	var customerEmail = document.getElementById('CustomerEmail').value;
	if (customerName == "" || customerAddress == "" || customerPhone == "" || customerEmail == "") {
		alert("Bạn phải nhập đầy đủ thông tin");
	} else {
		alert("Mua hàng thành công");
		alert("Hàng sẽ được vận chuyển đến sau vài ngày");
	}
}