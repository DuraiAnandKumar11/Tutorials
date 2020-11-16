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
<title>iRAD REGISTRATION</title>

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
    <c:when test="${flag == 0}">  
      	<div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
		<div class="wrapper wrapper--w790">
			<div class="card card-5">
				<div class="card-heading">
					<h2 class="title">iRAD REGISTRATION</h2>
				</div>
				<h4 style="text-align: center; color: red;">${message}</h4>
				<div class="card-body">
					<form:form method="POST" action="registration"
						modelAttribute="registration" class="form-signin validations">
						<div class="form-row">
							<div class="name">
								State<span style="color: red;">*</span>
							</div>
							<div>
								<select id="state" class="input input--style-5" name="UserState" required="required">
									<option>Choose Option</option>
									<option>TAMIL NADU</option>
									<option>KARNATAKA</option>
									<option>MAHARASHTRA</option>
									<option>MADHYA PRADESH</option>
									<option>RAJASTHAN</option>
									<option>UTTAR PRADESH</option>
								</select>
							</div>
							<!-- <div class="value">
								<div class="input-group">
									<input id="state" class="input--style-5" type="text"
										name="UserState" placeholder="state">
								</div>
							</div> -->
						</div>
						<!-- <div class="form-row">
							<div class="name">
								State code<span style="color: red;">*</span>
							</div>
							<div class="value">
								<div class="input-group">
									<input id="statecode" class="input--style-5" type="text"
										name="UserStateCode" placeholder="statecode">
								</div>
							</div>
						</div> -->
						<div class="form-row">
							<div class="name">
								Department<span style="color: red;">*</span>
							</div>
							<div>
								<select id="department" class="input input--style-5" required="required"
									name="UserDept">
									<option>Choose Option</option>
									<option>Police</option>
									<option>Transport</option>
									<option>Highways</option>
								</select>
							</div>
							<!-- <div class="value">
								<div class="input-group">
									<input id="department" class="input--style-5" type="text"
										name="UserDept" placeholder="department">
								</div>
							</div> -->
						</div>
						<div class="form-row">
							<div class="name">
								Name of the Officer<span style="color: red;">*</span>
							</div>
							<div class="value">
								<div class="input-group">
									<input id="fullname" class="input--style-5" type="text"
										name="UserName" placeholder=" Name of the Officer" required="required">
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">
								Designation<span style="color: red;">*</span>
							</div>
							<div class="value">
								<div class="input-group">
									<input id="designation" class="input--style-5" type="text"
										name="UserDesignation" placeholder="Designation" required="required">
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">
								Address<span style="color: red;">*</span>
							</div>
							<div class="value">
								<div class="input-group">
									<input id="location" class="input--style-5" name="UserLocation"
										placeholder="Address" required="required">
								</div>
							</div>
						</div>

						<div class="form-row">
							<div class="name">
								Email Address<span style="color: red;">*</span>
							</div>
							<div class="value">
								<div class="input-group">
									<input id="email" class="input--style-5" type="email"
										name="UserEmail" placeholder="Email Address" required="required">
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">
								Mobile Number<span style="color: red;">*</span>
							</div>
							<div class="value">
								<div class="input-group">
									<input id="number" class="input--style-5" type="tel"
										name="UserMobile" placeholder="Mobile Number" maxlength="10" min="10"
										onkeypress="return isNumberKey(event)" required="required">
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">
								Password<span style="color: red;">*</span>
							</div>
							<div class="value">
								<div class="input-group">
									<input id="password" class="input--style-5" type="password"
										name="UserPassword" placeholder="Password" required="required">
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">
								Re-enter Password<span style="color: red;">*</span>
							</div>
							<div class="value">
								<div class="input-group">
									<input id="rpassword" class="input--style-5" type="password"
										name="UserRePassword" placeholder="Re-enter Password" required="required">
								</div>
							</div>
						</div>
						<div style="text-align: center;">
							<button class="btn btn--radius-2 btn--green" type="submit">Register</button>
						</div>
						
					</form:form>
				</div>
			</div>
		</div>
	</div>
    </c:when>  
     <c:when test="${flag1 == 1}">  
         <script>
       alert("Registered Successfully"); 
       window.location = "login";
       </script> 
    </c:when>   
    <c:otherwise>  
       <script>
       alert("This mobile number already exists");
       window.location = "registration";
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
	<script src="js/formreg.js"></script>
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