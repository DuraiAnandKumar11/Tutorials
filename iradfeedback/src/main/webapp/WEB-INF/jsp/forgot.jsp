<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Title Page-->
<title>CHANGE PASSWORD</title>

<!-- Icons font CSS-->
<link href="vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">
<link href="vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<!-- Font special for pages-->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
	rel="stylesheet">

<!-- Vendor CSS-->
<link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
<link href="vendor/daterangepicker/daterangepicker.css" rel="stylesheet"
	media="all">

<!-- Main CSS-->
<link href="css/registration.css" rel="stylesheet" media="all">
</head>

<body>
<c:choose>  
    <c:when test="${passwordSavedOrNot == 0}"> 
	<div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
		<div class="wrapper wrapper--w790">
			<div class="card card-5">
				<div class="card-heading">
					<h3 class="title">CHANGE PASSWORD</h3>
				</div>
				<div class="card-body">
					<form:form method="POST" action="forgetform"
						modelAttribute="forgetform" class="form-signin restpassword">

						<div class="form-row">
							<div class="name">
								Mobile Number<span style="color: red;">*</span>
							</div>
							<div class="value">
								<div class="input-group">
									<input id="mnumber" class="input--style-5" type="tel"
										name="UserMobile" placeholder="Mobile Number" maxlength="10" min="10"
										onkeypress="return isNumberKey(event)">
								</div>
								<div>
									<h5 style="color: red; font-weight: bolder;">${message}</h5>
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">
								New Password<span style="color: red;">*</span>
							</div>
							<div class="value">
								<div class="input-group">
									<input id="forpassword" class="input--style-5" type="password"
										name="UserPassword" placeholder="New Password">
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">
								Re-enter Password<span style="color: red;">*</span>
							</div>
							<div class="value">
								<div class="input-group">
									<input id="rforpassword" class="input--style-5" type="password"
										name="UserRePassword" placeholder="Re-enter New Password">
								</div>
							</div>
						</div>
						<div style="text-align: center;">
							<button class="btn btn--radius-2 btn--green" type="submit">Change
								Password</button>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
	</c:when>
    <c:when test="${passwordSaved==2}">  
         <script>
         alert("Password Changed Sucessfully");
         window.location ="login";
       </script>
    </c:when>  
    <c:otherwise>  
       <script>
       alert("This mobile number not exists");
       window.location = "forgetform";
       </script>
    </c:otherwise>  
</c:choose>  
	<!-- Jquery JS-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<!-- Vendor JS-->
	<script src="vendor/select2/select2.min.js"></script>
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>

	<!-- Main JS-->
	<script src="js/forget.js"></script>
<script>
function isNumberKey(evt){
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    return true;
}    
</script>
</body>
</html>