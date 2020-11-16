<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="adminNum" value="${pageContext.request.userPrincipal.name}" />
<c:choose>
	<c:when
		test="${adminNum eq 9445294430 or adminNum eq 9444993284 or adminNum eq 9364167504}">
		<jsp:include page="feedbackreport.jsp" />
	</c:when>
<c:otherwise>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>USER FEED BACK PAGE</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<style type="text/css">
.logo-css-1, .logo-css {
	display: block;
	margin-left: auto;
	margin-right: auto;
	width: 20%;
}

.logo-css {
	padding-top: 20px;
}
</style>
</head>

<body>
	<c:choose>
		<c:when test="${feedback == 0}">
			<div class="container">
				<c:if test="${pageContext.request.userPrincipal.name != null}">
					<form id="logoutForm" method="POST" action="${contextPath}/logout">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
					</form>
				</c:if>
			</div>
			<div style="float: right;">
				<div class="navbar-nav">
					<button class="nav-item nav-link"
						onclick="document.forms['logoutForm'].submit()">Logout</button>
				</div>
			</div>
			<div class="container-contact100">
				<div class="wrap-contact100">
					<form:form method="POST" action="getfeedback"
						modelAttribute="getfeedback" class="contact100-form validate-form">
						<div>
							<img id="branding" src="images/logo/road_logo.jpg" alt="Logo"
								class="logo-css-1">
						</div>
						<div>
							<span class="contact100-form-title" style="padding-top: 9px;">iRAD
								Feedback Form</span>
						</div>
						<div class="wrap-input100 input100-select">
							<span class="label-input100">Page Name<span
								style="color: red;">*</span></span>
							<div>
								<select id="selop" class="selection-2" name="pageName">
									<option>Choose Option</option>
									<option>Location Details</option>
									<option>General Information</option>
									<option>Media</option>
									<option>Vehicle Details</option>
									<option>Driver Details</option>
									<option>Passenger</option>
									<option>Pedestrian</option>
								</select>
							</div>
							<span class="focus-input100"></span>
						</div>

						<div class="wrap-input100 validate-input"
							data-validate="Name is required">
							<span class="label-input100">Field Name<span
								style="color: red;">*</span></span> <input id="finput" class="input100"
								type="text" name="fieldName" placeholder="Enter your Field Name">
							<span class="focus-input100"></span>
						</div>


						<input id="minput" class="input100" type="tel" name="userMobile"
							placeholder="Enter your Mobile Number" maxlength="10" min="10"
							value="${pageContext.request.userPrincipal.name}" hidden="true">


						<div class="wrap-input100 input100-select">
							<span class="label-input100">Feedback Type<span
								style="color: red;">*</span></span>
							<div>
								<select id="feedback" class="selection-2" name="feedBackType"
									required="required">
									<option>Choose Option</option>
									<option>Clarification</option>
									<option>Error</option>
									<option>Suggestion</option>
								</select>
							</div>
							<span class="focus-input100"></span>
						</div>

						<div class="wrap-input100 validate-input"
							data-validate="Message is required">
							<span class="label-input100">Remark<span
								style="color: red;">*</span></span>
							<textarea id="remtext" class="input100" name="remark"
								placeholder="Your remark here..."></textarea>
							<span class="focus-input100"></span>
						</div>

						<div class="container-contact100-form-btn">
							<div class="wrap-contact100-form-btn">
								<div class="contact100-form-bgbtn"></div>
								<button class="contact100-form-btn">
									<span
										style="font-weight: bolder; color: black; font-size: 25px; margin-top: 24px">
										Submit <i class="fa fa-long-arrow-right m-l-7"
										aria-hidden="true"></i>
									</span>
								</button>
							</div>
						</div>
					</form:form>
					<div>

						<img src="images/logo/nic_logo.png" alt="Logo" class="logo-css"
							style="float: left"> <img src="images/logo/logo-nic.png"
							alt="Logo" class="logo-css" style="float: right"> <a
							href="#" id="branding"> </a> <a href="#" id="branding"> </a>
					</div>
				</div>
			</div>



			<div id="dropDownSelect1"></div>
		</c:when>
		<c:when test="${feedbackReceived == 1}">
			<script type="text/javascript">
				alert("Feedback Received");
				window.location = "welcome";
			</script>
		</c:when>
		<c:otherwise>
		</c:otherwise>
	</c:choose>

	<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!-- <script src="vendor/js/main.js"></script> -->
	<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<script>
		$(".selection-2").select2({
			minimumResultsForSearch : 20,
			dropdownParent : $('#dropDownSelect1')
		});
	</script>
	<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>

	<!-- /container -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
		</html>
	</c:otherwise>
</c:choose>