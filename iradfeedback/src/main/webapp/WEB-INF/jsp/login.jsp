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
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">

<title>Log in with your account</title>
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/iconic/css/material-design-iconic-font.min.css">
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
<link rel="stylesheet" type="text/css" href="css/loginutil.css">
<link rel="stylesheet" type="text/css" href="css/loginmain.css">
<!--===============================================================================================-->
</head>

<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div>
					
					 <img  class="navbar-brand"
						src="images/icons/small_logo.png" alt="logo">
					
				</div>
					
							
				<form method="POST" action="${contextPath}/login"
					class="login100-form validate-form">

					<span class="login100-form-title p-b-26"> iRAD Feedback </span> <span
						class="login100-form-title p-b-26">Login</span>

					<div class="form-group ${error != null ? 'has-error' : ''}">
						<span style="color: red;">${message}</span>
						<div class="wrap-input100 validate-input">
							<input name="username" type="tel" class="form-control input100"
								placeholder="Mobile Number" maxlength="10" min="10"
								required="required" onkeypress="return isNumberKey(event)" /> <span class="focus-input100"></span>
						</div>
						<div class="wrap-input100 validate-input">
							<input name="password" type="password"
								class="form-control input100" placeholder="Password"
								required="required" /> <span class="focus-input100"></span>
						</div>
						<span>${error}</span> <input type="hidden"
							name="${_csrf.parameterName}" value="${_csrf.token}" />
						<div class="container-login100-form-btn">
							<div class="wrap-login100-form-btn">
								<div class="login100-form-bgbtn"></div>
								<button class="login100-form-btn">Login</button>
							</div>
						</div>
						<div class="container-login100-form-btn">
							<a href="registration" target=""><span
								style="margin: 40px; font-weight: bolder;">New User</span></a> <a
								href="forgetform" target=""><span
								style="font-weight: bolder;">Forgot Password</span></a>
						</div>
<!-- 						if(request.getAttribute("flag")== 1){
<script>alert("hi")</script>
} -->
					</div>
				</form>
			</div>
		</div>
	</div>
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