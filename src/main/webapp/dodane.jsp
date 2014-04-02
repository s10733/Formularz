<%@page import="services.DodanieDanych"%>
<%@page import="domain.DaneUsera" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link HREF="bootstrap.css" REL="stylesheet" TYPE="text/css" >
<link HREF="bootstrap-theme.css" REL="stylesheet" TYPE="text/css" >
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Klient dodany !</title>
</head>
<body>
<jsp:useBean id="daneUsera" class="domain.DaneUsera" scope="application" />

<jsp:setProperty name="daneUsera" property="*" /> 

<jsp:useBean id="dodanie" class="services.DodanieDanych" scope="application" />

<%
dodanie.add(daneUsera);
%>
<div class="container ">
	<div class="row">
	<div class="col-md-4 col-md-offset-4">
	<div class="alert alert-warning"> 
		<p> Kontakt o nazwie :  <jsp:getProperty name="daneUsera" property="nazwa"></jsp:getProperty> został dodany !</p>
	</div>
<table>
<th>KONTAKTY : </th>
<tr><td>
	<form action="usun.jsp">
	<select name="nazwa">
	<%
	for (DaneUsera add : dodanie.getAllData()) {
		out.println("<option>"+ add.getNazwa()+"</option>");
		}
	%>
	</select>
</td>
<td>
	<input  class="btn btn-danger" type="submit" value="usuń"/> 
	</form>
</td></tr>
<tr>
<td> 
	<a href="dodaj.jsp"><button  class="btn btn-success">DODAJ NOWEGO</button></a>
</td>	
<td>
	<a href="pokaz.jsp"><button  class="btn btn-success">POKAŻ WSZYSTKIE</button></a>
</td>
</table>
</div>
</div>
</div>
</body>
</html>