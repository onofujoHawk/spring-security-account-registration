<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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

<title>Magister &raquo; Create an account</title>

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
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body class="theme-invert">
	<section class="form-section">
		<div class="container">
			<div class="row">
				<div
					class="col-md-10 col-lg-10 col-md-offset-1 col-lg-offset-1 text-center">
					<form:form method="POST" modelAttribute="userForm"
						class="form-signin">
						<h2 class="subtitle form-signin-heading">Create your account</h2>
						<spring:bind path="username">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:input type="text" path="username" class="form-control"
									placeholder="Username" autofocus="true"></form:input>
								<form:errors path="username"></form:errors>
							</div>
						</spring:bind>

						<spring:bind path="password">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:input type="password" path="password" class="form-control"
									placeholder="Password"></form:input>
								<form:errors path="password"></form:errors>
							</div>
						</spring:bind>

						<spring:bind path="confermaPassword">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:input type="password" path="confermaPassword"
									class="form-control" placeholder="Confirm your password"></form:input>
								<form:errors path="confermaPassword"></form:errors>
							</div>
						</spring:bind>

						<button class="btn btn-default btn-lg btn-block login-button"
							type="submit">Submit</button>
					</form:form>
				</div>
			</div>
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