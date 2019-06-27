<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>

function ConvertFormToJSON(form){
    var array = jQuery(form).serializeArray();
    var json = {};
    
    jQuery.each(array, function() {
        json[this.name] = this.value || '';
    });
    
    return json;
}

	function sendEmail() {
		alert('entrou');
		/*
		var name = document.getElementById("nome");
		var nome = {
			"nome" : name.value
		}
		*/
		var datat = ConvertFormToJSON($('#sendForm'));
		
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "http://localhost:8080/zanardosite/sendMessage",
			data : JSON.stringify(datat),
			success : function(e) {
				//console.log("SUCCESS: ", data);
				//displayUsernamError(result);
				alert('success');
			},
			error : function(e) {
				//console.log("ERROR: ", e);
				//displayUsernamError(e);
				alert('error');
			},
			done : function(e) {
				//console.log("DONE");
				alert('done');
			}
		});
				
	}
</script>

<div class="container mt-4" id="divInicio">
	<div class="row">
		<div class="col-lg-6 font-weight-900 mt60px">
			<p class="fs35pt mg-0 lh60px">BEM VINDO</p>
			<p class=" fs55pt mg-0 lh60px">ZANARDO</p>
			<p class="fs27pt lh60px orange_zanardo">CONTABILIDADE E
				ASSESSORIA</p>
			<div class="row">
				<div class="col-lg-6">
					<button ID="btnEmpresa" OnClick="btnEmpresa_Click"
						class="btn btn-primary btn-lg mt-2 w-100 orange_zanardo_bg bd_orange">
							<i class="fas fa-industry"></i> &nbsp; Abrir uma Empresa
					</button>
				</div>
				<div class="col-lg-6">
					<a class="btn btn-success btn-lg mt-2 w-100" href="${contextRoot}/orcamento" role="button">
							<i class="fas fa-envelope"></i> &nbsp; Orçamento por email
					</a>
				</div>
			</div>
			<div class="row">
				<div class="col color-black">
					<hr />
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6 mt-1 font-20">
					<a
						href="https://wa.me/5519999354279?text=Olá, quero saber mais sobre os serviços Zanardo..."
						class="blue_zanardo text-decoration-none">(19) 9-9935-4279
						&nbsp; <i class="fab fa-whatsapp-square fa-1x"></i>
					</a>
				</div>
				<div class="col-lg-6 mt-1 font-20">
					<a href="tel:1925141162" class="blue_zanardo text-decoration-none">(19)
						2514-1162 &nbsp; <i class="fas fa-phone"></i>
					</a>
				</div>
			</div>
		</div>
		<div class="col-lg-6 mt-4">
			<div id="carouselExampleControls" class="carousel slide"
				data-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="${images}/slide/01.jpeg" class="d-block w-100 r8"
							height="360" />
					</div>
					<div class="carousel-item">
						<img src="${images}/slide/IR.jpeg" class="d-block w-100 r8"
							height="360" />
					</div>

					<div class="carousel-item">
						<img src="${images}/slide/02.jpeg" class="d-block w-100 r8"
							height="360" />
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleControls"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleControls"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>
	<div id="divServicos"></div>
</div>

<div class="container-fluid bg-white mt100px shadow-2">
	<div class="row">
		<div class="col-lg offset-lg-1 mt-5 font-30 font-weight-900">
			NOSSOS SERVIÇOS</div>
	</div>
	<div class="row">
		<div class="col-lg offset-lg-1 mt-5">
			<div class="row">
				<div class="col-lg-4">
					<p class="font-19 font-weight-900">
						<i class="far fa-building orange_zanardo"></i>&nbsp; Abertura de
						Empresas
					</p>
					<p>Abertura, Encerramento e alteração de contrato social.</p>
				</div>
				<div class="col-lg-4">
					<p class="font-19 font-weight-900">
						<i class="fas fa-balance-scale orange_zanardo"></i>&nbsp;
						Contabilidade
					</p>
					<p>
						Contabilidade total: Simples Nacional, MEI, Lucro Presumido e
						Lucro Real. <br /> Efetuamos todos os serviços necessários, para
						os regimes de tributação.
					</p>
				</div>
				<div class="col-lg-4">
					<p class="font-19 font-weight-900">
						<i class="fas fa-wallet orange_zanardo"></i>&nbsp; Imposto de
						Renda
					</p>
					<p>IR pessoa Jurídica e Física.</p>
				</div>
			</div>
			<div class="row mt-5 mb100px">
				<div class="col-lg-4">
					<p class="font-19 font-weight-900">
						<i class="fas fa-ruler-combined orange_zanardo"></i>&nbsp;
						Planejamento Tributário
					</p>
					<p>Analisamos a melhor forma de tributação para sua empresa.</p>
				</div>
				<div class="col-lg-4">
					<p class="font-19 font-weight-900">
						<i class="fas fa-calculator orange_zanardo"></i>&nbsp;
						Departamento Pessoal
					</p>
					<p>
						Apuração de Impostos. <br /> Entrega das obrigações acessórias. <br />
						Efetuamos todos os serviços necessários, pertinentes para cada
						tipo de empresa.
					</p>
				</div>
				<div class="col-lg-4">
					<p class="font-19 font-weight-900">
						<i class="fas fa-user orange_zanardo"></i>&nbsp; Departamento
						Pessoal
					</p>
					<p>
						Elaboração de Folha de Pagamento <br /> Folha de Pagamento
						Informatizada <br /> Orientação legal trabalhista/previdenciária
						<br /> Elaboração de guias para o devido recolhimento <br />
						Acompanhamento de assuntos junto aos sindicatos <br /> Cuidamos
						de todos os assuntos pertinentes as relações empregador/empregado
					</p>
				</div>
			</div>
		</div>
	</div>
	<div id="divEmpresa"></div>
