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
	<c:url value="/css/user.css" var="jstlCss" />
	<link href="${jstlCss}" rel="stylesheet" />
</head>

<body>

	<div class="container">

		<div class="banner">
			<div class="menu">
				<ol>
					<a href="/uhome">
						<li><img src="/logoinwebapp/logo2.png" width="30" height="30" alt="">
							<font face="WildWest" size="5"><b>MAMR</b> Employee Manager</font>
						</li>
					</a>

					<a href="/myaccount">
						<li>Moje konto</li>
					</a>
					<a href="/Uedit">
						<li>Edytuj profil</li>
					</a>
					<a href="/paymenthistory">
						<li>Historia wypłat</li>
					</a>
					<a href="/contact">
						<li>Kontakt</li>
					</a>

				</ol>
			</div>
			<a href="/logout" title="Wyloguj">
				<div class="dane">${userName}</div>
			</a>
		</div>

		<div class="page">



			<h2>
				<font color="white">Moje wypłaty</font>
			</h2>
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


	</div>


</body>

</html>