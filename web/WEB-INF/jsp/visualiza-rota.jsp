<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="taglibs.jsp"%>
<%--
  Created by IntelliJ IDEA.
  User: politecnico
  Date: 14/03/2016
  Time: 10:07
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE>
<html>
<head>
    <title>Upload de Serviços</title>
    <style type="text/css">
        .col-md-12 {margin-top: 100px;}
    </style>
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <p>ROTA PLANEJADA</p>
            <c:if test="${not empty rotaPlanejada}" >
                Rota ID ${rotaPlanejada.id} - Equipe ID ${rotaPlanejada.equipe.id}
                Ordems:
                <c:forEach items="${rotaPlanejada.ordems}" var="ordem" >
                    ordem: ${ordem.ordemServico.localizacao.latitude}, ${ordem.ordemServico.localizacao.longitude} <br />
                </c:forEach>

            </c:if>

            <p>ROTA EXECUTADA</p>
            <c:if test="${not empty rotaExecutada}" >
                Rota ID ${rotaExecutada.id} - Equipe ID ${rotaExecutada.equipe.id}
                Ordems:
                <c:forEach items="${rotaExecutada.ordems}" var="ordem" >
                    ordem: ${ordem.ordemServico.localizacao.latitude}, ${ordem.ordemServico.localizacao.longitude} <br />
                </c:forEach>
            </c:if>

        </div>
    </div>

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-lg-12">
            <form class="form-inline" role="form" action="visualiza-rota.html" method="get">

                <div class="form-group">
                    <label for="equipe">Selecione a equipe:</label>
                    <select class="form-control"  id="equipe" name="idEquipe">
                        <c:forEach items="${equipes}" var="equipe">
                            <option value="${equipe.id}">${equipe.numero}</option>
                        </c:forEach>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Enviar</button><br/><br/>
            </form>

            <table class="table table-striped table-bordered table-responsive">
                <thead>
                <tr>
                    <th>Equipe</th>
                    <th>Latidude</th>
                    <th>Longitude</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${equipes}" var="equipe">

                        <tr>
                            <td>${equipe.numero}</td>
                            <td>${equipe.localizacao.latitude}</td>
                            <td>${equipe.localizacao.longitude}</td>
                        </tr>

                </c:forEach>
                </tbody>
            </table>
            <h3>Ordens</h3>

            <h4>Planejada</h4>
            <table class="table table-striped table-bordered table-responsive">
                <thead>
                <tr>
                    <th>Sequência</th>
                    <th>Tipo</th>
                    <th>Número</th>
                    <th>Latidude</th>
                    <th>Longitude</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${rotaEquipe}" var="rota">
                    <c:forEach items="${rota.ordems}" var="ordem">
                        <tr>
                            <td>${ordem.sequencia}</td>
                            <td>${ordem.ordemServico.tipo}</td>
                            <td>${ordem.ordemServico.numero}</td>
                            <td>${ordem.ordemServico.localizacao.latitude}</td>
                            <td>${ordem.ordemServico.localizacao.longitude}</td>
                            <td>${ordem.rota.arquivoSaida.tipo}</td>
                        </tr>
                    </c:forEach>
                </c:forEach>
                </tbody>
            </table>

            <h4>Executada</h4>
            <table class="table table-striped table-bordered table-responsive">
                <thead>
                <tr>
                    <th>Sequência</th>
                    <th>Tipo</th>
                    <th>Número</th>
                    <th>Latidude</th>
                    <th>Longitude</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${rotaEquipe}" var="rota">
                    <c:forEach items="${rota.ordems}" var="ordem">
                        <tr>
                            <td>${ordem.sequencia}</td>
                            <td>${ordem.ordemServico.tipo}</td>
                            <td>${ordem.ordemServico.numero}</td>
                            <td>${ordem.ordemServico.localizacao.latitude}</td>
                            <td>${ordem.ordemServico.localizacao.longitude}</td>
                            <td>${ordem.rota.arquivoSaida.tipo}</td>
                        </tr>
                    </c:forEach>
                </c:forEach>
                </tbody>
            </table>


        </div>
    </div>

</div>
</body>
</html>
