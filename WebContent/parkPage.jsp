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
<body>
	<%@include file="templates/parkHeader.html" %>
	<%@include file="templates/dublin.html" %>



<p>Park: <%= request.getParameter("park") %></p>
<p>City: <%= request.getParameter("city") %></p>
<p>Zip: <%= request.getAttribute("zip") %></p>




	<%@include file="templates/parkFooter.html" %>
</body>
</html>