</div>

<div class="container mt-5">
	<div class="row">
		<div class="col-lg mt-4 font-weight-900 font-30">A EMPRESA</div>
	</div>
	<div class="row">
		<div class="col-lg mt-4">
			<p>
				A Zanardo Contabilidade é uma empresa especializada em serviços e
				assessoria na área Contábil. <br /> Priorizamos qualidade no
				trabalho, sempre executando os serviços de acordo com o determinado
				na legislação, buscando as melhores alternativas para nossos
				clientes. <br /> Executamos nossos serviços através de sistemas
				qualificados, capazes de suprir todas as necessidades exigidas pela
				legislação. Temos foco no planejamento tributário, procurando os
				caminhos legais e mais vantajosos para nossos clientes. <br />
				Prestamos serviços de forma eficaz, proporcionando tranquilidade e
				segurança, para os empresários gerenciarem seus negócios, buscando
				sempre soluções para ajudá-los no crescimento.
			</p>
		</div>
	</div>
	<div class="row py-5 mt-4 bt bb">
		<div class="col-lg-4">
			<p class="font-17 font-weight-900">VISÃO</p>
			<p>Ser uma organização contábil, referência por sua qualidade na
				prestação de serviços, com ética e eficiência, firmando uma aliança
				séria e duradoura com nossos clientes.</p>
		</div>
		<div class="col-lg-4">
			<p class="font-17 font-weight-900">MISSÃO</p>
			<p>Oferecer serviços e soluções competitivas, dentro dos mais
				altos padrões éticos, legais em gestão tributária e contábil, com
				qualidade e eficiência, proporcionando satisfação e atendendo as
				expectativas dos clientes.</p>
		</div>
		<div class="col-lg-4">
			<p class="font-17 font-weight-900">VALORES</p>
			Ética<br /> Respeito ao cliente<br /> Lealdade<br /> Legalidade<br />
			Profissionalismo absoluto<br /> Confiança<br />
		</div>
	</div>
	<div class="row">
		<div class="col-lg mt-5">
			<p class="font-19 font-weight-900 text-center">Nossos clientes
				por região</p>
			<div class="row mt-2">
				<div class="col-5">
					<div
						style="width: 25px; height: 25px; background-color: #2C3E50; float: right">
					</div>
				</div>
				<div class="col-7 text-left">CAMPINAS</div>
			</div>
			<div class="row mt-2">
				<div class="col-5">
					<div
						style="width: 25px; height: 25px; background-color: #2C3E50; float: right">
					</div>
				</div>
				<div class="col-7 text-left">INDAIATUBA</div>
			</div>
			<div class="row mt-2">
				<div class="col-5">
					<div
						style="width: 25px; height: 25px; background-color: #2C3E50; float: right">
					</div>
				</div>
				<div class="col-7 text-left">VALINHOS</div>
			</div>
			<div class="row mt-2">
				<div class="col-5">
					<div
						style="width: 25px; height: 25px; background-color: #2C3E50; float: right">
					</div>
				</div>
				<div class="col-7 text-left">HORTOLÂNDIA</div>
			</div>
			<div class="row mt-2">
				<div class="col-5">
					<div
						style="width: 25px; height: 25px; background-color: #2C3E50; float: right">
					</div>
				</div>
				<div class="col-7 text-left">OSASCO</div>
			</div>
		</div>
		<div class="col-lg mt-5">
			<p class="font-19 font-weight-900 text-center">Nossos clientes</p>
			<div class="row mt-2">
				<div class="col">
					<div
						style="width: 25px; height: 25px; background-color: #2C3E50; float: right">
					</div>
				</div>
				<div class="col-9 text-left">
					LUCRO REAL <b class="font-weight-900">+200 FUNCIONÁRIOS</b>
				</div>
			</div>
			<div class="row mt-2">
				<div class="col">
					<div
						style="width: 25px; height: 25px; background-color: #2C3E50; float: right">
					</div>
				</div>
				<div class="col-9 text-left">
					LUCRO REAL <b class="font-weight-900">+100 FUNCIONÁRIOS</b>
				</div>
			</div>
			<div class="row mt-2">
				<div class="col">
					<div
						style="width: 25px; height: 25px; background-color: #2C3E50; float: right">
					</div>
				</div>
				<div class="col-9 text-left">
					LUCRO REAL <b class="font-weight-900">+30 FUNCIONÁRIOS</b>
				</div>
			</div>
			<div class="row mt-2">
				<div class="col">
					<div
						style="width: 25px; height: 25px; background-color: #2C3E50; float: right">
					</div>
				</div>
				<div class="col-9 text-left">SIMPLES NACIONAL</div>
			</div>
			<div class="row mt-2">
				<div class="col">
					<div
						style="width: 25px; height: 25px; background-color: #2C3E50; float: right">
					</div>
				</div>
				<div class="col-9 text-left">MEI</div>
			</div>
			<div class="row mt-2">
				<div class="col">
					<div
						style="width: 25px; height: 25px; background-color: #2C3E50; float: right">
					</div>
				</div>
				<div class="col-9 text-left">PESSOA FÍSICA</div>
			</div>
		</div>
	</div>
	<div id="divFale"></div>
