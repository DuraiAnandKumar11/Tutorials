$(document).ready(function() {
	$("#toDate").change(function() {
		alert("TESTING");
		event.preventDefault();
		var fromDate = document.getElementById("fromDate").value;
	    var toDate = document.getElementById("toDate").value;
	    ajaxFunction(fromDate,toDate);
	});
	function ajaxFunction(a,b){
		alert(b);
	    $.ajax({
	        type: "POST",
	        contentType: "application/json",
	        url: "/country",
	        dataType: 'json',
	        cache: false,
	        timeout: 600000,
	        success: function () {           
	            console.log("SUCCESS ");
	        },
	        error: function (e) {
	            console.log("ERROR : ", e);
 	        }
	    });

	}
});
/* $(".filterhide").hide(); */
// $('#filterMobileNumber').click(function() {
// event.PreventDefault();
// ajaxPost();
// });
// function ajaxPost(){
// var fromDate = document.getElementById("fromDate").value;
// var toDate = document.getElementById("toDate").value;
// var name = "karthi";
// $.ajax({
// type : "POST",
// contentType : "application/json",
// url : "admin",
// data : JSON.stringify(fromDate),
// dataType :'json',
// success : function(result){
// if(result.status == "sucess"){
// alert("Success");
// } else {
// alert("not");
// }
// console.log(result);
// },
// error : function(e) {
// alert("Error!")
// console.log("ERROR:",e);
// }
// })
// }
//	 
// });
