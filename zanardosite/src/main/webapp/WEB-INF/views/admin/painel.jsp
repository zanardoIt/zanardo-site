<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<meta name="_csrf" content="${_csrf.token}" />
<meta name="_csrf_header" content="${_csrf.headerName}" />

<script src="${js}/jquery-3.3.1.min.js"></script>
<link href="${css}/zanardo.css" rel="stylesheet" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
</head>

<script>
	window.menu = '${title}';
</script>


<body class="font-lato blue_zanardo_light_bg">
	<div class="wrapper">
		<!-- NAVBAR -->
		<%@ include file="../shared/navbar.jsp"%>

		<!-- CONTENT -->
		<div class="content">
			<c:if test="${painelClick == true }">
				<div class="row">
					<div class="col-lg-4 offset-1">ÁREA ADMINISTRATIVA</div>
				</div>
			</c:if>
			<c:if test="${senhaClick == true }">
				<%@ include file="./trocar_senha.jsp"%>
			</c:if>
		</div>

		<!-- Footer -->
		<%@ include file="../shared/footer.jsp"%>

		<!-- JavaScript -->
		<script src="${js}/bootstrap.bundle.min.js"></script>
		<script src="${js}/myApp.js"></script>
	</div>
</body>
</html>