</div>

<div class="container-fluid bg-white shadow-2 mt100px">
	<div class="row">
		<div class="col-lg offset-lg-1 my-5 font-weight-900 font-30">
			FALE CONOSCO</div>
	</div>
	<div class="row">
		<div class="col-lg-10 offset-lg-1">
			<div class="row">
				<div class="col-lg">
					<div class="font-19 font-weight-900 text-center">
						<i class="fas fa-mobile-alt orange_zanardo fa-2x"></i>
					</div>
					<div class="text-center mt-3 font-16">(19) 9 9935-4279</div>
				</div>

				<div class="col-lg">
					<div class="font-19 font-weight-900 text-center">
						<i class="fas fa-phone orange_zanardo fa-2x"></i>
					</div>
					<div class="text-center mt-3 font-16">(19) 2514-1162</div>
				</div>
				<div class="col-lg">
					<div class="font-19 font-weight-900 text-center">
						<i class="fas fa-map-marker-alt orange_zanardo fa-2x"></i>
					</div>
					<div class="text-center mt-3 font-14">
						Av. Baden Powell, 1780 <br /> CEP: 13040-093 <br /> Jd. Nova
						Europa - Campinas - SP
					</div>
				</div>
				<div class="col-lg">
					<div class="font-19 font-weight-900 text-center">
						<i class="fas fa-envelope orange_zanardo fa-2x"></i>
					</div>
					<div class="mt-3 font-15">
						contabilidade@zanardocontabilidade.com.br
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row mt-5 pb-5">
		<div class="col-lg-10 offset-lg-1">
			<form action="sendMessage" method="post" name="sendForm" id="sendForm">
				<div class="row">
					<div class="col-lg mt-4">
						<input type="text" name="nome" id="nome" required="" class="form-control"
							Placeholder="NOME" />
					</div>
					<div class="col-lg mt-4">
						<input type="email" name="email" required="" class="form-control"
							Placeholder="EMAIL" />
					</div>
					<div class="col-lg mt-4">
						<input type="text" name="telefone" required=""
							class="form-control onlyNumber" Placeholder="TELEFONE" />
					</div>
				</div>
				<div class="row">
					<div class="col-lg mt-4">
						<input type="text" name="mensagem" required=""
							class="form-control" Placeholder="MENSAGEM" TextMode="MultiLine"
							Rows="4" />
					</div>
				</div>
				<div class="row pb-4">
					<div class="col-lg mt-4 text-center">
						<!-- <input type="submit" class="btn btn-warning btn-lg text-white orange_zanardo_bg bd_orange" value="ENVIAR MENSAGEM" /> -->
						<button type="button" onClick="sendEmail()" class="btn btn-warning btn-lg text-white orange_zanardo_bg bd_orange">ENVIAR</button>
						
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					</div>
				</div>
				<div class="row">
					<div class="col-lg mt-2 text-center">
						<c:if test="${not empty sent }">
							<div class="col">
								<div class="alert alert-success">${sent}</div>
							</div>
						</c:if>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>

