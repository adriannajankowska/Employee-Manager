<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	response.setCharacterEncoding("UTF-8");
	request.setCharacterEncoding("UTF-8");
%>
<html lang="pl">

<head>
	<link
		href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
		rel="stylesheet" id="bootstrap-css">
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
	<c:url value="/css/main.css" var="jstlCss" />
	<link href="${jstlCss}" rel="stylesheet" />
	<c:url value="/css/mystyle.css" var="jstlCss2" />
	<link href="${jstlCss2}" rel="stylesheet" />
</head>

<body>

		<header>
			<nav class="navbar navbar-dark navbar-expand-md" style='background-color: #61A4D7;'>
				<a class="navbar-brand" href="/uhome"><img src="/logoinwebapp/logo2.png" width="30" height="30"
				class="d-inline-block mr-1 align-bottom" alt="">
				<font face = "WildWest" size = "5"><b>MAMR</b> Employee Manager</font></a>
	
				<div>
					<ul class="navbar-nav" >
						<li><a class="nav-link" href="/uhome"> Strona główna </a></li>
						<li><a class="nav-link" href="/myaccount"> Moje konto </a></li>
						<li><a class="nav-link" href="paymenthistory"> Historia wypłat </a></li>
						<li><a class="nav-link" href="/contact"> Kontakt </a></li>
					</ul>
					<!--   <div class="dane">${userval.getName()} ${userval.getSurname()}</div>  --> 
				</div>
			</nav>
		</header>
	

		
			<div class="myaccount-container">
				<h3>Moje wyplaty</h3>
				<br />
				<c:set var="count" value="1" scope="page" />
				<table width="100%">
					<tr>
						<th>ID</th>
						<th>Data wypłaty</th>
						<th>Kwota netto</th>
						<th>Kwota brutto</th>
					</tr>
					<c:forEach var="userval" items="${userSalary}">
						<tr>
							<td>${count}</td>
							<td>${userval.getPayday()}</td>
							<td>${userval.getNet_salary()}zł</td>
							<td>${userval.getGross_salary()}zł</td>
						</tr>
						<c:set var="count" value="${count + 1}" scope="page" />
					</c:forEach>
				</table>
			</div>
		
	
</body>

</html>