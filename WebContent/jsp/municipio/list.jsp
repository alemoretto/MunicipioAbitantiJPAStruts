<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista Municipi</title>
</head>
<body>

	<table border="2">
		<thead>
			<th>ID</th>
			<th>DESCRIZIONE</th>
			<th>AZIONI</th>
		</thead>
		<c:forEach var="municipioItem" items="${municipiList }">
			<tbody>
				<tr>
					<td>${municipioItem.id }</td>
					<td>${municipioItem.descrizione }</td>
					<td><a href="${pageContext.request.contextPath }/municipio.do?idMunicipio=${municipioItem.id}&codop=show">visualizza</a></td>
				</tr>
			</tbody>
		</c:forEach>
	</table>
<a href="${pageContext.request.contextPath }/municipio.do?codop=create">Nuovo Municipio</a>
</body>
</html>