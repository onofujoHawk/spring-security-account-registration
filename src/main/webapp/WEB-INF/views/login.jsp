<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="Sergey Pozhilov (GetTemplate.com)">

<title>Magister &raquo; Login form</title>

<link rel="shortcut icon"
	href="${contextPath}/resources/images/gt_favicon.png">

<!-- Bootstrap itself -->
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">

<!-- Custom styles -->
<link rel="stylesheet" href="${contextPath}/resources/css/magister.css">
<link href="${contextPath}/resources/css/common.css" rel="stylesheet">

<!-- Fonts -->
<link
	href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href='http://fonts.googleapis.com/css?family=Wire+One'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/css/font-awesome.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/css/font-awesome.min.css">
</head>

<!-- use "theme-invert" class on bright backgrounds, also try "text-shadows" class -->
<body class="theme-invert">
	<section class="form-section">
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-lg-10 col-md-offset-1 col-lg-offset-1 text-center">
					<form method="POST" action="${contextPath}/login"
						class="form-signin">
						<h2 class="form-heading title">Login</h2>
						<div class="form-group ${error != null ? 'has-error' : ''}">
							<span>${message}</span> <input name="username" type="text"
								class="form-control" placeholder="Username" autofocus /> <input
								name="password" type="password" class="form-control"
								placeholder="Password" /> <span>${error}</span> <input
								type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />

							<button class="btn btn-default btn-lg btn-block login-button"
								type="submit">Login</button>
							<h4 class="text-center">
								<a href="${contextPath}/registration">Create an account</a>
							</h4>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script
		src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
	<script src="${contextPath}/resources/js/modernizr.custom.72241.js"></script>
	<!-- Custom template scripts -->
	<script src="${contextPath}/resources/js/magister.js"></script>
	<script src="${contextPath}/resources/js/carousel.js"></script>
</body>
</html>