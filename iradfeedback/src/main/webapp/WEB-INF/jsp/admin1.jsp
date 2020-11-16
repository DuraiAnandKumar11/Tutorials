<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
Changed the files
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link href="css/registration.css" rel="stylesheet" media="all">
</head>

<body>

<nav class="navbar navbar-inverse" style="background-color: #e3f2fd;">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">Page 1</a></li>
      <li><a href="#">Page 2</a></li>
      <li><a href="#">Page 3</a></li>
    </ul>
  </div>
</nav>
  
<div class="container">
 <div class="form-row">
 <div class="name">Select Date</div>
    <div><p>From </p><input type="date" id="asd" name="birthday"></div>
 </div>
 <div><p> To </p><input type="date" id="wow" name="birthday"></div>
  <div class="form-row">
    <div class="name">Select Feedback<span style="color: red;">*</span></div>
	<div>
	  <select id="state" class="input input--style-5" name="UserState">
		<option>Choose Option</option>
		<option>TAMIL NADU</option>
		<option>KARNATAKA</option>
		<option>MAHARASHTRA</option>
		<option>MADHYA PRADESH</option>
		<option>RAJASTHAN</option>
		<option>UTTAR PRADESH</option>
	  </select>
	</div>
  </div>
  
 
</div>
	<!-- Jquery JS-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<!-- Vendor JS-->
	<script src="vendor/select2/select2.min.js"></script>
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
</body>
</html>
