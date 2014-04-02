<%@page import="domain.DaneUsera" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link HREF="bootstrap.css" REL="stylesheet" TYPE="text/css" >
<link HREF="bootstrap-theme.css" REL="stylesheet" TYPE="text/css" >
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Wszyscy !</title>
</head>
<body>


<jsp:useBean id="dodanieDanych" class="services.DodanieDanych" scope="application" />
<div class="container ">
	<div class="row">
	<div class="col-md-4 col-md-offset-4">
	
	<div class="alert alert-info"> 
		<p> Lista kontaktów:</p>
	</div>
	<table>	
<%
	int i=1;
  for (DaneUsera dane : dodanieDanych.getAllData()) {
	  out.println("<th>"+i+". Nazwa "+dane.getNazwa()+"</th>");
	  out.println("<tr><td >Imię:</td><td>Nazwisko:</td><td>Adres:</td><td>Telefon:</td></tr>");
	  out.println("<tr><td>"+dane.getImie()+"</td><td>"+dane.getNazwa()+"</td><td>"+dane.getAdres()+"</td><td>"+dane.getNumer()+"</td></tr>");
	  
 	i++;
  }
%>
	</table>
<table>
<tr><td>
	<form action="usun.jsp">
	<select name="nazwa">
	<%
	for (DaneUsera add : dodanieDanych.getAllData()) {
		out.println("<option>"+ add.getNazwa()+"</option>");
		}
	%>
	</select>
</td>
</tr>
<tr><td>
	<input  class="btn btn-danger" type="submit" value="Usuń kontakt"/> 
	</form>
</td>
<td> 
  <a href="dodaj.jsp"><button class="btn btn-success">Dodaj kontakt</button></a>
</td></tr>

</table>
</div>
</div>
</div>
</body>
</html>