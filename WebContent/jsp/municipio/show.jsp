<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../includeBootStrap.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Visualizza Municipio</title>
</head>
<body>

	<div class="container">
		<br>
		<br>
		<div class="page-header">
			<h3>Dettaglio Municipio</h3>
		</div>
		<br>
		<h6>
			id: ${MunicipioForm.id}<br>
			descrizione: ${MunicipioForm.descrizione}<br>
			codice: ${MunicipioForm.codice}<br>
			ubicazione: ${MunicipioForm.ubicazione}
		</h6>
		<!-- 
		<br> <a class="btn btn-primary"
			href="${pageContext.request.contextPath }/abitante.do?codop=create">Nuovo
			Abitante</a> <br>

		<table class="table table-striped">
			<thead>
				<tr>
					<th>Nome</th>
					<th>Cognome</th>
					<th>Azioni</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${MunicipioForm.abitanti}" var="abitanteItem">
					<tr>
						<td>${abitanteItem.nome}</td>
						<td>${abitanteItem.cognome}</td>
						<td><a class="btn btn-info"
							href="${pageContext.request.contextPath }/abitante.do?idAbitante=${abitanteItem.id}&codop=show">Dettagli</a></td>
						<td><a class="btn btn-info"
							href="${pageContext.request.contextPath }/abitante.do?idAbitante=${abitanteItem.id}&codop=edit">Modifica</a></td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
 		-->
 		
	</div>

</body>
</html>