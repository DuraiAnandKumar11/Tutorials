$(document).ready(function() {

$('.restpassword').on('submit', function() {
	var mnumber = $("#mnumber").val();
	var forpassword = $("#forpassword").val();
	var reforpassword = $("#rforpassword").val();
	var phoneno = /^\d{10}$/;
	var check = true;
	var checkflag = false;
    
	if (!mnumber.match(phoneno)) {
		alert("Enter Valid Mobile Number");
		check = false;
	}else if (forpassword.trim() == "") {
		alert("Enter Valid Password");
		check = false;
	}else if(reforpassword.trim() == ""){
		alert("Enter Password again");
		check = false;
	}else if (forpassword != reforpassword) {
	
		alert("Password Mismatch. Please Enter Again");
		check = false;
	}
	return check;
	});
});
