<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../includeBootStrap.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista Municipi</title>
</head>
<body>

	<div class="container">
		<br>	
		<div class="page-header">
			<h3>Lista Municipi</h3>
		</div>
		<br>

		<a class="btn btn-primary"
			href="${pageContext.request.contextPath }/municipio.do?codop=create">Nuovo
			Municipio</a>
					<br>
			
		<table class="table table-striped">
			<thead>
				<th>ID</th>
				<th>DESCRIZIONE</th>
				<th>AZIONI</th>
				<th></th>
			</thead>
			<c:forEach var="municipioItem" items="${municipiList }">
				<tbody>
					<tr>
						<td>${municipioItem.id }</td>
						<td>${municipioItem.descrizione }</td>
						<td><a class="btn btn-info"
							href="${pageContext.request.contextPath }/municipio.do?id=${municipioItem.id}&codop=show">Dettagli</a></td>
						<td><a class="btn btn-info"
							href="${pageContext.request.contextPath }/municipio.do?id=${municipioItem.id}&codop=edit">Modifica</a></td>
					</tr>
				</tbody>
			</c:forEach>
		</table>
	</div>
</body>
</html>