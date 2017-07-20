<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title><%= request.getParameter("park") %></title>
	<link rel="icon" href="images/<%= request.getParameter("city") %>.ico" sizes="32x32">
	<link rel="stylesheet" href="CSS/parkStyle.css">
	<%@include file="templates/parkParameters.html" %>

</head>
<body class="lime lighten-3">
	<%@include file="templates/parkHeader.html" %>
	<jsp:include page="${link}" flush="true" />

	<h5 class="city center" style="margin-top:0px;"><%= request.getParameter("park") %></h5>
	<div class="container lime lighten-3">
      <p>Address: ${address}</p>
      <p>Capacity: ${capacity}</p>
      <p>Cost: ${cost}</p>
      <p>Amenities: ${amenities}</p>
	</div>

	<%@include file="templates/parkFooter.html" %>
</body>
</html>