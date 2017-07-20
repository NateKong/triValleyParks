<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>TRI-VALLEY GROUP PICNIC</title>
	<link rel="icon" href="/www/Tri-Valley-Parks/WebContent/images/favicon.ico" type="image/x-icon">
	<link rel="stylesheet" href="/www/Tri-Valley-Parks/WebContent/CSS/style.css">
	
	<%@include file="templates/parkParameters.html" %>
	
	<script type="text/javascript" src="/www/Tri-Valley-Parks/WebContent/js/parks.js"></script>
	<script>
		$(document).ready(function(){
			document.getElementById("dublin").innerHTML = getDublin();
			document.getElementById("pleasanton").innerHTML = getPleasanton();
			document.getElementById("sanRamon").innerHTML = getSanRamon();
		});
	</script>
</head>
<body>
<%@include file="templates/parkHeader.html" %>

<div class="container">
  <div class="section">
    <div class="row">
      <div class="col s4">
        <div class="lime lighten-3">
          <p class="city center">Dublin</p>
          <ul class="park">
      	    <span id="dublin"></span>
      	  </ul>
        </div>
      </div>

      <div class="col s4">
        <div class="lime lighten-3">
        <p class="city center">Pleasanton</p>
        <ul class="park">
      	  <span id="pleasanton"></span>
      	</ul>
      	</div>
      </div>

      <div class="col s4">
      <div class="lime lighten-3">
        <p class="city center">San Ramon</p>
        <ul class="park">
      	  <span id="sanRamon"></span>
      	</ul>
      </div>
      </div>

    </div>
  </div>
</div>

<footer class="footer-copyright green darken-4 white-text">
  <div class="row">
    <div class="col s1"></div>
    <div class="col s4 center">July 2017</div>
    <div class="col s1"></div>
    <div class="col s4 center"><a href="http://natekong.github.io" style="color:#FFF;">Nate Kong</a></div>
    <div class="col s2"></div>  
  </div>
</footer>

</body>
</html>