<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>The Spicy Garden</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
.navbar-default .navbar-fnt {
    color: #CCCCCC;
}
.navbar-default .navbar-backgrnd {
    color: #CCCCCC;
}
</style>


<body>

<!-- <nav class="navbar navbar-inverse "> -->
<nav class="navbar navbar-dark red">

	<div class="container-fluid">
	<div id="menu" class="navbar navbar-default navbar-fnt navbar-backgrnd">
    
		<div class="navbar-header">
			<a class="navbar-brand" href="${pageContext.request.contextPath}/home_page">The Spicy Garden</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="${pageContext.request.contextPath}/home_page">Home</a></li>
			<li ><a href="${pageContext.request.contextPath}/about_us">About US</a></li>
			<li><a href="${pageContext.request.contextPath}/contact_us">Contact US</a></li>
			
					
					


				
			

			<li><a href="${pageContext.request.contextPath}/deals_page">Deals</a></li>
			<li><a href="${pageContext.request.contextPath}/about_us">Services</a></li>
			<li><a href="${pageContext.request.contextPath}/menu_page">Menu</a></li>
			<li><a href="${pageContext.request.contextPath}/my_prev_orders">Orders</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="${pageContext.request.contextPath}/reg_page"><span
					class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			<li><a href="${pageContext.request.contextPath}/login_page"><span
					class="glyphicon glyphicon-log-in"></span> Login</a></li>
			<li><a href="${pageContext.request.contextPath}/logout_page"><span
					class="glyphicon glyphicon-log-in"></span> Logout</a></li>
		</ul>
	</div>
	</div>

	</nav>
	
	
	</body>
</html>