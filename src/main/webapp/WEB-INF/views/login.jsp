<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
	<title>Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="icon" type="image/png" href="<c:url value="/resources/images/icon-title-bar.png" />"/>

	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" />">

	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css" />">

	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/util.css" />">
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/main.css" />">

</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="<c:url value="/resources/images/img-01.png" />" alt="IMG">
				</div>

				<form class="login100-form validate-form" method="post" action="<c:url value="/bookingroom/" />">
					<span class="login100-form-title">
						Login
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="email" placeholder="User Name" required>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="pass" placeholder="Password" required>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Login
						</button>
					</div>

				</form>
			</div>
		</div>
	</div>
	
	

	

	<script src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script>


	<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>


	<script src="<c:url value="/resources/js/tilt.jquery.min.js" />"></script>

	<script src="<c:url value="/resources/js/main.js" />"></script>

</body>
</html>