<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>TRI-VALLEY PARKS</title>
	<link rel="stylesheet" href="CSS/style.css">
	<%@include file="templates/parkParameters.html" %>
</head>
<body>
<%@include file="templates/parkHeader.html" %>




Make this like CL with 3 rows -> Dublin Pleasanton San Ramon
<br>
Each City should load from a JSON or from a database
<br>
<a href="TVParks?park=Kolb+Park&city=Dublin">Kolb Park</a>
<!-- TO BE ADDED EVENTUALLY: Include a map modal this will be added -->




<%@include file="templates/parkFooter.html" %>
</body>
</html>