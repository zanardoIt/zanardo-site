<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>

<html>
<head>
<title>Zanardo Contabilidade ${title}</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<script src="${js}/jquery-3.3.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.js"></script>

<link href="${css}/zanardo.css" rel="stylesheet" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
</head>

<script>
	window.menu = '${title}';
</script>

<body class="font-lato blue_zanardo_light_bg">
	<div class="wrapper">
		<!-- NAVBAR -->
		<nav
			class="navbar navbar-expand-md navbar-dark fixed-top w-inherit nav-bkg bg-shadow">
			<a class="navbar-brand col-1" href="${contextRoot}/home"> <img
				src="${images}/logos/logo_zanardo_nome.png" width="150" />
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarsExampleDefault"
				aria-controls="navbarsExampleDefault" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
		</nav>

		<!-- CONTENT -->
		<div class="content">
			<div class="col-lg-4">
				<form action="${contextRoot}/login" method="POST"
					class="form-horizontal" id="loginForm">
					<div class="form-group">
						<div class="col">
							<h5>
								<b>Acesso a área administrativa</b>
							</h5>
						</div>
					</div>
					<div class="form-group">
						<label for="username" class="col control-label">Login: </label>
						<div class="col">
							<input type="text" name="username" id="username"
								class="form-control" />
						</div>
					</div>
					<div class="form-group">
						<label for="password" class="col control-label">Senha:</label>
						<div class="col">
							<input type="text" name="password" id="password"
								class="form-control" />
						</div>
					</div>
					<div class="form-group">
						<div class="col">
							<input type="submit" value="Login" class="btn btn-primary" /> 
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						</div>
					</div>
					<div class="form-group">
						<c:if test="${not empty error }">
							<div class="col">
								<div class="alert alert-danger">${error}</div>
							</div>
						</c:if>
						<c:if test="${not empty logout }">
							<div class="col">
								<div class="alert alert-success">${logout}</div>
							</div>
						</c:if>
					</div>
				</form>
			</div>
		</div>

		<!-- Footer -->
		<%@ include file="./shared/footer.jsp"%>

		<!-- JavaScript -->
		<script src="${js}/bootstrap.bundle.min.js"></script>
		<script src="${js}/myApp.js"></script>
	</div>
</body>
</html>