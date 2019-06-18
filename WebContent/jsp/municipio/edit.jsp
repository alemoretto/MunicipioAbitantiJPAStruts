<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
        <%@ include file="../includeBootStrap.jsp"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modifica Municipio</title>
</head>
<body>
<div class="container">
<br><br>

		<div class="page-header">
			<h3>Pagina di modifica Municipio</h3>
		</div>
			<br>
			<br>

<form class="form-horizontal" action="${pageContext.request.contextPath }/municipio.do" method="post">
	<input type="hidden" name="id" value="${MunicipioForm.id}">

				<div class="form-group">
				<label class="control-label col-sm-2" for="descrizioneId">Descrizione:</label>
				<!--<c:if test="${messaggiDiErrore.descrizione != null}">
					<div class="alert alert-danger">
						${messaggiDiErrore.descrizione}</div>
				</c:if> -->
				<div class="col-sm-4">
					<input class="form-control" type="text" id="descrizioneId"
						name="descrizione" value="${MunicipioForm.descrizione}">
<!-- 				<div id="descrizioneErrorId" style="display: none; color: red"></div> -->
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="codiceId">Codice:</label>
				<!--<c:if test="${messaggiDiErrore.codice != null}">
					<div class="alert alert-danger">
						${messaggiDiErrore.codice}</div>
				</c:if> -->
				<div class="col-sm-4">
					<input class="form-control" type="text" id="codiceId"
						name="codice" value="${MunicipioForm.codice}">
<!-- 				<div id="codiceErrorId" style="display: none; color: red"></div> -->
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="ubicazioneId">Ubicazione:</label>
			<!--<c:if test="${messaggiDiErrore.ubicazione != null}">
					<div class="alert alert-danger">
						${messaggiDiErrore.ubicazione}</div>
				</c:if> -->
				<div class="col-sm-4">
					<input class="form-control" type="text" id="ubicazioneId"
						name="ubicazione" value="${MunicipioForm.ubicazione}">
<!-- 				<div id="ubicazioneErrorId" style="display: none; color: red"></div> -->
				</div>
			</div>

	<input type="hidden" name="codop" value="update"> 
	<input class="btn btn-primary btn-md" type="submit" value="AGGIORNA">
</form>

</div>
</body>
</html>