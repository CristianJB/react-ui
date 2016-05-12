<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="taglibs.jsp"%>
<%--
  Created by IntelliJ IDEA.
  User: politecnico
  Date: 10/06/2015
  Time: 10:24
  To change this template use File | Settings | File Templates.

  leitura.jsp

--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <title>Ordens de Serviço</title>
    <style type="text/css">
        .col-md-12 {margin-top: 50px;}
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
        }
        #map {
            height: calc(100% - 47px);
            width: 100%;
        }
        #floating-panel {
            position: absolute;
            top: 10px;
            z-index: 5;
            /*margin-left: -52px;
            background-color: #fff;
            padding: 5px;
            border: 1px solid #999;
            text-align: center;
            line-height: 30px;
            padding-left: 10px;*/
        }
        .col-xs-12, .col-sm-12, .col-lg-12 {
            margin-top: 50px;
        }
    </style>

    <script>

        var map;
        var markers = [];
        var markers2 = [];
        var icone;
        function initMap() {
            map = new google.maps.Map(document.getElementById('map'), {
                zoom: 11,
                center: {lat: -29.695060000, lng: -53.725150000}
            });
        }

        var pontos = [
            ['<b>numero: </b>1</br>' +
            '<b>Tipo da ordem: </b>Emergência</br>'+
            '<b>tmp_acum_rota: </b>28</br>' +
            '<b>custo: </b>27,62</br>' +
            '<b>datahora_chegada: </b>06/02/2013 12:42:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 13:12:00</br>' +
            '<b>Equipe: </b>EQUIPE 233</br>',
             -29.954305234, -51.161028911, '233','Plan','E']
            ,
            ['<b>numero: </b>2</br>' +
            '<b>Tipo da ordem: </b>Emergência</br>'+
            '<b>tmp_acum_rota: </b>76</br>' +
            '<b>custo: </b>25,47</br>' +
            '<b>datahora_chegada: </b>06/02/2013 13:30:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 14:00:00</br>' +
            '<b>Equipe: </b>EQUIPE 233</br>',
             -29.881582756, -51.256003245, '233','Plan','E']
            ,
            ['<b>numero: </b>3</br>' +
            '<b>Tipo da ordem: </b>Emergência</br>'+
            '<b>tmp_acum_rota: </b>106</br>' +
            '<b>custo: </b>25,47</br>' +
            '<b>datahora_chegada: </b>06/02/2013 14:00:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 14:30:00</br>' +
            '<b>Equipe: </b>EQUIPE 233</br>',
                -29.881582766, -51.256003265, '233','Plan','E']
            ,
            ['<b>numero: </b>4</br>' +
            '<b>Tipo da ordem: </b>Comercial</br>'+
            '<b>tmp_acum_rota: </b>154</br>' +
            '<b>custo: </b>25,47</br>' +
            '<b>datahora_chegada: </b>06/02/2013 14:49:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 15:44:00</br>' +
            '<b>Equipe: </b>EQUIPE 233</br>',
                -29.892960000, -51.128680000, '233','Plan','C']
            ,
            ['<b>numero: </b>5</br>' +
            '<b>Tipo da ordem: </b>Comercial</br>'+
            '<b>tmp_acum_rota: </b>211</br>' +
            '<b>custo: </b>0</br>' +
            '<b>datahora_chegada: </b>06/02/2013 15:46:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 16:41:00</br>' +
            '<b>Equipe: </b>EQUIPE 233</br>',
                -29.885223690, -51.132156720, '233','Plan','C']
            ,
            ['<b>numero: </b>6</br>' +
            '<b>Tipo da ordem: </b>Comercial</br>'+
            '<b>tmp_acum_rota: </b>266</br>' +
            '<b>custo: </b>0</br>' +
            '<b>datahora_chegada: </b>06/02/2013 16:41:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 17:36:00</br>' +
            '<b>Equipe: </b>EQUIPE 233</br>',
                -29.884405300, -51.134684100, '233','Plan','C']
            ,
            ['<b>numero: </b>7</br>' +
            '<b>Tipo da ordem: </b>Comercial</br>'+
            '<b>tmp_acum_rota: </b>321</br>' +
            '<b>custo: </b>0</br>' +
            '<b>datahora_chegada: </b>06/02/2013 17:36:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 18:31:00</br>' +
            '<b>Equipe: </b>EQUIPE 233</br>',
                -29.884210000, -51.134710000, '233','Plan','C']
            ,
            ['<b>numero: </b>8</br>' +
            '<b>Tipo da ordem: </b>Comercial</br>'+
            '<b>tmp_acum_rota: </b>376</br>' +
            '<b>custo: </b>0</br>' +
            '<b>datahora_chegada: </b>06/02/2013 18:31:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 19:26:00</br>' +
            '<b>Equipe: </b>EQUIPE 233</br>',
                -29.885141460, -51.136051350, '233','Plan','C']
            ,
            ['<b>numero: </b>1</br>' +
            '<b>Tipo da ordem: </b>Comercial</br>'+
            '<b>tmp_acum_rota: </b>17</br>' +
            '<b>custo: </b>0</br>' +
            '<b>datahora_chegada: </b>06/02/2013 12:32:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 13:27:00</br>' +
            '<b>Equipe: </b>EQUIPE 233</br>',
             -29.892960000, -51.128680000, '233','Exec','C']
            ,
            ['<b>numero: </b>2</br>' +
            '<b>Tipo da ordem: </b>Comercial</br>'+
            '<b>tmp_acum_rota: </b>74</br>' +
            '<b>custo: </b>0</br>' +
            '<b>datahora_chegada: </b>06/02/2013 13:29:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 14:24:00</br>' +
            '<b>Equipe: </b>EQUIPE 233</br>',
                -29.885223690, -51.132156720, '233','Exec','C']
            ,
            ['<b>numero: </b>3</br>' +
            '<b>Tipo da ordem: </b>Comercial</br>'+
            '<b>tmp_acum_rota: </b>129</br>' +
            '<b>custo: </b>0</br>' +
            '<b>datahora_chegada: </b>06/02/2013 14:24:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 15:19:00</br>' +
            '<b>Equipe: </b>EQUIPE 233</br>',
                -29.884405300, -51.134684100, '233','Exec','C']
            ,
            ['<b>numero: </b>4</br>' +
            '<b>Tipo da ordem: </b>Comercial</br>'+
            '<b>tmp_acum_rota: </b>184</br>' +
            '<b>custo: </b>0</br>' +
            '<b>datahora_chegada: </b>06/02/2013 15:19:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 16:14:00</br>' +
            '<b>Equipe: </b>EQUIPE 233</br>',
                -29.884210000, -51.134710000, '233','Exec','C']
            ,
            ['<b>numero: </b>5</br>' +
            '<b>Tipo da ordem: </b>Comercial</br>'+
            '<b>tmp_acum_rota: </b>239</br>' +
            '<b>custo: </b>0</br>' +
            '<b>datahora_chegada: </b>06/02/2013 16:14:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 17:09:00</br>' +
            '<b>Equipe: </b>EQUIPE 233</br>',
                -29.885141460, -51.136051350, '233','Exec','C']
            ////////////////////////////////////////////////////////////
            ,
            ['<b>numero: </b>1</br>' +
            '<b>Tipo da ordem: </b>Comercial</br>'+
            '<b>tmp_acum_rota: </b>53</br>' +
            '<b>custo: </b>100</br>' +
            '<b>datahora_chegada: </b>06/02/2013 13:08:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 14:03:00</br>' +
            '<b>Equipe: </b>EQUIPE 244</br>',
                -29.956190000, -51.182390000, '244','Plan','C']
            ,
            ['<b>numero: </b>2</br>' +
            '<b>Tipo da ordem: </b>Comercial</br>'+
            '<b>tmp_acum_rota: </b>109</br>' +
            '<b>custo: </b>100</br>' +
            '<b>datahora_chegada: </b>06/02/2013 14:04:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 14:59:00</br>' +
            '<b>Equipe: </b>EQUIPE 244</br>',
                -29.960490000, -51.181620000, '244','Plan','C']
            ,
            ['<b>numero: </b>3</br>' +
            '<b>Tipo da ordem: </b>Comercial</br>'+
            '<b>tmp_acum_rota: </b>165</br>' +
            '<b>custo: </b>0</br>' +
            '<b>datahora_chegada: </b>06/02/2013 15:00:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 15:30:00</br>' +
            '<b>Equipe: </b>EQUIPE 244</br>',
                -29.963600000, -51.184270000, '244','Plan','C']
            ,
            ['<b>numero: </b>4</br>' +
            '<b>Tipo da ordem: </b>Comercial</br>'+
            '<b>tmp_acum_rota: </b>195</br>' +
            '<b>custo: </b>0</br>' +
            '<b>datahora_chegada: </b>06/02/2013 15:30:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 16:00:00</br>' +
            '<b>Equipe: </b>EQUIPE 244</br>',
                -29.965750000, -51.186190000, '244','Plan','C']
            ,
            ['<b>numero: </b>1</br>' +
            '<b>Tipo da ordem: </b>Emergência</br>'+
            '<b>tmp_acum_rota: </b>52</br>' +
            '<b>custo: </b>51,75</br>' +
            '<b>datahora_chegada: </b>06/02/2013 13:06:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 13:36:00</br>' +
            '<b>Equipe: </b>EQUIPE 244</br>',
                    -29.954305234, -51.161028911, '244','Exec','E']
            ,
            ['<b>numero: </b>2</br>' +
            '<b>Tipo da ordem: </b>Comercial</br>'+
            '<b>tmp_acum_rota: </b>84</br>' +
            '<b>custo: </b>0</br>' +
            '<b>datahora_chegada: </b>06/02/2013 13:39:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 14:34:00</br>' +
            '<b>Equipe: </b>EQUIPE 244</br>',
                -29.956190000, -51.182390000, '244','Exec','C']
            ,
            ['<b>numero: </b>3</br>' +
            '<b>Tipo da ordem: </b>Comercial</br>'+
            '<b>tmp_acum_rota: </b>140</br>' +
            '<b>custo: </b>0</br>' +
            '<b>datahora_chegada: </b>06/02/2013 14:35:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 15:30:00</br>' +
            '<b>Equipe: </b>EQUIPE 244</br>',
                -29.960490000, -51.181620000, '244','Exec','C']
            ,
            ['<b>numero: </b>4</br>' +
            '<b>Tipo da ordem: </b>Comercial</br>'+
            '<b>tmp_acum_rota: </b>196</br>' +
            '<b>custo: </b>0</br>' +
            '<b>datahora_chegada: </b>06/02/2013 15:31:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 16:01:00</br>' +
            '<b>Equipe: </b>EQUIPE 244</br>',
                -29.963600000, -51.184270000, '244','Exec','C']
            ,
            ['<b>numero: </b>5</br>' +
            '<b>Tipo da ordem: </b>Comercial</br>'+
            '<b>tmp_acum_rota: </b>226</br>' +
            '<b>custo: </b>0</br>' +
            '<b>datahora_chegada: </b>06/02/2013 16:01:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 16:31:00</br>' +
            '<b>Equipe: </b>EQUIPE 244</br>',
                -29.965750000, -51.186190000, '244','Exec','C']
            ,
            ['<b>numero: </b>6</br>' +
            '<b>Tipo da ordem: </b>Emergencial</br>'+
            '<b>tmp_acum_rota: </b>273</br>' +
            '<b>custo: </b>62,52</br>' +
            '<b>datahora_chegada: </b>06/02/2013 16:48:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 17:18:00</br>' +
            '<b>Equipe: </b>EQUIPE 244</br>',
                -29.881582756, -51.256003245, '244','Exec','E']
            ,
            ['<b>numero: </b>7</br>' +
            '<b>Tipo da ordem: </b>Emergencial</br>'+
            '<b>tmp_acum_rota: </b>303</br>' +
            '<b>custo: </b>62,52</br>' +
            '<b>datahora_chegada: </b>06/02/2013 17:18:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 17:48:00</br>' +
            '<b>Equipe: </b>EQUIPE 244</br>',
                -29.881582766, -51.256003265, '244','Exec','E']
            ,
                //=======================================913================
            ['<b>numero: </b>1</br>' +
            '<b>Tipo da ordem: </b>Comerical</br>'+
            '<b>tmp_acum_rota: </b>18</br>' +
            '<b>custo: </b>0</br>' +
            '<b>datahora_chegada: </b>06/02/2013 06:39:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 07:34:00</br>' +
            '<b>Equipe: </b>EQUIPE 913</br>',
                -29.695060000, -53.725150000, '913','Plan','C']
            ,
            ['<b>numero: </b>2</br>' +
            '<b>Tipo da ordem: </b>Comerical</br>'+
            '<b>tmp_acum_rota: </b>73</br>' +
            '<b>custo: </b>0</br>' +
            '<b>datahora_chegada: </b>06/02/2013 07:34:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 08:08:00</br>' +
            '<b>Equipe: </b>EQUIPE 913</br>',
                -29.694800000, -53.724410000, '913','Plan','C']
            ,
            ['<b>numero: </b>3</br>' +
            '<b>Tipo da ordem: </b>Comerical</br>'+
            '<b>tmp_acum_rota: </b>109</br>' +
            '<b>custo: </b>0</br>' +
            '<b>datahora_chegada: </b>06/02/2013 08:10:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 09:05:00</br>' +
            '<b>Equipe: </b>EQUIPE 913</br>',
                -29.704240000, -53.714140000, '913','Plan','C']
            ,
            ['<b>numero: </b>4</br>' +
            '<b>Tipo da ordem: </b>Comerical</br>'+
            '<b>tmp_acum_rota: </b>164</br>' +
            '<b>custo: </b>0</br>' +
            '<b>datahora_chegada: </b>06/02/2013 09:06:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 10:01:00</br>' +
            '<b>Equipe: </b>EQUIPE 913</br>',
                -29.701830000, -53.711160000, '913','Plan','C']
            ,
            ['<b>numero: </b>5</br>' +
            '<b>Tipo da ordem: </b>Comerical</br>'+
            '<b>tmp_acum_rota: </b>235</br>' +
            '<b>custo: </b>0</br>' +
            '<b>datahora_chegada: </b>06/02/2013 10:17:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 11:12:00</br>' +
            '<b>Equipe: </b>EQUIPE 913</br>',
                -29.647740780, -53.619723450, '913','Plan','C']
            ,
            ['<b>numero: </b>6</br>' +
            '<b>Tipo da ordem: </b>Comerical</br>'+
            '<b>tmp_acum_rota: </b>307</br>' +
            '<b>custo: </b>0</br>' +
            '<b>datahora_chegada: </b>06/02/2013 11:28:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 12:48:00</br>' +
            '<b>Equipe: </b>EQUIPE 913</br>',
                -29.695670000, -53.719870000, '913','Plan','C']
            ,
            ['<b>numero: </b>7</br>' +
            '<b>Tipo da ordem: </b>Comerical</br>'+
            '<b>tmp_acum_rota: </b>388</br>' +
            '<b>custo: </b>0</br>' +
            '<b>datahora_chegada: </b>06/02/2013 12:50:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 13:45:00</br>' +
            '<b>Equipe: </b>EQUIPE 913</br>',
                -29.702679240, -53.717738050, '913','Plan','C']
            ,
            ['<b>numero: </b>8</br>' +
            '<b>Tipo da ordem: </b>Comerical</br>'+
            '<b>tmp_acum_rota: </b>448</br>' +
            '<b>custo: </b>0</br>' +
            '<b>datahora_chegada: </b>06/02/2013 13:49:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 14:19:00</br>' +
            '<b>Equipe: </b>EQUIPE 913</br>',
                -29.683388090, -53.694827340, '913','Plan','C']

            ,
            ['<b>numero: </b>1</br>' +
            '<b>Tipo da ordem: </b>Comerical</br>'+
            '<b>tmp_acum_rota: </b>19</br>' +
            '<b>custo: </b>0</br>' +
            '<b>datahora_chegada: </b>06/02/2013 06:41:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 06:54:00</br>' +
            '<b>Equipe: </b>EQUIPE 913</br>',
                -29.695060000, -53.725150000, '913','Exec','C']
            ,
            ['<b>numero: </b>2</br>' +
            '<b>Tipo da ordem: </b>Comerical</br>'+
            '<b>tmp_acum_rota: </b>51</br>' +
            '<b>custo: </b>0</br>' +
            '<b>datahora_chegada: </b>06/02/2013 07:13:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 07:59:00</br>' +
            '<b>Equipe: </b>EQUIPE 913</br>',
                -29.694800000, -53.724410000, '913','Exec','C']
            ,
            ['<b>numero: </b>3</br>' +
            '<b>Tipo da ordem: </b>Emergencical</br>'+
            '<b>tmp_acum_rota: </b>132</br>' +
            '<b>custo: </b>3,59</br>' +
            '<b>datahora_chegada: </b>06/02/2013 08:34:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 11:22:00</br>' +
            '<b>Equipe: </b>EQUIPE 913</br>',
                -29.695557731, -53.832447185, '913','Exec','E']
            ,
            ['<b>numero: </b>4</br>' +
            '<b>Tipo da ordem: </b>Emergencical</br>'+
            '<b>tmp_acum_rota: </b>394</br>' +
            '<b>custo: </b>4,42</br>' +
            '<b>datahora_chegada: </b>06/02/2013 12:56:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 13:06:00</br>' +
            '<b>Equipe: </b>EQUIPE 913</br>',
                -29.695630000, -53.768200000, '913','Exec','E']
            ,
            ['<b>numero: </b>5</br>' +
            '<b>Tipo da ordem: </b>Emergencical</br>'+
            '<b>tmp_acum_rota: </b>435</br>' +
            '<b>custo: </b>4,42</br>' +
            '<b>datahora_chegada: </b>06/02/2013 13:37:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 14:31:00</br>' +
            '<b>Equipe: </b>EQUIPE 913</br>',
                -29.671910000, -53.828410000, '913','Exec','E']
            ,
            ['<b>numero: </b>6</br>' +
            '<b>Tipo da ordem: </b>Emergencical</br>'+
            '<b>tmp_acum_rota: </b>521</br>' +
            '<b>custo: </b>1,57</br>' +
            '<b>datahora_chegada: </b>06/02/2013 15:03:00</br>' +
            '<b>datahora_saida: </b>06/02/2013 15:35:00</br>' +
            '<b>Equipe: </b>EQUIPE 913</br>',
                -29.676020000, -53.789970000, '913','Exec','E']
        ];

        function setEquipeMarkers(equipe,rota) {
            arr =[];
            arr2 =[];
            var information;
            var infoWindow = new google.maps.InfoWindow();

            for (var i = 0; i < pontos.length; i++) {

                var ponto = pontos[i];

                if (ponto[3] === equipe) {

                        //escolha do icone comercial ou emergencial
                        if (ponto[5] === 'C') {
                            icone = {
                                path: google.maps.SymbolPath.CIRCLE,
                                scale: 5,
                                fillColor: 'black',
                                fillOpacity: 0.8,
                                strokeColor: 'green',
                            };
                        }
                        if (ponto[5] === 'E') {
                            icone = {
                                path: google.maps.SymbolPath.CIRCLE,
                                scale: 5,
                                fillColor: 'black',
                                fillOpacity: 0.8,
                                strokeColor: 'red',
                            };
                        }//fim da escolha do ícone

                    if(rota==='Exec'||rota==='PlanExec'){
                        if (ponto[4] === 'Exec') {

                            var marker = new google.maps.Marker({
                                position: {lat: ponto[1], lng: ponto[2]},
                                map: map,
                                animation: google.maps.Animation.DROP,
                                info: ponto[0],
                                icon:icone
                            });
                            markers.push(marker);
                            marker.addListener('click', function () {
                                infoWindow.setContent(this.info);
                                infoWindow.open(map, this);
                            });
                            arr.push(marker.getPosition());
                            information=ponto[0]; //pega a informação do último ponto executado e plota no ícone azul
                        }
                    }
                    if(rota==='Plan'||rota==='PlanExec') {
                        if (ponto[4] === 'Plan') {

                            var marker = new google.maps.Marker({
                                position: {lat: ponto[1], lng: ponto[2]},
                                map: map,
                                animation: google.maps.Animation.DROP,
                                info: ponto[0],
                                icon:icone
                            });
                            markers.push(marker);
                            marker.addListener('click', function () {
                                infoWindow.setContent(this.info);
                                infoWindow.open(map, this);
                            });
                            arr2.push(marker.getPosition());
                        }
                    }
                }
            }

            createPath(arr);
            createPath2(arr2);

            //plot the last point
            var lastItem = arr.slice(-1)[0];
            var marker2 = new google.maps.Marker({
                position: lastItem,
                map: map,
                animation: google.maps.Animation.DROP,
                info: information,
                icon: {
                        path: google.maps.SymbolPath.CIRCLE,
                        scale: 5,
                        fillColor: 'black',
                        fillOpacity: 0.8,
                        strokeColor: 'blue',
                        }
            });
            markers2.push(marker2);
            marker2.addListener('click', function () {
                infoWindow.setContent(this.info);
                infoWindow.open(map, this);
            });
        }

        // Sets the map on all markers in the array.
        function setMapOnAll(map) {
            for (var i = 0; i < markers.length; i++) {
                markers[i].setMap(map);

            }
            for (var i = 0; i < markers2.length; i++) {
                markers2[i].setMap(map);
            }
            markers = [];
            markers2 = [];
        }

        function createPath(arr) {   //linha cheia
        polyline = new google.maps.Polyline({
            path: arr,
            strokeColor: "#000000",
            strokeOpacity: 1.0,
            strokeWeight: 2,
            map:map
        });
            polyline.setMap(map);
            line.push(polyline) ;
//            return(polyline)
        }

        var lineSymbol = {
            path: 'M 0,-1 0,1',
            strokeOpacity: 1,
            scale: 3
        };
        function createPath2(arr2) { // linha tracejada
            polyline2 = new google.maps.Polyline({
                path: arr2,
                strokeOpacity: 0,
                strokeColor: "#000000",
                icons: [{
                    icon: lineSymbol,
                    offset: '0',
                    repeat: '15px'
                }],
                map:map
            });
            line2.push(polyline2) ;
            polyline2.setMap(map);
         }

        var line = [];
        var line2 = [];
        function clearOverlays() {
            for (var i = 0; i < line.length; i++ ) {
                line[i].setMap(null);
            }
            line.length = 0;
            for (var i = 0; i < line2.length; i++ ) {
                line2[i].setMap(null);
            }
            line2.length = 0;
        }

    </script>

</head>

<body>

<div id="map"></div><script src="https://maps.googleapis.com/maps/api/js?callback=initMap" async defer></script>

</body>

</html>