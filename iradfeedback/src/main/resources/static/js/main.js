$(document).ready(function() {

	$('.input100').each(function() {
		$(this).on('blur', function() {
			if ($(this).val().trim() != "") {
				$(this).addClass('has-val');
			} else {
				$(this).removeClass('has-val');
			}
		})
	});

	$('.validate-form').on('submit', function() {

		var pageName = $("#selop").val();
		var fieldName = $("#finput").val();
		var userMobile = $("#minput").val();
		var remark = $('#remtext').val();
		var feedback = $('#feedback').val();
		var phoneno = /^\d{10}$/;

		var check = true;

		if (pageName == "Choose Option") {
			alert("Select Valid Page Name");
			check = false;
		} else if (fieldName.trim() == "") {
			alert("Enter Valid Field Same");
			check = false;
		} else if (!userMobile.match(phoneno)) {
			alert("Enter Valid Mobile Number");
			check = false;
		} else if (remark.trim() == "") {
			alert("Enter valid remark name");
			check = false;
		} else if (feedback == "Choose Option") {
			alert("Select Valid Feed Back");
			check = false;
		}

		return check;
	});

});
