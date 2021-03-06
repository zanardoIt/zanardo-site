<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

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
	<div class="collapse navbar-collapse col-lg-10"
		id="navbarsExampleDefault">
		<ul class="navbar-nav mr-auto w-inherit">
			<li id="home"
				class="nav-item col-lg my-1 text-center nav-border-bottom"><a
				class="nav-link nav-text" href="${contextRoot}/home">In�cio</a></li>
			<li id="servicos"
				class="nav-item col-lg my-1 bb-red text-center nav-border-bottom">
				<a class="nav-link nav-text" href="#divServicos">Servi�os</a>
			</li>
			<li id="empresa"
				class="nav-item col-lg my-1 bb-red text-center nav-border-bottom">
				<a class="nav-link nav-text" href="#divEmpresa">Empresa</a>
			</li>
			<li id="contato" class="nav-item col-lg my-1 bb-red text-center">
				<a class="nav-link nav-text" href="#divFale">Fale Conosco</a>
			</li>
		</ul>
		<security:authorize access="hasAuthority('ADMIN')">
			<ul class="nav-item col-lg my-1 bb-red text-center ">
				<li class="dropdown-toggle nav-link nav-text" id="config"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
					style="cursor: pointer">Configura��es</li>
				<li class="dropdown-menu" aria-labelledby="config"><a
					class="dropdown-item" href="${contextRoot}/admin">Painel</a> <a
					class="dropdown-item" href="${contextRoot}/admin/senha">Trocar
						Senha</a> <a class="dropdown-item" href="#">Or�amentos</a> <a
					class="dropdown-item" href="${contextRoot}/logout">Sair</a></li>
			</ul>
		</security:authorize>

	</div>
</nav>


