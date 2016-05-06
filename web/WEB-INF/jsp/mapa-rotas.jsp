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
    <title>Mapa de Rotas</title>
    <style type="text/css">
        .col-md-12 {margin-top: 50px;}
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
        }
        #map {
            height: 100%;
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
            function initMap() {
                var map = new google.maps.Map(document.getElementById('map'), {
                    zoom: 12,
                    center: {lat: -29.9158509, lng: -51.2495661}
                });
                var rota_planejada = [
                    [-29.67293002, -53.80581600],
                    [-29.695060000, -53.725150000],
                    [-29.694800000, -53.724410000],
                    [-29.704240000,	-53.714140000],
                    [-29.701830000,	-53.711160000],
                    [-29.647740780,	-53.619723450],
                    [-29.695670000,	-53.719870000],
                    [-29.702679240,	-53.717738050],
                    [-29.683388090,	-53.694827340]
                ];

                var rota_executada = [
                    [-29.67293002, -53.80581600],
                    [-29.695060000, -53.725150000],
                    [-29.694800000, -53.724410000],
                    [-29.695557731,	-53.832447185],
                    [-29.695630000,	-53.768200000],
                    [-29.671910000,	-53.828410000],
                    [-29.676020000,	-53.789970000]
                ];
                //setMarkers(map);
                displayRoute(map, rota_planejada,"blue");
                displayRoute(map, rota_executada, "red");
            }

            function setMarkers(map) {
                var infoWindow = new google.maps.InfoWindow();
                for (var i = 1; i < pontos.length; i++) {
                    var ponto = pontos[i];
                    var marker = new google.maps.Marker({
                        position: {lat: ponto[0], lng: ponto[1]},
                        map: map,
                        animation: google.maps.Animation.DROP,
                    });

                    marker.addListener('click', function() {
                        infoWindow.setContent(this.info);
                        infoWindow.open(map, this);
                    });
                }
            }

            function displayRoute(map,pontos, route_color) {


                var waypts = [];

                for (var i = 1; i < pontos.length-1; i++) {
                    var ponto = pontos[i];
                    waypts.push({
                        location: new google.maps.LatLng(ponto[0],ponto[1]),
                        stopover: true
                    });
                }

                var ponto = pontos[0];
                var start = new google.maps.LatLng(ponto[0],ponto[1]);
                ponto = pontos[pontos.length-1];
                var end = new google.maps.LatLng(ponto[0],ponto[1]);


                var directionsDisplay = new google.maps.DirectionsRenderer({
                    polylineOptions: {
                        strokeColor: route_color
                    }}
                );

                // also, constructor can get "DirectionsRendererOptions" object
                directionsDisplay.setMap(map); // map should be already initialized.

                var request = {
                    origin : start,
                    destination : end,
                    waypoints: waypts,
                    optimizeWaypoints: false,
                    travelMode : google.maps.TravelMode.DRIVING
                };
                var directionsService = new google.maps.DirectionsService();
                directionsService.route(request, function(response, status) {
                    if (status == google.maps.DirectionsStatus.OK) {
                        directionsDisplay.setDirections(response);
                    }
                });
            }
        </script>

</head>

<body>

<div class="container">
    <!-- Main component for a primary marketing message or call to action -->
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-lg-12">

            <div id="floating-panel">
                <form class="form-inline" role="form" action="mapa-servicos.html" method="get">
                    <div class="form-group">
                        <label><b>Filtre por data: </b></label>
                        <input type="date" name="data" value="${param.data}" class="form-control" id="data" />
                    </div>
                    <button type="submit" class="btn btn-primary">Filtrar</button><br/><br/>
                </form>
            </div>
        </div>
    </div>

</div> <!-- /container -->

<div id="map"></div><script src="https://maps.googleapis.com/maps/api/js?callback=initMap" async defer></script>

</body>


</html>