<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="taglibs.jsp"%>
<%--
  Created by IntelliJ IDEA.
  User: politecnico
  Date: 14/03/2016
  Time: 10:07
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
            <%--@elvariable id="rota" type="br.ufsm.ceesp.model.Rota"--%>
            <c:if test="${not empty rota}" >
                Rota ID ${rota.id} - Equipe ID ${rota.equipe.id}
                Ordems:
                <c:forEach items="${rota.ordems}" var="ordem" >
                    ordem: ${ordem.ordemServico.localizacao.latitude}, ${ordem.ordemServico.localizacao.longitude} <br />
                </c:forEach>

            </c:if>

        </div>
    </div>

</div>
</body>
</html>
