<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>

<html>
<head>
    <title>Zanardo · Contabilidade</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <script src="${js}/jquery-3.3.1.min.js"></script>
    <link href="${css}/zanardo.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    
</head>

<body class="font-lato blue_zanardo_light_bg">
    <nav class="navbar navbar-expand-md navbar-dark fixed-top w-inherit nav-bkg bg-shadow">
        <a class="navbar-brand col-1" href="index.aspx">
            <img src="${images}/logos/logo_zanardo_nome.png" width="150" />
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse col-lg-10" id="navbarsExampleDefault">
            <ul class="navbar-nav mr-auto w-inherit">
                <li class="nav-item col-lg my-1 text-center nav-border-bottom">
                    <a class="nav-link nav-text" href="index.aspx">Início</a>
                </li>
                <li class="nav-item col-lg my-1 bb-red text-center nav-border-bottom">
                    <a class="nav-link nav-text" href="#divServicos">Serviços</a>
                </li>
                <li class="nav-item col-lg my-1 bb-red text-center nav-border-bottom">
                    <a class="nav-link nav-text" href="#divEmpresa">Empresa</a>
                </li>
                <li class="nav-item col-lg my-1 bb-red text-center">
                    <a class="nav-link nav-text" href="#divFale">Fale Conosco</a>
                </li>
            </ul>
        </div>
    </nav>
    <form id="form1" runat="server">
        <div>
            <asp:ContentPlaceHolder ID="ContentPlaceHolder1" runat="server">
            </asp:ContentPlaceHolder>
        </div>
    </form>

    <!-- <script src="Scripts/jquery-3.0.0.slim.min.js"></script> -->
    <script src="${js}/bootstrap.bundle.min.js"></script>
</body>
</html>    
    
<%--    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Zanardo Contabilidade</title>
</head>
<body>
	${contextRoot} says - ${greeting}
</body>
</html>
--%>