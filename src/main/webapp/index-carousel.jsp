<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="Onofrio Falco">

<title>Magister &raquo; Main page</title>

<link rel="shortcut icon"
	href="${contextPath}/resources/images/gt_favicon.png">

<!-- Bootstrap itself -->
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">

<!-- Custom styles -->
<%-- <link rel="stylesheet" href="${contextPath}/resources/css/magister.css">
<link href="${contextPath}/resources/css/common.css" rel="stylesheet"> --%>
<link href="${contextPath}/resources/css/main.css" rel="stylesheet">

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
<body class="theme-invert">
	<nav class="navbar navbar-default navbar-findcond navbar-fixed-top"
		role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#NavMagister">
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button>
				<a class="brand-logo navbar-brand">Magister</a>
			</div>
			<div class="collapse navbar-collapse" id="NavMagister">
				<ul class="nav navbar-nav navbar-right">
					<li class=""><a href="${contextPath}/index-default.jsp"><span class="fa fa-home fa-2x"></span></a></li>
					<li class=""><a href="${contextPath}/login"><span class="fa fa-sign-in fa-2x"></span></a></li>
					<li class=""><a href="${contextPath}/registration"><span class="fa fa-users fa-2x"></span></a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container fill">
		<div id="MyCarousel" class="carousel slide">
			<ol class="carousel-indicators">
				<li data-target="#MyCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#MyCarousel" data-slide-to="1"></li>
				<li data-target="#MyCarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="active item">
					<div class="fill"
						style="background-image: url('./resources/images/body2.jpg');">
						<div class="container">
							<div class="carousel-caption">
								<h1>Homepage</h1>
								<p>Homepage Magister.</p>
								<p>
									<a class="btn btn-lg btn-default"
										href="${contextPath}/index-default.jsp" role="button">Enter
										&raquo;</a>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="fill"
						style="background-image: url('./resources/images/body4.jpg');">
						<div class="container">
							<div class="carousel-caption">
								<h1>Register</h1>
								<p>Register now to enter into your private area.</p>
								<p>
									<a class="btn btn-lg btn-default"
										href="${contextPath}/registration" role="button">Create
										your Account &raquo;</a>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="fill"
						style="background-image: url('./resources/images/body1.jpg');">
						<div class="container">
							<div class="carousel-caption">
								<h1>Login</h1>
								<p>Login now to enter into your private area.</p>
								<p>
									<a class="btn btn-lg btn-default" href="${contextPath}/login"
										role="button">Login Now &raquo;</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="pull-center">
			<a class="carousel-control left" href="#MyCarousel" data-slide="prev"><span
				class="icon-prev"></span></a> <a class="carousel-control right"
				href="#MyCarousel" data-slide="next"><span class="icon-next"></span></a>
		</div>
	</div>

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