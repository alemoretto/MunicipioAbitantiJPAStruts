<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="includeBootStrap.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HOME</title>
</head>
<body>

	<div class="container">

		<div class="jumbotron">
			<div class="container">
				<h1 class="display-4">Gestione Municipio</h1>
				<p>
					<a class="btn btn-primary btn-lg"
						href="${pageContext.request.contextPath}/municipio.do?codop=list"
						role="button">Vai alla Gestione &raquo;</a>
				</p>
			</div>

		</div>
		<div class="jumbotron">
			<div class="container">
				<h1 class="display-4">Gestione Abitante</h1>
				<p>
					<a class="btn btn-primary btn-lg"
						href="${pageContext.request.contextPath}/abitante.do?codop=list"
						role="button">Vai alla Gestione &raquo;</a>
				</p>
			</div>

		</div>

	</div>

</body>
</html>