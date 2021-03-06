<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="container">
        <div class="row">
            <div class="col">
                <p style="font-weight: 900; font-size: 22pt">
                    Or�amentos
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col">
                Para sua comodidade disponibilizamos uma maneira r�pida e pratica de envio de or�amentos. 
                <br />
                Selecione o servi�o e insira seu e-mail para receber os valores e a documenta��o necess�ria.
            </div>
        </div>
        <div class="row">
            <div class="col mt-3">
                <b>
                    Selecione os servi�os 
                </b>
            </div>
        </div>
        <div class="row">
            <div class="col-lg mt-3">
                <label for="sexo">Servi�os: </label>
				<form:select path="servicos" class="form-control">
					<form:options items="${servicos}" itemLabel="descricao" />
				</form:select>
            </div>
            <div class="col-lg mt-3">
            </div>
            <div class="col-lg mt-3">

            </div>
        </div>
        <div class="row mt-3">
            <div class="col">
                <b>Seu email
                </b>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 mt-2">
                <input ID="txtEmail"  placeholder="E-mail" class="form-control" type="email"></input>
            </div>
            <div class="col-lg mt-2">
                <button ID="btnSolicitar" OnClick="btnSolicitar_Click"  class="btn btn-primary">Solicitar</button>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 mt-2">
                <label ID="lblMensagem" ></label>
            </div>
        </div>
    </div>