<%--
  Created by IntelliJ IDEA.
  User: 201420240
  Date: 28/04/2016
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
  <title>Mapa Equipes</title>
  <style type="text/css">
    .col-xs-12, .col-sm-12, .col-lg-12 {
      margin-top: 100px;
    }
    html, body {
      height: 100%;
      margin: 0;
      padding: 0;
    }
    #map {
      height: 100%;
      float: left;
      width: 63%;
      height: 100%;
    }
    #right-panel {
      float: right;
      width: 34%;
      height: 100%;
    }
    #right-panel {
      font-family: 'Roboto','sans-serif';
      line-height: 30px;
      padding-left: 10px;
    }

    #right-panel select, #right-panel input {
      font-size: 15px;
    }

    #right-panel select {
      width: 100%;
    }

    #right-panel i {
      font-size: 12px;
    }

    .panel {
      height: 100%;
      overflow: auto;
    }
  </style>

</head>

<body>

<div class="container">
  <!-- Main component for a primary marketing message or call to action -->
  <div class="row">
    <div class="col-xs-12 col-sm-12 col-lg-12">
        <form class="form-inline" role="form" action="mapa-equipes.html" method="get">

          <div class="form-group">
            <label for="equipe">Selecione a equipe:</label>
            <select class="form-control" id="equipe" name="equipeSelecionada">
              <c:forEach items="${equipes}" var="equipe">
                <option>${equipe.numero}</option>
              </c:forEach>
            </select>
          </div>
          <button type="submit" class="btn btn-primary">Enviar</button><br/><br/>
        </form>
      ${equipeSelecionada.localizacao.longitude} e ${equipeSelecionada.localizacao.latitude}
    </div>
  </div>

</div> <!-- /container -->

<div id="map"></div>
<div id="right-panel">
  <p>Total Distance: <span id="total"></span></p>
</div>

  <script>
    function initMap() {
    var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 4,
    center: {lat: -24.345, lng: 134.46}  // Australia.
    });

    var directionsService = new google.maps.DirectionsService;
    var directionsDisplay = new google.maps.DirectionsRenderer({
      draggable: true,
    map: map,
    panel: document.getElementById('right-panel')
    });

    directionsDisplay.addListener('directions_changed', function() {
    computeTotalDistance(directionsDisplay.getDirections());
    });

    displayRoute('Perth, WA', 'Sydney, NSW', directionsService,
                                             directionsDisplay);
    }

    function displayRoute(origin, destination, service, display) {
    service.route({
    origin: origin,
    destination: destination,
    waypoints: [
      <c:forEach items="${}" var="servico" varStatus="st">

      <c:if test="${not st.last}">, </c:if>
      </c:forEach>

      {location: 'Cocklebiddy, WA'}, {location: 'Broken Hill, NSW'}],
    travelMode: google.maps.TravelMode.DRIVING,
    avoidTolls: true
    }, function(response, status) {
    if (status === google.maps.DirectionsStatus.OK) {
      display.setDirections(response);
    } else {
      alert('Could not display directions due to: ' + status);
      }
    });
    }

    function computeTotalDistance(result) {
      var total = 0;
      var myroute = result.routes[0];
      for (var i = 0; i < myroute.legs.length; i++) {
      total += myroute.legs[i].distance.value;
    }
    total = total / 1000;
    document.getElementById('total').innerHTML = total + ' km';
    }
  </script>
  <script src="https://maps.googleapis.com/maps/api/js?callback=initMap" async defer></script>
</body>


</html>
