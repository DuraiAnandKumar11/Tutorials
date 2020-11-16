<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Insert title here</title>
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
	<div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
		<div class="wrapper wrapper--w790">
			<div class="card card-5">
				<div class="card-heading">
					<h2 class="title">Report</h2>
				</div>
				<h4 style="text-align: center; color: red;">${message}</h4>
				<div class="card-body">
					<form:form method="POST">
						<div class="form-row">
							<div class="name">Select Date</div>
							<div>
								<p>From</p>
								<input type="date" name="fromDate" id="fromDate">
							</div>
							<div>
								<p>To</p>
								<input type="date" name="toDate" id="toDate">
							</div>
							<div>
								<button class="btn1 btn--radius-2 btn--green"
									name="filterMobileNumber" id="filterMobileNumber" type="button">filter</button>
							</div>
						</div>

						<div class="form-row filterhide">
							<div class="name">
								State<span style="color: red;">*</span>
							</div>
							<div>
								<select id="mobilenumber" class="input input--style-5"
									name="mobilenumber">
									<option>Choose Option</option>
									<option>TAMIL NADU</option>
									<option>KARNATAKA</option>
									<option>MAHARASHTRA</option>
									<option>MADHYA PRADESH</option>
									<option>RAJASTHAN</option>
									<option>UTTAR PRADESH</option>
								</select>
							</div>
							<div class="demo"></div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
	<!-- Jquery JS-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<!-- Vendor JS-->
	<script src="vendor/select2/select2.min.js"></script>
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
	<script src="js/reply.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</body>
</html>