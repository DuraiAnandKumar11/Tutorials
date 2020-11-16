<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="adminNum" value="${pageContext.request.userPrincipal.name}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>iRad Feedback Report</title>
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<style type="text/css">
.bt-style {
	position: relative;
	top: 50%;
	left: 34%;
}
</style>
</head>

<body>
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
	<div class="container">
		<div class="card-deck mt-2">
			<div class="card">
				<div class="card-header" style="text-align: center;">
					<h4 class="font-weight-bold">iRad Feedback Report</h4>
				</div>
				<div class="card-body">
					<spring:url value="iradreport" var="actionURL" />
					<form:form method="post" action="${actionURL }">
						<label>Select Page Name<span>*</span></label>
						<select class="form-control" name="pageName" required="required">
							<option>Choose Option</option>
							<option>Location Details</option>
							<option>General Information</option>
							<option>Media</option>
							<option>Vehicle Details</option>
							<option>Driver Details</option>
							<option>Passenger</option>
							<option>Pedestrian</option>
						</select>
						<button type="submit" formtarget="_blank"
							class="btn btn-info bt-style" style="margin-top: 14px;">Submit</button>
					</form:form>
				</div>
			</div>
		</div>
	</div>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor/jquery/jquery.min.js"></script>
</body>
</html>