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