<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="${pageContext.request.contextPath }/municipio.do" method="post">
	DESCRIZIONE: <input type="text" name="descrizione" value="${MunicipioForm.descrizione }"><br>
	CODICE: <input type="text" name="codice" value="${MunicipioForm.codice }"><br>
	UBICAZIONE: <input type="text" name="ubicazione" value="${MunicipioForm.ubicazione }"><br>
	<input type="hidden" name="codop" value="save"> 
	<input type="submit" value="INSERISCI">
</form>
</body>
</html>