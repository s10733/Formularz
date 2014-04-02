<%@page import="services.DodanieDanych"%>
<%@page import="domain.DaneUsera" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Klient usunięty </title>
</head>
<body>
<jsp:useBean id="daneUsera" class="domain.DaneUsera" scope="application" />
<jsp:setProperty name="daneUsera" property="nazwa" /> 
<jsp:useBean id="dodanie" class="services.DodanieDanych" scope="application" />

<%
if(dodanie.usun(daneUsera)){
out.print("<p> Użytkownik usunięty </p>");	
}
else
{
	out.println("<p>Nie można usunąć użytkownika</p>");
}
%>

<a href="dodane.jsp">Wróć</a>
<p> <a href="pokaz.jsp">Pokaz wszystkie</a>
</body>
</html>