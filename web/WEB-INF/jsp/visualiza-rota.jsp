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
    <title>Exibir Rotas</title>
    <style type="text/css">
        .row {margin-top: 100px;}
    </style>
</head>
<body>

<div class="container">

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-lg-12">
            <div class="page-header"><h1>Visualizar Rotas de uma Equipe</h1></div>
            <form class="form-inline" role="form" action="visualiza-rota.html" method="get">
                <div class="form-group">
                    <label for="equipe">Selecione a equipe</label>
                    <select class="form-control"  id="equipe" name="idEquipe">
                        <c:forEach items="${equipes}" var="equipe">
                            <option value="${equipe.id}">${equipe.numero}</option>
                        </c:forEach>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Enviar</button><br/><br/>
            </form>


            <c:if test="${not empty rotas}">
                <h2>Rotas</h2>

            <table class="table table-striped table-bordered table-responsive">
                <thead>
                <tr>
                    <th>Equipe</th>
                    <th>Latitude</th>
                    <th>Longitude</th>
                    <th>Tempo Acumulado</th>
                    <th>Tipo</th>
                    <th>Visualizar</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${rotas}" var="rota">
                    <tr>
                        <td>${rota.equipe.numero}</td>
                        <td>${rota.equipe.localizacao.latitude}</td>
                        <td>${rota.equipe.localizacao.latitude}</td>
                        <td>${rota.tempoAcumulado}</td>
                        <td>${rota.arquivoSaida.tipo}</td>
                        <td><a href="visualiza-rota.html?idRota=${rota.id}&idEquipe=${rota.equipe.id}">Ordens</a></td>
                        <td><a href="mapa-rotas.html?idRota=${rota.id}&idEquipe=${rota.equipe.id}">Mapa</a></td>
                    </tr>
                    <c:if test="${not empty rotaEquipe}">
                        <c:if test="${rotaEquipe.id == rota.id}">
                        <c:forEach items="${rota.ordems}" var="ordem">
                            <tr>
                                <td>Ordens</td>
                                <td>${ordem.dataHoraChegada}</td>
                                <td>${ordem.dataHoraChegada}</td>
                            </tr>
                        </c:forEach>
                        </c:if>
                    </c:if>

                </c:forEach>
                </tbody>
            </table>
            </c:if>

${equipesJson}<br/><br/>
            ${equipesPorBase}
        </div>
    </div>

</div>
</body>
</html>
