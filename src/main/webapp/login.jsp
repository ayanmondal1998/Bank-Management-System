<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Log in with your account</title>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login page</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />
	<style>
	.container{
	background-color:#98FB98;
	padding-top:50px;
	padding-bottom:50px;
	}
	.form-heading{
	text-align:center;
	padding-top:50px;
	padding-bottom:50px;
	}
	
	</style>
</head>
</head>

<body>

	<div class="container">
		<form method="POST" action="${contextPath}/login" class="form-signin">
		<h1 class="form-heading">Bank Management System</h1>

			<div class="form-group ${error != null ? 'has-error' : ''}">
				<span>${message}</span> <input name="username" type="text"
					class="form-control" placeholder="Username" autofocus="true" /> <input
					name="password" type="password" class="form-control"
					placeholder="Password" /> <span>${error}</span> <input
					type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

				<button class="btn btn-lg btn-primary btn-block" type="submit">Log
					In</button>
				<h4 class="text-center">
					<a href="${contextPath}/registration">Create a user account</a>
				</h4>
				<h4 class="text-center">
					<a href="${contextPath}/adminregistration">Create an Admin
						account</a>
				</h4>
			</div>
		</form>
	</div>

</body>
</html>