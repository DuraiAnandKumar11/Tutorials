$(document).ready(function() {

$('.validations').on('submit', function() {
	var fullName = $("#fullname").val();
	var desgnation = $("#desgnation").val();
	var department = $("#department").val();
	var location = $("#location").val();
	var state = $("#state").val();
	var statecode = $("#statecode").val();
	var email = $("#email").val();
	var number = $("#number").val();
	var password = $("#password").val();
	var repassword = $("#rpassword").val();
	var phoneno = /^\d{10}$/;
	var check = true;
	var emailvalid = /^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/;
	
	if (fullName.trim() == "") {
		alert("Enter Valid Full Name");
		check = false;
		
	}else if (desgnation.trim() == "") {
		alert("Enter Valid Desgnation");
		check = false;
	}else if (department == "Choose Option") {
		alert("Enter Valid Department");
		check = false;
	}else if (location.trim() == "") {
		alert("Enter Valid Location");
		check = false;
	}else if (state == "Choose Option") {
		alert("Enter Valid State");
		check = false;
	}else if (!email.match(emailvalid)) {
		alert("Enter Valid Email");
		check = false;
	}else if (!number.match(phoneno)) {
		alert("Enter Valid Mobile Number");
		check = false;
	}else if (password.trim() == "") {
		alert("Enter Valid Password");
		check = false;
	}else if (password != repassword) {
		alert("MisMatch Your Password. Please Enter Again");
		check = false;
	}
	
	return check;
	});
});
