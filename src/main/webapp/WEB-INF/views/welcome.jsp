<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="Onofrio Falco">

<title>Magister &raquo; Welcome</title>

<link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<%-- <link href="${contextPath}/resources/css/common.css" rel="stylesheet"> --%>
<!-- Custom styles -->
<link rel="stylesheet" href="${contextPath}/resources/css/magister.css">

<!-- Fonts -->
<link
	href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href='http://fonts.googleapis.com/css?family=Wire+One'
	rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/font-awesome.min.css">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="theme-invert">
	<section class="section" id="head">
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-lg-10 col-md-offset-1 col-lg-offset-1 text-center">
					<c:if test="${pageContext.request.userPrincipal.name != null}">
						<form id="logoutForm" method="POST" action="${contextPath}/logout">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
						</form>
						<h1 class="title">
							Welcome ${pageContext.request.userPrincipal.name} 
						</h1>
						<p><a class="btn btn-default btn-lg" onclick="document.forms['logoutForm'].submit()">Logout</a></p>
					</c:if>
				</div>
				<!-- /col -->
			</div>
			<!-- /row -->
		</div>
	</section>

	<!-- /container -->
	<%-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script> --%>

	<!-- mio container -->
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